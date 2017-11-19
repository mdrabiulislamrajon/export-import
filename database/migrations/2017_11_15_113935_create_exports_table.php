<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateExportsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('exports', function (Blueprint $table) {
            $table->increments('id');
            $table->string('expoters',50);
            $table->string('name_of_buyer', 50);
            $table->timestamp('date_of_export_lc');
            $table->string('season',50);
            $table->string('po_numbler', 50);
            $table->string('iteam',50);
            $table->string('mode_of_shipment');
            $table->integer('order_quantity');
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
        Schema::dropIfExists('exports');
    }
}
