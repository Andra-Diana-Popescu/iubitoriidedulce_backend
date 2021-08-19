<?php

// use App\Http\Controllers\ProductsController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::resource('games', GameController::class);
Route::resource('products', ProductsController::class);
Route::resource('categories', CategoriesController::class);
Route::resource('customers', CustomersController::class); // de aici merge
Route::resource('orders', OrdersController::class);
Route::resource('order_details', OrderDetailsController::class);
Route::resource('product_categories', ProductCategoriesController::class);



Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';

// ruta cu controller iubitorii de dulce

// Route::get('/', 'ProductsController@index');
// Route::get('/', 'CategoriesController@index');
// Route::get('/', 'CustomersController@index');
// Route::get('/', 'OrdersController@index');
// Route::get('/', 'OrderDetailsController@index');
Route::get('/', 'ProductsController@getProduct');
// Route::get('listproduct', ProductCategoriesController::class);


Route::get('image-gallery', 'ImageGalleryController@index');
Route::post('image-gallery', 'ImageGalleryController@upload');
Route::delete('image-gallery/{id}', 'ImageGalleryController@destroy');