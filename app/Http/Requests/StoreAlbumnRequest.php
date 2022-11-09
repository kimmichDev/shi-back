<?php

namespace App\Http\Requests;

use App\Models\Albumn;
use Gate;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Response;

class StoreAlbumnRequest extends FormRequest
{
    public function authorize()
    {
        return Gate::allows('albumn_create');
    }

    public function rules()
    {
        return [
            'photo' => [
                'required',
            ],
        ];
    }
}
