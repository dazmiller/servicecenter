<?php namespace Acme\Crm\Components;

use Cms\Classes\ComponentBase;

class LeadsList extends ComponentBase
{

    public $name;

    /**
     * The collection of business requests
     * @var array
     */
    public $BusRequests;


    public function componentDetails()
    {
        return [
            'name'        => 'LeadsList Component',
            'description' => 'Client Side control to show list of current Leads'
        ];
    }

    public function defineProperties()
    {
        return [];
    }




    public function onRun()
    {
        // wont execute on ajax
         $this->name='Darren Miller';
         $this->BusRequests=[
         'Request 1',
         'Request 2',
         'Request 3'
         ];
    }
}