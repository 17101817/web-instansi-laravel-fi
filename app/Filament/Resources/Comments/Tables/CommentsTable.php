<?php

namespace App\Filament\Resources\Comments\Tables;

use App\Models\Comment;
use Filament\Tables\Table;
use Filament\Actions\Action;
use Filament\Actions\EditAction;
use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteBulkAction;
use Filament\Forms\Components\Textarea;
use Filament\Tables\Columns\TextColumn;
use Filament\Notifications\Notification;

class CommentsTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->query(
                Comment::whereNull('parent_id') // 🔥 hanya komentar utama
                    ->latest()

            )
            ->columns([
                TextColumn::make('#')
                    ->rowIndex()
                    ->searchable(),
                TextColumn::make('blog.name')
                    ->searchable(),
                TextColumn::make('name')
                    ->searchable(),
                TextColumn::make('email')
                    ->label('Email address')
                    ->searchable(),

                TextColumn::make('comment')
                    ->label('Komentar')
                    ->limit(50)
                    ->wrap(),
                TextColumn::make('replies_count')
                    ->counts('replies')
                    ->label('Replies'),

                TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                //
            ])
            ->recordActions([
                // 🔥 ACTION REPLY
                Action::make('reply')
                    ->label('Balas')
                    ->icon('heroicon-o-chat-bubble-left-right')
                    ->color('primary')
                    ->modalHeading('Balas Komentar')
                    ->modalSubmitActionLabel('Kirim Balasan')
                    ->form([
                        Textarea::make('comment')
                            ->label('Balasan')
                            ->required()
                            ->rows(4),
                    ])
                    ->action(function (array $data, Comment $record) {
                        Comment::create([
                            'blog_id'   => $record->blog_id,
                            'parent_id' => $record->id,
                            'name'      => 'Admin',
                            'email'     => 'admin@dinsos.go.id',
                            'comment'   => $data['comment'],
                        ]);

                        Notification::make()
                            ->title('Balasan terkirim')
                            ->success()
                            ->send();
                    }),
                EditAction::make(),
            ])
            ->toolbarActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                ]),
            ]);
    }
}
