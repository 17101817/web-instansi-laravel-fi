<?php

namespace App\Filament\Resources\Ppids\Pages;

use App\Filament\Resources\Ppids\PpidResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListPpids extends ListRecords
{
    protected static string $resource = PpidResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}
