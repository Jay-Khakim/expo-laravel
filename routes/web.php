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
Route::redirect('/', '/en');

Route::group(['prefix' => '{language}'], function () {
    Route::get('/', function () {
        return view('welcome');
    });

    // Auth::routes();

    Route::get('/', 'PageController@index')->name('home');
    Route::get('/headquater', 'PageController@headquater')->name('headquater');
    Route::get('/about', 'PageController@about')->name('about');
    Route::get('/service', 'PageController@service')->name('service');
    Route::get('/territorial', 'PageController@territorial')->name('territorial');
    Route::get('/foreign', 'PageController@foreign')->name('foreign');
    Route::get('/scientific', 'PageController@scientific')->name('scientific');
});

