<?php

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

// Auth::routes();
Route::get('/', function () {
    return redirect(url(''));
});
Route::get('/', [ 'as' => 'home', 'uses' => 'Home@index']);

Route::get('login', 'LoginController@index');\
Route::post('login/check_login', 'LoginController@checkLogin');
Route::get('login/forgotpassword', 'LoginController@forgotPassword');
Route::post('login/pforgotpassword', 'LoginController@pForgotPassword');
Route::get('admin/dashboard', 'AdminController@index');
Route::get('admin/logout', 'AdminController@logout');
Route::get('admin/profile', 'AdminController@profile');
Route::patch('admin/update_profile/{profile}', 'AdminController@profile_update');
Route::patch('admin/update_password/{profile}', 'AdminController@password_update');
Route::patch('admin/change_photo', 'AdminController@change_photo');

// CRUD Users
Route::get('admin/users', 'AdminController@users');
Route::get('admin/data_users', 'AdminController@data_users');
Route::get('admin/users_level', 'AdminController@data_users_level');
Route::get('admin/users_type', 'AdminController@data_users_type');
Route::get('admin/daftar_branch', 'AdminController@data_users_branch');
Route::get('admin/search_users', 'AdminController@users_search');
Route::get('admin/add_users', 'AdminController@users_add');
Route::post('admin/store_users', 'AdminController@users_store');
Route::put('admin/update_users/{users}', 'AdminController@users_update');
Route::put('admin/update_password_users/{users}', 'AdminController@users_update_password');
Route::delete('admin/delete_users/{users}', 'AdminController@users_delete');
Route::get('admin/exporttoexcel_users', 'AdminController@exportToExcelUsers');
