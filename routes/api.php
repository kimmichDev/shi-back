<?php

use App\Http\Controllers\Api\V1\Admin\AuthController;
use Illuminate\Support\Facades\Route;

Route::post('/v1/login', [AuthController::class, 'login'])->name('api.login');

Route::group(['prefix' => 'v1', 'as' => 'api.', 'namespace' => 'Api\V1\Admin', 'middleware' => ['auth:sanctum']], function () {

    //Slide
    Route::get('slides', 'SlideApiController@index');

    // Post
    Route::post('posts/media', 'PostApiController@storeMedia')->name('posts.storeMedia');
    Route::apiResource('posts', 'PostApiController');

    // Category
    Route::apiResource('categories', 'CategoryApiController');

    // Book
    Route::post('books/media', 'BookApiController@storeMedia')->name('books.storeMedia');
    Route::apiResource('books', 'BookApiController');

    // Tag
    Route::apiResource('tags', 'TagApiController');

    // Albumn
    Route::post('albumns/media', 'AlbumnApiController@storeMedia')->name('albumns.storeMedia');
    Route::apiResource('albumns', 'AlbumnApiController');
});
