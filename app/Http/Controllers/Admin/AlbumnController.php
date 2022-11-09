<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Traits\CsvImportTrait;
use App\Http\Controllers\Traits\MediaUploadingTrait;
use App\Http\Requests\MassDestroyAlbumnRequest;
use App\Http\Requests\StoreAlbumnRequest;
use App\Http\Requests\UpdateAlbumnRequest;
use App\Models\Albumn;
use Gate;
use Illuminate\Http\Request;
use Spatie\MediaLibrary\MediaCollections\Models\Media;
use Symfony\Component\HttpFoundation\Response;
use Yajra\DataTables\Facades\DataTables;

class AlbumnController extends Controller
{
    use MediaUploadingTrait;
    use CsvImportTrait;

    public function index(Request $request)
    {
        abort_if(Gate::denies('albumn_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        if ($request->ajax()) {
            $query = Albumn::query()->select(sprintf('%s.*', (new Albumn())->table));
            $table = Datatables::of($query);

            $table->addColumn('placeholder', '&nbsp;');
            $table->addColumn('actions', '&nbsp;');

            $table->editColumn('actions', function ($row) {
                $viewGate = 'albumn_show';
                $editGate = 'albumn_edit';
                $deleteGate = 'albumn_delete';
                $crudRoutePart = 'albumns';

                return view('partials.datatablesActions', compact(
                'viewGate',
                'editGate',
                'deleteGate',
                'crudRoutePart',
                'row'
            ));
            });

            $table->editColumn('id', function ($row) {
                return $row->id ? $row->id : '';
            });
            $table->editColumn('photo', function ($row) {
                if ($photo = $row->photo) {
                    return sprintf(
        '<a href="%s" target="_blank"><img src="%s" width="50px" height="50px"></a>',
        $photo->url,
        $photo->thumbnail
    );
                }

                return '';
            });

            $table->rawColumns(['actions', 'placeholder', 'photo']);

            return $table->make(true);
        }

        return view('admin.albumns.index');
    }

    public function create()
    {
        abort_if(Gate::denies('albumn_create'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return view('admin.albumns.create');
    }

    public function store(StoreAlbumnRequest $request)
    {
        $albumn = Albumn::create($request->all());

        if ($request->input('photo', false)) {
            $albumn->addMedia(storage_path('tmp/uploads/' . basename($request->input('photo'))))->toMediaCollection('photo');
        }

        if ($media = $request->input('ck-media', false)) {
            Media::whereIn('id', $media)->update(['model_id' => $albumn->id]);
        }

        return redirect()->route('admin.albumns.index');
    }

    public function edit(Albumn $albumn)
    {
        abort_if(Gate::denies('albumn_edit'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return view('admin.albumns.edit', compact('albumn'));
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

        return redirect()->route('admin.albumns.index');
    }

    public function show(Albumn $albumn)
    {
        abort_if(Gate::denies('albumn_show'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return view('admin.albumns.show', compact('albumn'));
    }

    public function destroy(Albumn $albumn)
    {
        abort_if(Gate::denies('albumn_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $albumn->delete();

        return back();
    }

    public function massDestroy(MassDestroyAlbumnRequest $request)
    {
        Albumn::whereIn('id', request('ids'))->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }

    public function storeCKEditorImages(Request $request)
    {
        abort_if(Gate::denies('albumn_create') && Gate::denies('albumn_edit'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $model         = new Albumn();
        $model->id     = $request->input('crud_id', 0);
        $model->exists = true;
        $media         = $model->addMediaFromRequest('upload')->toMediaCollection('ck-media');

        return response()->json(['id' => $media->id, 'url' => $media->getUrl()], Response::HTTP_CREATED);
    }
}
