<?php

use Illuminate\Database\Seeder;

class ExportTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	$faker = Faker\Factory::create();
    	for($i = 0; $i < 100; $i++){
    		DB::table('exports')->insert([
            'expoters' => $faker->userName,
            'name_of_buyer' => $faker->name,
            'date_of_export_lc' => $faker->date,
            'season' => $faker->monthName,
            'po_numbler' => $faker->randomDigit,
            'iteam' =>$faker->word,
            'mode_of_shipment' =>$faker->word,
            'order_quantity' =>$faker->randomDigit,
            'unit' =>$faker->randomDigit,
        ]);
    	}
       
    }
}
