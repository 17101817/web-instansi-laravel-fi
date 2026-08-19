<?php

namespace App\Filament\Pages\Auth;

use Filament\Auth\Pages\Login as BaseLogin;
use Filament\Auth\Http\Responses\Contracts\LoginResponse;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Checkbox;
use Filament\Notifications\Notification;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\ValidationException;

class Login extends BaseLogin
{
    /**
     * 🔥 GANTI EMAIL FIELD BAWAAN FILAMENT
     */
    protected function getEmailFormComponent(): TextInput
    {
        return TextInput::make('username')
            ->label('Username')
            ->required()
            ->autofocus()
            ->autocomplete('username')
            ->extraInputAttributes([
                'inputmode' => 'text',
            ]);
    }

    /**
     * 🔥 PASSWORD (BIAR KONSISTEN)
     */
    protected function getPasswordFormComponent(): TextInput
    {
        return TextInput::make('password')
            ->label('Kata sandi')
            ->password()
            ->required();
    }

    /**
     * 🔥 REMEMBER ME
     */
    protected function getRememberFormComponent(): Checkbox
    {
        return Checkbox::make('remember')
            ->label('Ingat saya');
    }

    /**
     * 🔥 AUTHENTICATE (PUBLIC)
     */
    public function authenticate(): ?LoginResponse
    {
        $data = $this->form->getState();

        if (! Auth::attempt([
            'username' => $data['username'],
            'password' => $data['password'],
        ], $data['remember'] ?? false)) {

            Notification::make()
                ->title('Login gagal')
                ->body('Username atau password salah.')
                ->danger()
                ->send();

            throw ValidationException::withMessages([
                'username' => __('auth.failed'),
            ]);
        }

        return app(LoginResponse::class);
    }
}
