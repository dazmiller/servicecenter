<?php namespace ServiceMe\Industries\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class CreateIndustriesTable extends Migration
{

    public function up()
    {
        Schema::create('serviceme_industries_industries', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('name');
            $table->string('type');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('serviceme_industries_industries');
    }

}
