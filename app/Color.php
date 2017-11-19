<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Color extends Model
{
    public function imports()
    {
        return $this->morphedByMany('App\Import', 'colorable');
    }

    public function exports()
    {
        return $this->morphedByMany('App\Export', 'colorable');
    }
}
