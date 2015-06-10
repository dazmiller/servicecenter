<?php namespace Bedard\Resimg\Models;

use Model;

/**
 * Settings Model
 */
class Settings extends Model
{
    use \October\Rain\Database\Traits\Validation;

    public $implement = ['System.Behaviors.SettingsModel'];

    public $settingsCode = 'bedard_resimg_settings';

    public $settingsFields = 'fields.yaml';

    public $jsonable = ['breakpoints'];

    /**
     * Validation
     */
    public $rules = [
        'quality'       => 'required|integer|min:0|max:100',
    ];
}
