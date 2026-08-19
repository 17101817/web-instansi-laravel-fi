@extends('layouts.app')

@section('content')
    <!-- Page Header Start -->
    @php
        $headerImage = $pageHeaderImage ? asset('storage/' . $pageHeaderImage) : asset('template/img/carousel-1.jpg');
    @endphp

    <div class="container-fluid page-header-bg py-5 mb-5" style="--page-header-bg: url('{{ $headerImage }}');">
        <div class="container py-5 text-center">
            <h1 class="display-4 text-white mb-3 animated slideInDown">
                {{ $title }}
            </h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb justify-content-center">
                    <li class="breadcrumb-item">
                        <a class="text-white" href="{{ url('/') }}">Home</a>
                    </li>
                    <li class="breadcrumb-item text-white active">
                        {{ $title }}
                    </li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->

    <div class="container py-5">

        <!-- Judul Halaman -->
        <div class="text-center mb-5">
            <h2 class="fw-bold">
                {{ $tentang->name ?? $title }}
            </h2>
            <p class="text-muted">
                Informasi resmi dan profil instansi
            </p>
        </div>

        <!-- Cover -->
        @if (!empty($tentang->cover))
            <div class="text-center mb-5 wow fadeInUp">
                <img src="{{ asset('storage/' . $tentang->cover) }}" class="img-fluid rounded "
                    style="max-height: 420px; object-fit: cover;">
            </div>
        @endif

        <div class="row justify-content-center">
            <div class="col-lg-10">

                <!-- Konten -->
                <div class="content-box mb-5 wow fadeInUp">
                    {!! $tentang->description !!}
                </div>

                <!-- Legalitas -->
                @if (!empty($tentang->legalitas))
                    <div class="legal-box wow fadeInUp">
                        <h5 class="mb-3">
                            <i class="fa fa-file-alt me-2 text-primary"></i>
                            Legalitas
                        </h5>

                        <a href="{{ asset('storage/' . $tentang->legalitas) }}" class="btn btn-primary" target="_blank"
                            download>
                            <i class="fa fa-download me-2"></i>
                            Unduh Dokumen Legalitas
                        </a>
                    </div>
                @endif


            </div>
        </div>

    </div>
@endsection
