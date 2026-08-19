<?php

namespace App\Filament\Resources\SettingWebs;

use App\Filament\Resources\SettingWebs\Pages\CreateSettingWeb;
use App\Filament\Resources\SettingWebs\Pages\EditSettingWeb;
use App\Filament\Resources\SettingWebs\Pages\ListSettingWebs;
use App\Filament\Resources\SettingWebs\Schemas\SettingWebForm;
use App\Filament\Resources\SettingWebs\Tables\SettingWebsTable;
use App\Models\SettingWeb;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;
use UnitEnum;

class SettingWebResource extends Resource
{
    protected static ?string $model = SettingWeb::class;
    protected static string | UnitEnum | null $navigationGroup = 'Settings Website';

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleStack;

    public static function form(Schema $schema): Schema
    {
        return SettingWebForm::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return SettingWebsTable::configure($table);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => ListSettingWebs::route('/'),
            // 'create' => CreateSettingWeb::route('/create'),
            // 'edit' => EditSettingWeb::route('/{record}/edit'),
        ];
    }
}
