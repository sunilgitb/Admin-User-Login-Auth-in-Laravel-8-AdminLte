@extends('admin.layouts.apps')
@section('content')

<div class="card">
  <div class="card-header">
    <h3 class="card-title">DataTable with default features</h3>
  </div>
  <!-- /.card-header -->
  <div class="card-body" style="margin-left: 250px;">
  @if(session('success'))
    <div class="alert alert-success" id="success-message-container">
        {{ session('success') }}
    </div>
@endif

 
@section('content')
    <h1>Product List</h1>

    <table id="products-table" class=" table-bordered table-striped display">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Price</th>
                <th>Description</th>
                <th>Action</th>
            </tr>
        </thead>
    </table>
@endsection

@push('scripts')
    <script>
        $(document).ready(function() {
            $('#products-table').DataTable({
                processing: true,
                serverSide: true,
                ajax: '{{ route('products.data') }}',
                columns: [
                    { data: 'id', name: 'id' },
                    { data: 'product_name', name: 'product_name' },
                    { data: 'product_price', name: 'product_price' },
                    { data: 'product_description', name: 'product_description' },
{ data: 'product_image', name: 'product_image' },
                    { data: 'action', name: 'action', orderable: false, searchable: false }
                ]
            });
        });
    </script>
@endpush