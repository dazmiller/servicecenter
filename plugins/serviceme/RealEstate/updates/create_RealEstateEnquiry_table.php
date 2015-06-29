<?php namespace ServiceMe\RealEstate\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class CreateRealEstateEnquiryTable extends Migration
{

    public function up()
    {
        Schema::create('realestate_enquiries', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('title');
            $table->string('slogan')->nullable();
            $table->text('body');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('realestate_enquiries');
    }

}
