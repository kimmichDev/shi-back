<?php

namespace App\Http\Requests;

use App\Models\Post;
use Gate;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Response;

class UpdatePostRequest extends FormRequest
{
    public function authorize()
    {
        return Gate::allows('post_edit');
    }

    public function rules()
    {
        return [
            'title' => [
                'string',
                'required',
                'unique:posts,title,' . request()->route('post')->id,
            ],
            'slug' => [
                'string',
                'required',
                'unique:posts,slug,' . request()->route('post')->id,
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
