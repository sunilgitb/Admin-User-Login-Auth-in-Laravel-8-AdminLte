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

    <div class="table-responsive">
    <table id="products-table" class="table table-bordered table-striped">
        <thead>
          <tr>
            <th>Product Name</th>
            <th>Price</th>
            <th>Description</th>
            <th> Image</th>
            

          </tr>
        </thead>
        <tbody>
        @foreach ($products as $product)

          <tr>
            <td>{{$product->product_name}}</td>
            <td>{{$product->product_price}}</td>
            <td>{{$product->product_description}}</td>
            <td>
    @if ($product->product_image)
        <img src="{{ asset('storage/images/'.$product->main_image) }}" alt="Product Image" width="100">
    @else
        No Image Available
    @endif
</td>
          


          </tr>

          @endforeach
          <!-- Add more table rows as needed -->
        </tbody>
      </table>
    </div>
  </div>
  <!-- /.card-body -->
</div>

@endsection

@push('scripts')
    <script>
        $(document).ready(function() {
            $('#products-table').DataTable({
                processing: true,
                serverSide: true,
                ajax: '{{ route('products.data') }}',
                columns: [
                    { data: 'product_name', name: 'product_name' },
                    { data: 'product_price', name: 'product_price' },
                    { data: 'product_description', name: 'product_description' },
{ data: 'product_image', name: 'product_image' },
                  
                ]
            });
        });
    </script>
@endpush
