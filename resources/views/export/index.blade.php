@extends('layouts.master')

@include('layouts.common._navBrand', [
    'url'   => url('dashboard'),
    'title' => 'Dashboard'
])

@section('content')
 <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Striped Table with Hover</h4>
                                <p class="category">Here is a subtitle for this table</p>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
                                    <thead>
                                        <th>Expoters</th>
                                    	<th>Name Of Buyer</th>
                                    	<th>Date Of_ Export Lc</th>
                                    	<th>Season</th>
                                    	<th>Po Numbler</th>
                                    	<th>Iteam</th>
                                    	<th>Mode Of Shipment</th>
                                    	<th>Order Quantity</th>
                                    	<th>Unit</th>

                                    	
                                    </thead>
                                    <tbody>
                                    @foreach($exports as $export)
                                        <tr>
                                        	<td>{{ $export->expoters }}</td>
                                        	<td>{{ $export->name_of_buyer }}</td>
                                        	<td>{{ $export->date_of_export_lc->format('M d, Y') }}</td>
                                        	<td>{{ $export->season }}</td>
                                        	<td>{{ $export->po_number }}</td>
                                        	<td>{{ $export->iteam }}</td>
                                        	<td>{{ $export->mode_of_shipment }}</td>
                                        	<td>{{ $export->order_quantity }}</td>
                                        	<td>{{ $export->unit }}</td>
                                        </tr>
                                        @endforeach
                                     </tbody>
                                </table>
                                {{ $exports->links() }}

                            </div>
                        </div>
                    </div>
                  </div>
               </div>
            </div>

@endsection