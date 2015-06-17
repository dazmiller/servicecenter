<?php namespace Serviceme\Forms2;

use System\Classes\PluginBase;

/**
 * Forms2 Plugin Information File
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
            'name'        => 'Forms2',
            'description' => 'No description provided yet...',
            'author'      => 'serviceme',
            'icon'        => 'icon-leaf'
        ];
    }

        public function registerComponents()
    {
        return [
            '\serviceme\Forms2\Components\EntryForm' => 'entryForm'
        ];
    }

}
