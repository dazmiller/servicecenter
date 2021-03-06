<?php namespace ServiceMe\ServiceRequest\Models;

use Model;

/**
 * health_gyms Model
 */
class HealthGyms extends Model
{

    /**
     * @var string The database table used by the model.
     */
    public $table = 'serviceme_servicerequest_health_gyms';

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
    public $hasOne = [];
    public $hasMany = [];
    public $belongsTo = [];
    public $belongsToMany = [];
    public $morphTo = [];
    public $morphOne = [];
    public $morphMany = [];
    public $attachOne = [];
    public $attachMany = [];

}