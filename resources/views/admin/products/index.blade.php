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
    <table id="example1" class="table table-bordered table-striped">
        <thead>
          <tr>
            <th>Product Name</th>
            <th>Price</th>
            <th>Description</th>
            <th>Main Image</th>
            <th>Gallery Images</th>

          </tr>
        </thead>
        <tbody>
        @foreach ($products as $product)

          <tr>
            <td>{{$product->name}}</td>
            <td>{{$product->price}}</td>
            <td>{{$product->description}}</td>
            <td>
    @if ($product->main_image)
        <img src="{{ asset('storage/images/'.$product->main_image) }}" alt="Product Image" width="100">
    @else
        No Image Available
    @endif
</td>
            <td>
              @php
                $galleryImages = is_array($product->gallery_images) ? $product->gallery_images : [];
              @endphp
              @foreach ($galleryImages as $galleryImage)
              <img src="{{ asset('storage/gallery/' . $galleryImage) }}" alt="Gallery Image" width="100">

              @endforeach
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

<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>