<?php

namespace App\Http\Controllers;

use App\Http\Resources\AssetsResource;
use App\Models\Asset;
use App\Models\User;
use Illuminate\Http\Request;

class AdventurersController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @param User $user
     * @return \Illuminate\Http\Resources\Json\AnonymousResourceCollection
     */
    public function belongings(User $user)
    {
        return AssetsResource::collection($user->assets);
    }


}
