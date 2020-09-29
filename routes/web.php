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
    Route::get('/benefits', 'PageController@benefits')->name('benefits');
    Route::get('/members-service', 'PageController@memservice')->name('members-service');

    // News 
    Route::get('/news', 'PageController@news')->name('news');
    Route::get('/news/{slug_en}', 'PageController@singlenews')->name('single-news');
    Route::get('/news/category/{slug_en}', 'PageController@categorynews')->name('category-news');
    Route::get('/events', 'PageController@events')->name('events');
    Route::get('/press', 'PageController@press')->name('press');

    //Information 
    Route::get('/statistics', 'PageController@statistics')->name('statistics');





});

