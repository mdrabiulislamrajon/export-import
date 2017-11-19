<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Export extends Model
{
	protected $fillable = [
		'expoters', 'name_of_buyer', 'date_of_export_lc',
		'season', 'po_number', 'iteam', 'mode_of_shipment',
		'order_quantity', 'unit'
	];
	public $with = ['colors'];

	protected $dates = [
		'date_of_export_lc'
	];
	
    public function colors()
    {
    	return $this->morphToMany('App\Color', 'colorable');
    }

    public function setDateOfExportLcAttribute($value)
    {
        $this->attributes['date_of_export_lc'] = Carbon::parse($value);
    }
}
