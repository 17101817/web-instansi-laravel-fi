<?php

namespace App\Filament\Resources\SettingWebs\Pages;

use App\Models\SettingWeb;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;
use App\Filament\Resources\SettingWebs\SettingWebResource;

class ListSettingWebs extends ListRecords
{
    protected static string $resource = SettingWebResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make()
                ->hidden(fn(): bool => SettingWeb::query()->exists()),
        ];
    }
}
