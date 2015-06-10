<?php namespace ServiceMe\UserOffers\Models;

use Model;

/**
 * UserOffer Model
 */
class UserOffer extends Model
{

    /**
     * @var string The database table used by the model.
     */
    public $table = 'serviceme_useroffers_user_offers';

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