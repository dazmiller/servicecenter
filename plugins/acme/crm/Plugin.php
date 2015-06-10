<?php namespace Acme\Crm;

use Backend;
use System\Classes\PluginBase;


/**
 * Crm Plugin Information File
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

    public function registerNavigation()
    {
        return [
            'crm' => [
                'label'       => 'Service Me',
                'url'         => Backend::url('acme/crm/opportunities'),
                'icon'        => 'icon-trophy',
                'permissions' => ['crm.*'],
                'order'       => 100,
            ]
        ];
    }



    /*
     * Register our component
     */
     public function registerComponents()
    {
        return [
           'Acme\Crm\Components\LeadsList' => 'LeadsList'
        ];
    }

}
