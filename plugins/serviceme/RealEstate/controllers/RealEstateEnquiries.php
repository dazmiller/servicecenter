<?php namespace ServiceMe\RealEstate\Controllers;

use BackendMenu;
use Backend\Classes\Controller;

/**
 * Entries Back-end Controller
 */
class RealEstateEnquiries extends Controller
{
    public $implement = [
        'Backend.Behaviors.FormController',
    ];

    public $formConfig = 'config_form.yaml';



}
