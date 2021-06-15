<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Asset;
use App\Http\Resources\AssetsResource;
use Illuminate\Support\Facades\Gate;

class AssetsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return AssetsResource::collection(Asset::all());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required'
        ]);

        $asset = Asset::create([
            'title' => $request->input('title'),
            'place_of_discovery' => $request->input('placeOfDiscovery'),
            'photo' => $request->input('photo'),
            'value' => $request->input('value'),
            'deposit_date' => now(),
        ]);

        $asset->owner()->associate($request->user());

        $asset->save();

        return $asset;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @param Request $request
     * @return int
     */
    public function destroy(int $id, Request $request)
    {
        $asset = Asset::findOrFail($id);
        if ((Gate::allows('isOwner', $asset)) || (Gate::allows('isAdmin'))) {
            return Asset::destroy($id);
        } else {
            return response()->json(['error' => 'Only owner or admin can delete a treasure'], 401);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param Asset $asset
     * @return \Illuminate\Http\Resources\Json\AnonymousResourceCollection
     */
    public function show(Asset $asset)
    {
        return AssetsResource::collection(Asset::find($asset));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param int $id
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function update(int $id, Request $request)
    {
        $user = $request->user();
        if (($user->id == Asset::find($id)->owner->id) || (Gate::allows('isAdmin'))) {
            $asset = Asset::findOrFail($id);
            var_dump($asset);
            $asset->update(
                $request->query(),
                ['timestamps' => false]);
            return $asset;
        } else {
            return response()->json(['error' => 'Only owner or admin can delete a treasure'], 401);
        }
    }

}
