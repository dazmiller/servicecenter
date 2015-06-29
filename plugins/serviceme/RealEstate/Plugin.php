<?php namespace ServiceMe\RealEstate;

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
            'name'        => 'Service Me',
            'description' => 'Service Me Components',
            'author'      => 'Darren Miller',
            'icon'        => 'icon-leaf'
        ];
    }

        public function registerComponents()
    {
        return [
            '\ServiceMe\RealEstate\Components\RealEstateForm' => 'RealEstateForm'
        ];
    }

}
