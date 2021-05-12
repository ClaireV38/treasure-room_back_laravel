<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AssetsController;

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

Route::group(['prefix' => 'v1'], function () {
    Route::get('/assets', [AssetsController::class, 'index']);
});


Route::middleware('auth:api')->prefix('v1')->group(function() {
    Route::get('/user', function (Request $request) {
        return $request->user();
    });
    Route::get('/assets/{asset}', [AssetsController::class, 'show']);
    Route::post('/assets', [AssetsController::class, 'store']);
    Route::delete('/assets/{id}', [AssetsController::class, 'destroy']);
});


