<?php

use Illuminate\Database\Seeder;

class ImportTableSeeder extends Seeder
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
    		DB::table('imports')->insert([
            'suppliers_name' => $faker->userName,
            'pi_number' => $faker->randomDigit,
            'pi_date' => $faker->date,
            'fabric_compsion' =>$faker->word,
            'fabrics_width' => $faker->randomDigit,
            'iteam' =>$faker->word,
            'quantity' =>$faker->randomDigit,
            'unit' =>$faker->randomDigit,


        ]);
    	}
    }
}
