@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        {{ trans('global.show') }} {{ trans('cruds.albumn.title') }}
    </div>

    <div class="card-body">
        <div class="form-group">
            <div class="form-group">
                <a class="btn btn-default" href="{{ route('admin.albumns.index') }}">
                    {{ trans('global.back_to_list') }}
                </a>
            </div>
            <table class="table table-bordered table-striped">
                <tbody>
                    <tr>
                        <th>
                            {{ trans('cruds.albumn.fields.id') }}
                        </th>
                        <td>
                            {{ $albumn->id }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.albumn.fields.photo') }}
                        </th>
                        <td>
                            @if($albumn->photo)
                                <a href="{{ $albumn->photo->getUrl() }}" target="_blank" style="display: inline-block">
                                    <img src="{{ $albumn->photo->getUrl('thumb') }}">
                                </a>
                            @endif
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="form-group">
                <a class="btn btn-default" href="{{ route('admin.albumns.index') }}">
                    {{ trans('global.back_to_list') }}
                </a>
            </div>
        </div>
    </div>
</div>



@endsection