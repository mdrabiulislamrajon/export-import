<?php

use Illuminate\Database\Seeder;

class ColorTableSeeder extends Seeder
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
    		DB::table('colors')->insert([
             
    			'name' => $faker->colorName, 

        ]);
    	}    
    }
}
