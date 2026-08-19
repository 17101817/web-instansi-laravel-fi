<?php

namespace App\Filament\Resources\EmbedYoutubes;

use App\Filament\Resources\EmbedYoutubes\Pages\CreateEmbedYoutube;
use App\Filament\Resources\EmbedYoutubes\Pages\EditEmbedYoutube;
use App\Filament\Resources\EmbedYoutubes\Pages\ListEmbedYoutubes;
use App\Filament\Resources\EmbedYoutubes\Schemas\EmbedYoutubeForm;
use App\Filament\Resources\EmbedYoutubes\Tables\EmbedYoutubesTable;
use App\Models\EmbedYoutube;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;
use UnitEnum;

class EmbedYoutubeResource extends Resource
{
    protected static ?string $model = EmbedYoutube::class;
    protected static string | UnitEnum | null $navigationGroup = 'Settings Website';
    protected static bool $shouldRegisterNavigation = false;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleStack;

    public static function form(Schema $schema): Schema
    {
        return EmbedYoutubeForm::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return EmbedYoutubesTable::configure($table);
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
            'index' => ListEmbedYoutubes::route('/'),
            // 'create' => CreateEmbedYoutube::route('/create'),
            // 'edit' => EditEmbedYoutube::route('/{record}/edit'),
        ];
    }
}
