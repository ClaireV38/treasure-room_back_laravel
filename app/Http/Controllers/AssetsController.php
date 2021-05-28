<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Asset;
use App\Http\Resources\AssetsResource;

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
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return Asset::destroy($id);
    }

    /**
     * Display the specified resource.
     *
     * @param Asset $asset
     * @return \Illuminate\Http\Response
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
     * @param \Illuminate\Http\Request $request
     * @param Asset $asset
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Asset $asset)
    {
        $asset->update([
            'title' => $request->input('title'),
            'place_of_discovery' => $request->input('place_of_discovery'),
            'value' => $request->input('value'),
            'updated_at' => false
        ], ['timestamps' => false]);

        return $asset;
    }

}
