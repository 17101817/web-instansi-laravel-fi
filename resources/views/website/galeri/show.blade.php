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

            @foreach ((array) $galeri->image as $img)
                <div class="col-md-4 col-lg-3">
                    <a href="{{ asset('storage/' . $img) }}" data-lightbox="galeri">
                        <img src="{{ asset('storage/' . $img) }}" class="img-fluid rounded shadow-sm"
                            style="height: 220px; width:100%; object-fit: cover;">
                    </a>
                </div>
            @endforeach

        </div>

        <div class="text-center mt-5">
            <a href="{{ route('galeri.index') }}" class="btn btn-outline-primary">
                <i class="fa fa-arrow-left me-2"></i>
                Kembali ke Galeri
            </a>
        </div>

    </div>
@endsection
