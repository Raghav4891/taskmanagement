<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

        Route::post('/login', 'App\Http\Controllers\Api\TaskManagmentController@login')->name('login');
        Route::group(['middleware' => 'auth:sanctum'],function(){
        Route::get('/task/list', 'App\Http\Controllers\Api\TaskManagmentController@taskLising')->name('taskLising');
        Route::post('/create/update/task', 'App\Http\Controllers\Api\TaskManagmentController@createUpdaateTask')->name('createUpdaateTask');
        Route::post('/delete/task', 'App\Http\Controllers\Api\TaskManagmentController@deleteTask')->name('deleteTask');
        Route::post('/assign/user/task', 'App\Http\Controllers\Api\TaskManagmentController@assignTaskToUser')->name('assignTaskToUser');
        Route::post('/unassign/user/task', 'App\Http\Controllers\Api\TaskManagmentController@unassignUserFromTask')->name('unassignUserFromTask');
        Route::post('/change/task/status', 'App\Http\Controllers\Api\TaskManagmentController@chnageTaskStatus')->name('chnageTaskStatus');
        Route::post('/user/task', 'App\Http\Controllers\Api\TaskManagmentController@userSpecificTaskList')->name('userSpecificTaskList');
});



