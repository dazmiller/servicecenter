<?php namespace ServiceMe\ServiceRequest\Controllers;

use BackendMenu;
use Backend\Classes\Controller;

/**
 * Service Requests Back-end Controller
 */
class ServiceRequests extends Controller
{
    public $implement = [
        'Backend.Behaviors.FormController',
        'Backend.Behaviors.ListController'
    ];

    public $formConfig = 'config_form.yaml';
    public $listConfig = 'config_list.yaml';

    public function __construct()
    {
        parent::__construct();

        BackendMenu::setContext('ServiceMe.ServiceRequest', 'servicerequest', 'servicerequests');
    }
}