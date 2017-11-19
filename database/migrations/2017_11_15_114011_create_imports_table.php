<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateImportsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('imports', function (Blueprint $table) {
            $table->increments('id');
            $table->string('suppliers_name', 30);
            $table->string('pi_number', 50);
            $table->timestamp('pi_date');
            $table->string('fabric_compsion', 50);
            $table->string('fabrics_width',20);
            $table->string('iteam',20);
            $table->integer('quantity');
            $table->integer('unit');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('imports');
    }
}
