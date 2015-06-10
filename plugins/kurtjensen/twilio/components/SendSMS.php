<?php namespace KurtJensen\Twilio\Components;

use DB;
use Config;
use Exception;
use Services_Twilio;
use KurtJensen\Twilio\Models\Settings;

use Auth;
use Cms\Classes\ComponentBase;
use KurtJensen\UserSelect\Models\Checklist as CList;
use KurtJensen\UserSelect\Models\ChecklistChild as CListChild;

use KurtJensen\Cellphone\Models\SmsLog as SmsLog;
use KurtJensen\Cellphone\Models\Cellphone as Cellphone;
use KurtJensen\Cellphone\Models\Provider as CellProvider;
use KurtJensen\Cellphone\Models\SmsLogDevice as SmslogDevice;

class SendSMS extends ComponentBase
{
    public $account_sid = null;
    public $auth_token = null;
    
    public $message;
    
    public $From = [];
    
    public $logDev = [];
    
    public $replyto = null;
    
    public $user;
    
    public $userid;
    
    public $CLid;
    
    public $PhoneData;
    
    public $Error;
    
    public function componentDetails()
    {
        return [
            'name'        => 'Twilio SMS Sender',
            'description' => 'Use this component on page that recieves checklist entries from Checklist SMS Top Form'
        ];
    }

    public function defineProperties()
    {
        return [
            'sendFrom' => [
                'title'       => 'From Phone',
                'description' => 'Phone number(s) on twillo to send from',
                'type'        => 'string',
                'default'     => ''
            ],
        ];
    }
    
    function init()
    {
        $this->account_sid = Settings::get('account_sid', null);
        $this->auth_token = Settings::get('auth_token', null);
        $this->From = explode(',', $this->property('sendFrom'));
        
        $this->user = Auth::getUser();

        if (!$this->user)
            return $this->user = null;
        
        $this->userid = intval( $this->user->id );
        
        $this->subject = $this->user->name;
        
        $this->CLid = intval(post('clid'));
        $this->replyto = post('reply');
        $this->message = $this->validMessage( post('mess') ).
                ' -'.substr($this->user->name, 0, 1).$this->user->surname;
    }
    
    public function onRun()
    {
        $this->addCss('/plugins/kurtjensen/cellphone/assets/css/cell.css');
        if ( !$this->loadRecipients())
        {
            $this->Error = 'No recipients selected! ';
            return null;
        }
        
        $this->sendSMS();
        $this->log();
        $this->attachNames();
    }
    
    
    public function loadRecipients()
    {
        $Recipients = CListChild::where('checklist_id', '=', $this->CLid )->
                                            lists('user_id');
        if ( count($Recipients) <= 0 ) return false;
        $this->PhoneData = 
            Cellphone::with('user')->
                       Textable()->
                       wherein('user_id', $Recipients
                              )->get();
        return $this->PhoneData;
    }
    
    
    public function attachNames()
    {
        foreach ($this->PhoneData as $dev)
        {
            $this->logDev[$dev->id]['name']  = $dev->user->name.' '.$dev->user->surname;
            $this->logDev[$dev->id]['phone'] = $dev->phone;
        }
    }
    
    public function log()
    {
        $SmsLog = SmsLog::create([
            'user_id'   => $this->userid,
            'replyto'   => $this->user->name.' <'.$this->replyto.'>',
            'status'    => count($this->TO),
            'is_public' => false,
            'message'   => $this->message,
            'logtext'   => $this->page['respAry']['message']
            ]);
        $this->logid = $SmsLog->id;
        foreach ($this->logDev as &$Devarray)
            $Devarray['sms_log_id'] = $this->logid; // add LogId
            
        SmslogDevice::insert($this->logDev);
    }
    
    
    
    public function validMessage( $text )
    {         
        /* VAlid SMS characters w/o escaping

        @	Δ	SP	0	¡	P	¿	p
        £	_	!	1	A	Q	a	q
        $	Φ	"	2	B	R	b	r
        ¥	Γ	#	3	C	S	c	s
        è	Λ	¤	4	D	T	d	t
        é	Ω	%	5	E	U	e	u
        ù	Π	&	6	F	V	f	v
        ì	Ψ	'	7	G	W	g	w
        ò	Σ	(	8	H	X	h	x
        Ç	Θ	)	9	I	Y	i	y
        LF	Ξ	*	:	J	Z	j	z
        Ø	ESC	+	;	K	Ä	k	ä
        ø	Æ	,	<	L	Ö	l	ö
        CR	æ	-	=	M	Ñ	m	ñ
        Å	ß	.	>	N	Ü	n	ü
        å	É	/	?	O	§	o	à
        */
        $ValidMess = '';
        $validChars = str_split('@ΔSP0¡P¿p £_!1AQaq$Φ"2BRbr¥Γ#3CScsèΛ¤4DTdtéΩ%5EUeuùΠ&6FVfvìΨ\'7GWgwòΣ(8HXhxÇΘ)9IYiyLFΞ*:JZjzØESC+;KÄkäøÆ,<LÖlöCRæ-=MÑmñÅß.>NÜnüåÉ/?O§oà');
        foreach ( str_split( $text ) as $char )
        {
            if (in_array($char, $validChars ))
                $ValidMess .= $char;
        }
        // strip double spaces
        return str_replace('  ',' ',$ValidMess);
    }
    
    public function sendSMS()
    {
        // this might take a while. Disconnect from DB
        $defDbConn = Config::get('database.default');
        DB::disconnect( $defDbConn );
        
        $client = new Services_Twilio($this->account_sid, $this->auth_token);
        
        
        $FromKey = 0;
        $LastKey = count($this->From) - 1;
    
        foreach ($this->PhoneData as $recip)
        {
            if ($recip->pin)
            {
                $statustext = '';
                $devicestatus = 0;
                try 
                {
                    $this->smsOb ='+1'.$this->From[$FromKey].' '. '+1'.$recip->pin.' '. $this->message;
                    $sms = $client->account->messages->sendMessage('+1'.$this->From[$FromKey], '+1'.$recip->pin, $this->message);
                    $statustext =  $sms->status;
                } 
                catch (Exception $e) 
                {
                    $statustext =  'twilio complain';
                    $devicestatus = 2;
                }
            }
            else
            {
                $statustext =  'Bad Pin';
                $devicestatus = 1;
            }
            
            
            $this->logDev[$recip->id] = array(
            'cellphone_id' => $recip->id,
            'user_id' => $recip->user_id,
            'provider_id' => $recip->provider_id,
            'devicestatus' => $devicestatus,
            'statustext' => $statustext 
            );
            // use next "From Phone Number" or start over at first "From Phone Number"
            $FromKey  = ( $LastKey == $FromKey )?0: $FromKey + 1;
        }
        
        DB::reconnect( $defDbConn );
        
        
    }
}
