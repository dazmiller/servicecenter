<?php namespace ServiceMe\Companies\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class CreateCompaniesTable extends Migration
{

    public function up()
    {
        Schema::create('serviceme_companies_companies', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('name');
            $table->string('trading_name');
            $table->string('address');
            $table->string('department');
            $table->string('url');
            $table->string('city');
            $table->string('postcode');
            $table->string('state');
            $table->string('country');
            $table->string('logo');
            $table->string('telephone');
            $table->string('email');
            $table->string('main_contact');
            $table->integer('industry_id');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('serviceme_companies_companies');
    }

}
