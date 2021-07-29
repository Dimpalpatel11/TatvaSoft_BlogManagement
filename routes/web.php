<?php

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

// Route::get('/', function () {
//     return view('welcome');
// });
Route::get('/', 'BlogController@index')->name('Bloghome');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/create-blog', 'BlogController@addBlog')->name('addBlog');
Route::post('/store-blog', 'BlogController@storeBlog')->name('storeBlog');
Route::get('/edit-blog/{id}', 'BlogController@editBlog')->name('editBlog');
Route::post('/update-blog', 'BlogController@updateBlog')->name('updateBlog');
Route::get('/delete-blog/{id}', 'BlogController@deleteBlog')->name('deleteBlog');
