<?php

namespace App\Filament\Widgets;

use App\Models\WebVisit;
use Filament\Widgets\StatsOverviewWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class WebVisitStats extends StatsOverviewWidget
{
    protected function getStats(): array
    {
        return [
            //
            Stat::make('Total Visits', WebVisit::count()),
            Stat::make('Today', WebVisit::whereDate('created_at', today())->count()),
            Stat::make('This Month', WebVisit::whereMonth('created_at', now()->month)->count()),
        ];
    }
}
