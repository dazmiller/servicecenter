<?php namespace Serviceme\Provider;

use System\Classes\PluginBase;

/**
 * Provider Plugin Information File
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
            'name'        => 'Provider',
            'description' => 'No description provided yet...',
            'author'      => 'serviceme',
            'icon'        => 'icon-leaf'
        ];
    }

}
