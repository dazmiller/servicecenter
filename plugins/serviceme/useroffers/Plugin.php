<?php namespace ServiceMe\UserOffers;

use System\Classes\PluginBase;

/**
 * UserOffers Plugin Information File
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
            'name'        => 'UserOffers',
            'description' => 'No description provided yet...',
            'author'      => 'ServiceMe',
            'icon'        => 'icon-leaf'
        ];
    }

}
