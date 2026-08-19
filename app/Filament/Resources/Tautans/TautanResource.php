<?php

namespace App\Filament\Resources\Tautans;

use App\Filament\Resources\Tautans\Pages\CreateTautan;
use App\Filament\Resources\Tautans\Pages\EditTautan;
use App\Filament\Resources\Tautans\Pages\ListTautans;
use App\Filament\Resources\Tautans\Schemas\TautanForm;
use App\Filament\Resources\Tautans\Tables\TautansTable;
use App\Models\Tautan;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;
use UnitEnum;

class TautanResource extends Resource
{
    protected static ?string $model = Tautan::class;
    protected static string | UnitEnum | null $navigationGroup = 'Settings Website';

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleStack;

    public static function form(Schema $schema): Schema
    {
        return TautanForm::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return TautansTable::configure($table);
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
            'index' => ListTautans::route('/'),
            // 'create' => CreateTautan::route('/create'),
            // 'edit' => EditTautan::route('/{record}/edit'),
        ];
    }
}
