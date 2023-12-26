@extends('admin.layouts.apps')
@section('content')
<div class="card card-default" >
          <div class="card-header">

            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse">
                <i class="fas fa-minus"></i>
              </button>
              <button type="button" class="btn btn-tool" data-card-widget="remove">
                <i class="fas fa-times"></i>
              </button>
            </div>
          </div>
          <!-- /.card-header -->
          <div class="card-body" style="margin-left: 250px;">
            <div class="row">
        <form action="{{url('product', $product->id)}}" method="POST" enctype="multipart/form-data">
        @csrf

              <div class="col-md-6">
                <div class="form-group">
                  <label>Product Name</label>
                  <input type="text" name="product_name" class="form-control" id="name" value="{{old('product_name')}}" placeholder="Enter product name">
                </div>
                <!-- /.form-group -->
                <div class="form-group">
                  <label>Price</label>
                  <input type="text" name="product_price" class="form-control" id="price" 
value="{{old('product_price')}}" placeholder="Enter product price">

                </div>
                <!-- /.form-group -->
              </div>
              <!-- /.col -->
              <div class="col-md-6">
                <div class="form-group">
                  <label>Description</label>
                  <div class="row">
                 <div class="col-md-12">
                 <textarea name="product_description" value="{{old('product_description')}}" id="summernote" style="width: 100%;">
                </textarea>
            </div>

            </div>
      </div>
                </div>
                <!-- /.form-group -->
                <div class="form-group">
    <label for="singleInputFile">Upload Main Image</label>
    <div class="input-group">
        <div class="custom-file">
            <input type="file" name="product_image" value="{{old('product_image')}}" class="custom-file-input" id="singleInputFile">
            <label class="custom-file-label" for="singleInputFile">Choose file</label>
        </div>
        <div class="input-group-append">
            <span class="input-group-text">Upload</span>
        </div>
    </div>
    <div id="main-image-preview-container"></div>
</div>
<!-- /.form-group -->
<div id="image-preview-container" class="row"></div>

              <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
        </form>
              <!-- /.col -->
            </div>
            <!-- /.row -->
          </div>

    @endsection

<script>
$.ajax({
    url: '/products/. $product->id',
    type: 'PUT',
    data: updatedProductData, 
    success: function(response) {
       
    },
    error: function(error) {
       
    }
});

</script>