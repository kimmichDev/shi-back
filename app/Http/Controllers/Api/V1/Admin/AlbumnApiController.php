<?php

namespace App\Http\Controllers\Api\V1\Admin;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Traits\MediaUploadingTrait;
use App\Http\Requests\StoreAlbumnRequest;
use App\Http\Requests\UpdateAlbumnRequest;
use App\Http\Resources\Admin\AlbumnResource;
use App\Models\Albumn;
use Gate;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class AlbumnApiController extends Controller
{
    use MediaUploadingTrait;

    public function index()
    {
        abort_if(Gate::denies('albumn_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return new AlbumnResource(Albumn::all());
    }

    public function store(StoreAlbumnRequest $request)
    {
        $albumn = Albumn::create($request->all());

        if ($request->input('photo', false)) {
            $albumn->addMedia(storage_path('tmp/uploads/' . basename($request->input('photo'))))->toMediaCollection('photo');
        }

        return (new AlbumnResource($albumn))
            ->response()
            ->setStatusCode(Response::HTTP_CREATED);
    }

    public function show(Albumn $albumn)
    {
        abort_if(Gate::denies('albumn_show'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return new AlbumnResource($albumn);
    }

    public function update(UpdateAlbumnRequest $request, Albumn $albumn)
    {
        $albumn->update($request->all());

        if ($request->input('photo', false)) {
            if (!$albumn->photo || $request->input('photo') !== $albumn->photo->file_name) {
                if ($albumn->photo) {
                    $albumn->photo->delete();
                }
                $albumn->addMedia(storage_path('tmp/uploads/' . basename($request->input('photo'))))->toMediaCollection('photo');
            }
        } elseif ($albumn->photo) {
            $albumn->photo->delete();
        }

        return (new AlbumnResource($albumn))
            ->response()
            ->setStatusCode(Response::HTTP_ACCEPTED);
    }

    public function destroy(Albumn $albumn)
    {
        abort_if(Gate::denies('albumn_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $albumn->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }
}
