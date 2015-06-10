<?php namespace ServiceMe\Companies;

use System\Classes\PluginBase;

/**
 * Companies Plugin Information File
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
            'name'        => 'Companies',
            'description' => 'No description provided yet...',
            'author'      => 'ServiceMe',
            'icon'        => 'icon-leaf'
        ];
    }

}
