<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\UploadedFile;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Storage;
use App\Models\Product;

class ProductController extends Controller
{

    public function index()
    {
        $products = Product::all(); // Fetch all products from the database
    
        return view('admin.products.index', ['products' => $products]);
    }
    

public function create() {
    return view('admin.products.create');
}
public function store(Request $request)
{
    
    $validatedData = $request->validate([
        'name' => 'required',
        'description' => 'required',
        'price' => 'required',
        'main_image' => 'image|max:2048', // Adjust the max size as needed
        'gallery_images.*' => 'image|max:2048', // Adjust the max size as needed
    ]);

    $productData = $request->except(['_token', 'main_image', 'gallery_images']);
    $product = Product::create($productData);

    // Handle main image
    if ($request->hasFile('main_image')) {
        $mainImage = $request->file('main_image');
        $mainImageName = $this->storeAndOptimizeImage($mainImage);
        $product->main_image = $mainImageName;
        $product->save();
    }

    // Handle gallery images
    if ($request->hasFile('gallery_images')) {
     $galleryImages = $request->file('gallery_images');
       $galleryImageNames = [];

       foreach ($galleryImages as $galleryImage) {
           $galleryImageName = $this->storeAndOptimizeImage($galleryImage);
           $galleryImageNames[] = $galleryImageName;
       }

       $product->gallery_images = $galleryImageNames;
       $product->save();
   }

   return redirect()->route('products.index')->with('success', 'Product created successfully');
}

// private function storeAndOptimizeImage($image)
// {
//     $imageName = $image->getClientOriginalName();

//     // Store the original image
//     $image->storeAs('public/images', $imageName);

//     // Create a resized and optimized version of the image
//     $resizedImage = Image::make($image->getRealPath())
//         ->resize(800, null, function ($constraint) {
//             $constraint->aspectRatio();
//             $constraint->upsize();
//         })
//         ->encode('jpg', 80);

//     // Store the resized image
//     Storage::disk('public')->put('images/' . $imageName, $resizedImage);

//     return $imageName;
// }
private function storeAndOptimizeImage($image)
{
    $imageName = $image->getClientOriginalName();

    // Store the original image
    $image->storeAs('public/images', $imageName);

    // Create a resized and optimized version of the image
    $resizedImage = Image::make($image->getRealPath())
        ->resize(800, null, function ($constraint) {
            $constraint->aspectRatio();
            $constraint->upsize();
        })
        ->encode('jpg', 80);

    // Store the resized image
    Storage::disk('public')->put('images/' . $imageName, $resizedImage->stream());

    return $imageName;
}


public function edit($id){
    $product = Product::find($id);
    return view('admin.products.edit');
}

public function delete($id){
    $product = Product::find($id);
    $product->delete();
    return back()->with('success', 'Product deleted successfully');
}





}
