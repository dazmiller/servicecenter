<?php namespace ServiceMe\Industries\Models;

use Model;

/**
 * Industry Model
 */
class Industry extends Model
{

    /**
     * @var string The database table used by the model.
     */
    public $table = 'serviceme_industries_industries';

    /**
     * @var array Guarded fields
     */
    protected $guarded = ['*'];

    /**
     * @var array Fillable fields
     */
    protected $fillable = [];

    /**
     * @var array Relations
     */
    public $hasMany = [
        'companies' => ['\ServiceMe\Companies\Models\Company', 'key' => 'industry_id']
    ];
}