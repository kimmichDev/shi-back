<?php

use Illuminate\Support\Facades\Route;

Route::redirect('/', '/login');
Route::get('/home', function () {
    if (session('status')) {
        return redirect()->route('admin.home')->with('status', session('status'));
    }

    return redirect()->route('admin.home');
});

Auth::routes(['register' => false]);

Route::group(['prefix' => 'admin', 'as' => 'admin.', 'namespace' => 'Admin', 'middleware' => ['auth']], function () {
    Route::get('/', 'HomeController@index')->name('home');
    // Permissions
    Route::delete('permissions/destroy', 'PermissionsController@massDestroy')->name('permissions.massDestroy');
    Route::resource('permissions', 'PermissionsController');

    // Roles
    Route::delete('roles/destroy', 'RolesController@massDestroy')->name('roles.massDestroy');
    Route::resource('roles', 'RolesController');

    // Users
    Route::delete('users/destroy', 'UsersController@massDestroy')->name('users.massDestroy');
    Route::resource('users', 'UsersController');

    // Audit Logs
    Route::resource('audit-logs', 'AuditLogsController', ['except' => ['create', 'store', 'edit', 'update', 'destroy']]);

    // Post
    Route::delete('posts/destroy', 'PostController@massDestroy')->name('posts.massDestroy');
    Route::post('posts/media', 'PostController@storeMedia')->name('posts.storeMedia');
    Route::post('posts/ckmedia', 'PostController@storeCKEditorImages')->name('posts.storeCKEditorImages');
    Route::post('posts/parse-csv-import', 'PostController@parseCsvImport')->name('posts.parseCsvImport');
    Route::post('posts/process-csv-import', 'PostController@processCsvImport')->name('posts.processCsvImport');
    Route::resource('posts', 'PostController');

    // Category
    Route::delete('categories/destroy', 'CategoryController@massDestroy')->name('categories.massDestroy');
    Route::post('categories/parse-csv-import', 'CategoryController@parseCsvImport')->name('categories.parseCsvImport');
    Route::post('categories/process-csv-import', 'CategoryController@processCsvImport')->name('categories.processCsvImport');
    Route::resource('categories', 'CategoryController');

    // Book
    Route::delete('books/destroy', 'BookController@massDestroy')->name('books.massDestroy');
    Route::post('books/media', 'BookController@storeMedia')->name('books.storeMedia');
    Route::post('books/ckmedia', 'BookController@storeCKEditorImages')->name('books.storeCKEditorImages');
    Route::post('books/parse-csv-import', 'BookController@parseCsvImport')->name('books.parseCsvImport');
    Route::post('books/process-csv-import', 'BookController@processCsvImport')->name('books.processCsvImport');
    Route::resource('books', 'BookController');

    // Tag
    Route::delete('tags/destroy', 'TagController@massDestroy')->name('tags.massDestroy');
    Route::post('tags/parse-csv-import', 'TagController@parseCsvImport')->name('tags.parseCsvImport');
    Route::post('tags/process-csv-import', 'TagController@processCsvImport')->name('tags.processCsvImport');
    Route::resource('tags', 'TagController');

    // Albumn
    Route::delete('albumns/destroy', 'AlbumnController@massDestroy')->name('albumns.massDestroy');
    Route::post('albumns/media', 'AlbumnController@storeMedia')->name('albumns.storeMedia');
    Route::post('albumns/ckmedia', 'AlbumnController@storeCKEditorImages')->name('albumns.storeCKEditorImages');
    Route::post('albumns/parse-csv-import', 'AlbumnController@parseCsvImport')->name('albumns.parseCsvImport');
    Route::post('albumns/process-csv-import', 'AlbumnController@processCsvImport')->name('albumns.processCsvImport');
    Route::resource('albumns', 'AlbumnController');

    Route::resource('slides', SlideController::class);
});
Route::group(['prefix' => 'profile', 'as' => 'profile.', 'namespace' => 'Auth', 'middleware' => ['auth']], function () {
    // Change password
    if (file_exists(app_path('Http/Controllers/Auth/ChangePasswordController.php'))) {
        Route::get('password', 'ChangePasswordController@edit')->name('password.edit');
        Route::post('password', 'ChangePasswordController@update')->name('password.update');
        Route::post('profile', 'ChangePasswordController@updateProfile')->name('password.updateProfile');
        Route::post('profile/destroy', 'ChangePasswordController@destroy')->name('password.destroyProfile');
    }
});
