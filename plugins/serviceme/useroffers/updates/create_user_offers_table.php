<?php namespace ServiceMe\UserOffers\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class CreateUserOffersTable extends Migration
{

    public function up()
    {
        Schema::create('serviceme_useroffers_user_offers', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->integer('company_id')->unsigned();
            $table->integer('user_id')->unsigned();
            $table->string('name');
            $table->integer('amount')->unsigned();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('serviceme_useroffers_user_offers');
    }

}
