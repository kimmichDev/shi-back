<?php

namespace App\Http\Requests;

use App\Models\Post;
use Gate;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Response;

class StorePostRequest extends FormRequest
{
    public function authorize()
    {
        return Gate::allows('post_create');
    }

    public function rules()
    {
        return [
            'title' => [
                'string',
                'required',
                'unique:posts',
            ],
            'slug' => [
                'string',
                'required',
                'unique:posts',
            ],
            'download_link' => [
                'string',
                'nullable',
            ],
            'preview_link' => [
                'string',
                'nullable',
            ],
            'tags.*' => [
                'integer',
            ],
            'tags' => [
                'array',
            ],
        ];
    }
}
