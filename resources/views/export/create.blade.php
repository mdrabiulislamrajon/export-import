@extends('layouts.master')

@include('layouts.common._navBrand', [
    'url'   => url('exports'),
    'title' => 'Export Management'
])

@section('content')

 <div class="content">
    <div class="container-fluid">
    <div class="row">
        <div class="col-md-8">
	        <div class="card">
	            <div class="header">
	                <h4 class="title">Export Form</h4>
	            </div>
	            <div class="content">
	                <form method="POST" action="{{ route('exports.store') }}">
	                	{{ csrf_field() }}
	                    <div class="row">
	                        <div class="col-md-6">
	                            <div class="form-group{{ $errors->first('expoter') ? ' has-error' : '' }}">
	                                <label for="expoter">Expoter</label>
	                                <input type="text" name="expoters" class="form-control" placeholder="Expoter Name" value="">
	                                @include('layouts.common.formError', ['key' => 'expoter'])
	                            </div>
	                        </div>
	                        <div class="col-md-6">
	                            <div class="form-group{{ $errors->first('name_of_buyer') ? ' has-error' : '' }}">
	                                <label for="name_of_buyer">Name Of Buyer</label>
	                                <input type="text" name="name_of_buyer" class="form-control" placeholder="Bayer Name">
	                                @include('layouts.common.formError', ['key' => 'name_of_buyer'])
	                            </div>
	                        </div>
                       </div>
                       <div class="row">
	                       	<div class="col-md-6">
		                        	<div class="form-group{{ $errors->has('date_of_export_lc') ? ' has-error' : '' }}">
		                        	<label for="date_of_export_lc">Date Of Export Lc<small style="color: red; font-size: 1.2em;"></small></label>
		                        	<input type="text" name="date_of_export_lc" class="form-control datepicker" id="date_of_export_lc" value="{{ old('date_of_export_lc') }}">
		                        	@include('layouts.common.formError', ['key' => 'date_of_export_lc'])
		                            </div>
		                    </div>
	                        <div class="col-md-6">
	                        	<div class="form-group{{ $errors->has('season') ? ' has-error' : '' }}">
	                        	<label for="season">Season<small style="color: red; font-size: 1.2em;"></small></label>
	                        	<input type="text" name="season" class="form-control" placeholder="season">
	                        	@include('layouts.common.formError', ['key' => 'season'])
	                            </div>
	                        </div>
	                   </div> 

	                   <div class="row">
                       	<div class="col-md-6">
                        	<div class="form-group{{ $errors->has('po_number') ? ' has-error' : '' }}">
                        	<label for="po_number">Purchase Order Number<small style="color: red; font-size: 1.2em;"></small></label>
                        	<input type="number" name="po_number" class="form-control" id="po_number" value="{{ old('po_number') }}">
                        	@include('layouts.common.formError', ['key' => 'po_number'])
                            </div>
	                    </div>
                        <div class="col-md-6">
                        	<div class="form-group{{ $errors->has('iteam') ? ' has-error' : '' }}">
                        	<label for="iteam">Iteam<small style="color: red; font-size: 1.2em;"></small></label>
                        	<input type="text" name="iteam" class="form-control" placeholder="iteam">
                        	@include('layouts.common.formError', ['key' => 'iteam'])
                            </div>
                        </div>
	                   </div>

	                   <div class="row">
                       	<div class="col-md-6">
	                        	<div class="form-group{{ $errors->has('mode_of_shipment') ? ' has-error' : '' }}">
	                        	<label for="mode_of_shipment">Mode Of Shipment<small style="color: red; font-size: 1.2em;"></small></label>
	                        	<input type="text" name="mode_of_shipment" class="form-control" id="mode_of_shipment" value="{{ old('mode_of_shipment') }}">
	                        	@include('layouts.common.formError', ['key' => 'mode_of_shipment'])
	                            </div>
	                    </div>
                        <div class="col-md-6"></div>	
	                   </div>

	                   <div class="row">
	                    <div class="col-md-3">
                        	<div class="form-group{{ $errors->has('color') ? ' has-error' : '' }}">
                        	<label for="color">Color<small style="color: red; font-size: 1.2em;"></small></label>
                        	<input type="text" name="color" class="form-control" placeholder="color">
                        	@include('layouts.common.formError', ['key' => 'color'])
                            </div>
                        </div>
                       	<div class="col-md-3">
                        	<div class="form-group{{ $errors->has('order_quantity') ? ' has-error' : '' }}">
                        	<label for="order_quantity">Order Quantity<small style="color: red; font-size: 1.2em;"></small></label>
                        	<input type="number" name="order_quantity" class="form-control" id="order_quantity" value="{{ old('order_quantity') }}">
                        	@include('layouts.common.formError', ['key' => 'order_quantity'])
                            </div>
	                    </div>
                        <div class="col-md-3">
                        	<div class="form-group{{ $errors->has('unit') ? ' has-error' : '' }}">
                        	<label for="unit">Unit<small style="color: red; font-size: 1.2em;"></small></label>
                        	<input type="number" name="unit" class="form-control" placeholder="unit">
                        	@include('layouts.common.formError', ['key' => 'unit'])
                            </div>
                        </div>
                        <div class="col-md-3">
                        	<div class="form-group{{ $errors->has('color') ? ' has-error' : '' }}">
                        		<label for="color">Amount (in USD)<small style="color: red; font-size: 1.2em;"></small></label>
                        		<input type="" name="" class="form-control" value="" readonly>
                            </div>
                        </div>
	                   </div>
	                   				  	    
	                    <button type="submit" class="btn btn-info btn-fill pull-right">Form Submit</button>
	                    <div class="clearfix"></div>
	                </form>
	            </div>
	        </div>
        </div>
        <div class="col-md-4">
            <div class="card card-user">
                <div class="image">
                    <img src="https://ununsplash.imgix.net/photo-1431578500526-4d9613015464?fit=crop&fm=jpg&h=300&q=75&w=400" alt="..."/>
                </div>
                <div class="content">
                    <div class="author">
                         <a href="#">
                        <img class="avatar border-gray" src="{{ asset('img/faces/face-6.jpg') }}" alt="..."/>

                          <h4 class="title">Mike Andrew<br />
                             <small>michael24</small>
                          </h4>
                        </a>
                    </div>
                    <p class="description text-center"> "Lamborghini Mercy <br>
                                        Your chick she so thirsty <br>
                                        I'm in that two seat Lambo"
                    </p>
                </div>
                <hr>
                <div class="text-center">
                    <button href="#" class="btn btn-simple"><i class="fa fa-facebook-square"></i></button>
                    <button href="#" class="btn btn-simple"><i class="fa fa-twitter"></i></button>
                    <button href="#" class="btn btn-simple"><i class="fa fa-google-plus-square"></i></button>

                </div>
            </div>
        </div>
	    </div>
	    </div>
 </div>

@stop

@section('script')
    <script type="text/javascript">
        $(document).ready(function(){
            demo.initChartist();
			$('.datepicker').datepicker({
				changeMonth: true,
	            changeYear: true
			});
		});
	</script>

    @include('layouts.common._notify', [
        'type'  => 'info',
        'title' => 'Dummy Title Overrided'
    ])

@stop