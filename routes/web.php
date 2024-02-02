<?php

use App\Http\Controllers\Admin\CartAdminController;
use App\Http\Controllers\MainController;
use App\Http\Controllers\Admin\MainAdminController;
use App\Http\Controllers\Admin\MenuController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\SliderController;
use App\Http\Controllers\Admin\UploadController;
use App\Http\Controllers\Admin\Users\LoginController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\MenuMainController;
use App\Http\Controllers\NewController;
use App\Http\Controllers\ProductMainController;
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

Route::prefix('login')->group(function () {
    Route::middleware('auth')->group(function () {
        Route::get('admin', [MainAdminController::class, 'index'])->name('admin');
        Route::get('/admin/main', [MainAdminController::class, 'index']);
        Route::get('menu/add', [MenuController::class, 'create'])->name('add');
        Route::post('menu/add', [MenuController::class, 'store'])->name('menu.store');
        Route::get('menu/list', [MenuController::class, 'index'])->name('menu.list');
        Route::get('menu/edit/{menu}', [MenuController::class, 'show'])->name('edit');
        Route::post('menu/edit/{menu}', [MenuController::class, 'update'])->name('menu.update');
        Route::DELETE('menu/destroy', [MenuController::class, 'destroy'])->name('menu.delete');

        // product

        Route::get('product', [ProductController::class, 'create'])->name('product');
        Route::post('product', [ProductController::class, 'store'])->name('product.add');
        Route::get('product/list', [ProductController::class, 'index'])->name('product.list');
        Route::get('edit/{product}', [ProductController::class, 'show'])->name('product.show');
        Route::post('edit/{product}', [ProductController::class, 'update'])->name('product.update');
        Route::DELETE('product/destroy', [ProductController::class, 'destroy'])->name('product.delete');

        // slider

        Route::get('slider', [SliderController::class, 'create'])->name('slider');
        Route::post('slider', [SliderController::class, 'store'])->name('slider.add');
        Route::get('slider/list', [SliderController::class, 'index'])->name('list');
        Route::get('slider/edit/{slider}', [SliderController::class, 'show'])->name('slider.show');
        Route::post('slider/edit/{slider}', [SliderController::class, 'update'])->name('slider.update');
        Route::DELETE('slider/destroy', [SliderController::class, 'destroy'])->name('slider.delete');

        //upload

        Route::post('upload/services', [UploadController::class, 'store'])->name('upload');

        //cart 
        Route::get('customers', [CartAdminController::class, 'index'])->name('cart');
        Route::get('customers/view/{customer}', [CartAdminController::class, 'show'])->name('cart.show');
        Route::DELETE('customers/destroy', [CartAdminController::class, 'destroy'])->name('customer.delete');
    });
    Route::get('/', [LoginController::class, 'index'])->name('login');
    Route::post('/login/store', [LoginController::class, 'store'])->name('admin.login');
});


// 

Route::get('/', [MainController::class, 'index']);
Route::post('/services/load-product', [MainController::class, 'loadProduct']);
Route::get('danh-muc/{id}-{slug}.html', [MenuMainController::class, 'index']);
Route::get('about', [NewController::class, 'show'])->name('about.index');
Route::get('contact', [NewController::class, 'index'])->name('contact.index');
Route::get('san-pham/{id}-{slug}.html', [ProductMainController::class, 'index']);
Route::post('add-cart', [CartController::class, 'index']);
Route::get('carts', [CartController::class, 'show']);
Route::post('update-cart', [CartController::class, 'update']);
Route::get('carts/delete/{id}', [CartController::class, 'remove']);
Route::post('carts', [CartController::class, 'addCart']);
