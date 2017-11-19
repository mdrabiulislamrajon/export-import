<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Import extends Model
{
	public $with = ['colors'];

	public function colors()
    {
    	return $this->morphToMany('App\Color', 'colorable');
    }
}
