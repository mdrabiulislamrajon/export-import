<?php

namespace App\Http\Controllers;

use App\Import;
use Illuminate\Http\Request;

class ImportController extends Controller
{
    public function index(){
    	$imports = Import::get();
    	return view('import.index', compact('imports'));
    }
}
