<?php namespace KurtJensen\Twilio;

use System\Classes\PluginBase;

/**
 * Twilio Plugin Information File
 */
class Plugin extends PluginBase
{
    public $require = ['KurtJensen.CellPhone'];
    
    public function pluginDetails()
    {
        return [
            'name'        => 'Twilio',
            'description' => 'Send SMS messaged to user cellphones',
            'author'      => 'KurtJensen',
            'icon'        => 'icon-comment-o'
        ];
    }
    
    public function registerComponents()
    {
        return [
            'KurtJensen\Twilio\Components\SendSMS' => 'SendSMS',
        ];
    }

    public function registerSettings()
    {
        $settings['settings'] = [
                'label'       => 'Twilio',
                'description' => 'Configure Twilio preferences.',
                'icon'        => 'icon-comment-o',
                'category'    => 'Twilio',
                'class'       => 'KurtJensen\twilio\Models\Settings',
                'order'       => 100,
                'keywords'    => 'twilio sms celphone'
                ];
        return $settings;
    }
}
