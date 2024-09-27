<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\UserController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
$controller_path = 'App\Http\Controllers';

// Get user information route
Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();

});

Route::middleware('auth:sanctum')->get('/profile', $controller_path . '\Api\UserController@profile');
Route::middleware('auth:sanctum')->get('/requestList-personal', $controller_path . '\Api\UserController@requestListPersonal');
Route::middleware('auth:sanctum')->get('/requestList-without-personal', $controller_path . '\Api\UserController@requestListWithoutPersonal');
Route::middleware('auth:sanctum')->post('/blood-request/apply', $controller_path . '\Api\UserController@apply');
Route::middleware('auth:sanctum')->get('/blood-request', $controller_path . '\Api\UserController@bloodRequest');
Route::middleware('auth:sanctum')->get('/blood-request/response-list-own/{id1}', $controller_path . '\Api\UserController@responseListIndividual');
Route::middleware('auth:sanctum')->get('/blood-request/response-list', $controller_path . '\Api\UserController@responseList');
Route::middleware('auth:sanctum')->post('/blood-request/accept', $controller_path . '\Api\UserController@accept');
Route::middleware('auth:sanctum')->post('/blood-request/withdraw-store', $controller_path . '\Api\UserController@withdrawStore');
Route::middleware('auth:sanctum')->post('/hpv/vaccine-centre', $controller_path . '\Api\UserController@findNearestVaccineCentre');


Route::group([

    'middleware' => 'api',

], function () {
	$controller_path = 'App\Http\Controllers';
	Route::post('login', $controller_path . '\Api\UserController@login');
	Route::get('location', $controller_path . '\Api\UserController@location');
	Route::get('division-list', $controller_path . '\Api\UserController@division_list');
	Route::get('district-list', $controller_path . '\Api\UserController@district_list');
	Route::get('thana-list', $controller_path . '\Api\UserController@thana_list');
	Route::get('hospital-list', $controller_path . '\Api\UserController@hospital_list');
	Route::get('hospital-list-filter/{id1}/{id2}/{id3}', $controller_path . '\Api\UserController@hospital_list_filter');
	Route::get('university-list', $controller_path . '\Api\UserController@university_list');
	Route::get('group-list', $controller_path . '\Api\UserController@group_list');
	Route::post('/registration', $controller_path . '\Api\UserController@registration');
	Route::get('slider', $controller_path . '\Api\UserController@slider');
	Route::get('/event', $controller_path . '\Api\UserController@event');
	Route::get('/requestList-all', $controller_path . '\Api\UserController@requestListAll');
	Route::post('/request-store', $controller_path . '\Api\UserController@requestStore');
	Route::post('/request-store/payment/success', $controller_path . '\Api\UserController@paymentSuccess')->name('request-store.payment.success');
	Route::post('/request-store/payment/fail', $controller_path . '\Api\UserController@paymentFail')->name('request-store.payment.fail');
	Route::post('/request-store/payment/cancel', $controller_path . '\Api\UserController@paymentCancel')->name('request-store.payment.cancel');
	Route::get('/user-list', $controller_path . '\Api\UserController@userList');
	Route::get('/achivement-list', $controller_path . '\Api\UserController@achivementList');
	Route::get('/event-list', $controller_path . '\Api\UserController@eventList');
	Route::get('/bloodBank-list', $controller_path . '\Api\UserController@bloodBankList');
	Route::get('/group-list', $controller_path . '\Api\UserController@groupList');
	Route::get('/district-wise-hospital/{id}', $controller_path . '\backend\HospitalController@getHospital')->name('district-wise-hospital');
	Route::get('/hpv/vaccine-centre-list', $controller_path . '\Api\UserController@hpv');
});