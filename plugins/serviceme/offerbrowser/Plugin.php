<?php namespace Serviceme\OfferBrowser;

use System\Classes\PluginBase;

/**
 * OfferBrowser Plugin Information File
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
            'name'        => 'OfferBrowser',
            'description' => 'No description provided yet...',
            'author'      => 'serviceme',
            'icon'        => 'icon-leaf'
        ];
    }

}
