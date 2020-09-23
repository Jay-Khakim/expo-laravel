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

    // Association
    Route::get('/headquater', 'PageController@headquater')->name('headquater');
    Route::get('/about', 'PageController@about')->name('about');
    Route::get('/service', 'PageController@service')->name('service');
    Route::get('/territorial', 'PageController@territorial')->name('territorial');
    Route::get('/foreign', 'PageController@foreign')->name('foreign');
    Route::get('/scientific', 'PageController@scientific')->name('scientific');
    Route::get('/docs', 'PageController@docs')->name('docs');

    // Membership
    Route::get('/membership', 'PageController@membership')->name('membership');
    Route::get('/memberlist', 'PageController@memberlist')->name('members-list');
    Route::get('/memberlist/{slug_en}', 'PageController@single')->name('single-member');
    Route::get('/checkmember', 'PageController@checkmember')->name('check-member');
    Route::get('/check', 'PageController@check')->name('check');

});

