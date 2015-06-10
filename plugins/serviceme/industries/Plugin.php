<?php namespace ServiceMe\Industries;

use System\Classes\PluginBase;

/**
 * Industries Plugin Information File
 */
class Plugin extends PluginBase
{

    /**
     * Returns information about this plugin.
     *
     * @return array
     */
    public function pluginDetails()
    {
        return [
            'name'        => 'Industries',
            'description' => 'No description provided yet...',
            'author'      => 'ServiceMe',
            'icon'        => 'icon-leaf'
        ];
    }

    public function boot(){

        
    }

}
