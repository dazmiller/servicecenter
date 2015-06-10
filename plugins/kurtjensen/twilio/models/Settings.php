<?php namespace KurtJensen\Twilio\Models;

use Model;

/**
 * Settings Model
 */
class Settings extends Model{

    public $implement = ['System.Behaviors.SettingsModel'];

    // A unique code
    public $settingsCode = 'kurtjensen_twilio_settings';

    // Reference to field configuration
    public $settingsFields = 'fields.yaml';

    protected $cache = [];

} 
