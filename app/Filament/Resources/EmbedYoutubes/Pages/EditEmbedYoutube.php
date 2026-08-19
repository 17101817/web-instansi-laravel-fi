<?php

namespace App\Filament\Resources\EmbedYoutubes\Pages;

use App\Filament\Resources\EmbedYoutubes\EmbedYoutubeResource;
use Filament\Actions\DeleteAction;
use Filament\Resources\Pages\EditRecord;

class EditEmbedYoutube extends EditRecord
{
    protected static string $resource = EmbedYoutubeResource::class;

    protected function getHeaderActions(): array
    {
        return [
            DeleteAction::make(),
        ];
    }
}
