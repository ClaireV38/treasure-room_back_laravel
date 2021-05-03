<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class AssetsResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => (string)$this->id,
            'type' => 'Assets',
            'attributes' => [
                'title' => $this->title,
                'place_of_discovery' => $this->place_of_discovery,
                'value' => $this->value,
                'photo' => $this->photo,
            ]
        ];
    }
}
