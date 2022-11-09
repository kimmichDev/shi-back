<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePostsTable extends Migration
{
    public function up()
    {
        Schema::create('posts', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('title')->unique();
            $table->string('slug')->unique();
            $table->longText('description')->nullable();
            $table->string('download_link')->nullable();
            $table->string('preview_link')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }
}
