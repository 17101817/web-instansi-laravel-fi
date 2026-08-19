@extends('layouts.app')

@section('content')
    <!-- Page Header Start -->
    @php
        $headerImage = $pageHeaderImage ? asset('storage/' . $pageHeaderImage) : asset('template/img/carousel-1.jpg');
    @endphp

    <div class="container-fluid page-header-bg py-5 mb-5" style="--page-header-bg: url('{{ $headerImage }}');">

        <div class="container py-5">
            <h1 class="display-3 text-white mb-3 animated slideInDown">{{ $title }}</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a class="text-white" href="{{ '/' }}">Home</a></li>
                    <li class="breadcrumb-item"><a class="text-white" href="#">{{ $title }}</a></li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->

    <div class="container py-5">

        <div class="row g-4">

            @forelse ($galeris as $galeri)
                @foreach ((array) $galeri->image as $img)
                    <div class="col-md-4 col-lg-3">
                        <div class="card h-100 shadow-sm border-0 galeri-card">

                            <a href="{{ route('galeri.show', $galeri->id) }}">
                                <img src="{{ asset('storage/' . $img) }}" class="card-img-top"
                                    style="height: 220px; object-fit: cover;">
                            </a>

                            <div class="card-body text-center">
                                <h6 class="mb-0">
                                    {{ $galeri->name }}
                                </h6>
                            </div>

                        </div>
                    </div>
                @endforeach
            @empty
                <div class="col-12 text-center">
                    <p class="text-muted">Belum ada galeri.</p>
                </div>
            @endforelse

        </div>

        {{-- PAGINATION --}}
        <div class="mt-4">
            @if ($galeris instanceof \Illuminate\Pagination\AbstractPaginator)
                <div class="mt-5 d-flex justify-content-center">
                    {{ $galeris->links() }}
                </div>
            @endif
        </div>

    </div>
@endsection
