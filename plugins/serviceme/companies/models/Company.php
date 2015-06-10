<?php namespace ServiceMe\Companies\Models;

use Model;

/**
 * Company Model
 */
class Company extends Model
{

    /**
     * @var string The database table used by the model.
     */
    public $table = 'serviceme_companies_companies';

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




}