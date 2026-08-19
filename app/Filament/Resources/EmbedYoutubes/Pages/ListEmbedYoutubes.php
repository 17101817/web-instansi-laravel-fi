<?php

namespace App\Filament\Resources\EmbedYoutubes\Pages;

use App\Filament\Resources\EmbedYoutubes\EmbedYoutubeResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListEmbedYoutubes extends ListRecords
{
    protected static string $resource = EmbedYoutubeResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}
