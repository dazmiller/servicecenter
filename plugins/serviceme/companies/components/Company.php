<?php namespace Serviceme\Companies\Components;

use Cms\Classes\ComponentBase;

class Company extends ComponentBase
{

    public function componentDetails()
    {
        return [
            'name'        => 'Company Component',
            'description' => 'No description provided yet...'
        ];
    }

    public function defineProperties()
    {
        return [];
    }

}