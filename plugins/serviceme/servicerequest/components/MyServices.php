<?php namespace ServiceMe\ServiceRequest\Components;

use Cms\Classes\ComponentBase;

class MyServices extends ComponentBase
{

    public function componentDetails()
    {
        return [
            'name'        => 'MyServices Component',
            'description' => 'No description provided yet...'
        ];
    }

    public function defineProperties()
    {
        return [];
    }

}