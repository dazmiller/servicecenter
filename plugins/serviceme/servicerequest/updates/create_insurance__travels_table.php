<?php namespace ServiceMe\ServiceRequest\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class CreateInsuranceTravelsTable extends Migration
{

    public function up()
    {
        Schema::create('serviceme_servicerequest_insurance__travels', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('serviceme_servicerequest_insurance__travels');
    }

}
