@extends('layouts.app')

@section('content')
    <!-- Carousel Start -->
    <div class="container-fluid p-0 pb-5">
        <div class="owl-carousel header-carousel position-relative">

            @forelse ($slides as $slide)
                <div class="owl-carousel-item position-relative">
                    <img style="height: 800px" src="{{ asset('storage/' . $slide->gambar) }}" alt="{{ $slide->judul }}"
                        class="img-fluid w-100 hero-slide-img">

                    <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center"
                        style="background: rgba(53, 53, 53, .7);">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-12 col-lg-8 text-center px-3">
                                    <p class="text-white text-uppercase mb-2 animated slideInDown">
                                        Selamat Datang di Website
                                        {{ $SettingWeb->name ?? config('app.name') }}
                                    </p>

                                    <p class="text-white fw-bold animated slideInDown">
                                        {{ $slide->judul }}
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @empty
                {{-- Fallback kalau tidak ada slide --}}
                <div class="owl-carousel-item position-relative">
                    <img class="img-fluid" src="{{ asset('template/img/carousel-1.jpg') }}" alt="Default">
                </div>
            @endforelse

        </div>
    </div>
    <!-- Carousel End -->


    <!-- Feature Start -->
    <div class="container-xxl py-5">
        <div class="container">

            <div class="text-center mb-5">
                <h1 class="display-6 fw-bold">Layanan & Informasi</h1>
                <p class="text-muted">
                    Informasi dan layanan utama Dinas Sosial Kabupaten Penajam Paser Utara
                </p>
            </div>

            <div class="row g-4">

                <!-- Alamat Dinas -->
                <div class="col-md-6 col-lg-3 wow fadeInUp" data-wow-delay="0.1s">
                    <a href="{{ url('/kontak') }}" class="feature-card text-decoration-none">
                        <div class="feature-icon">
                            <i class="fa fa-map-marker-alt"></i>
                        </div>
                        <h5>Alamat Dinas</h5>
                        <p>Lokasi dan informasi kantor Dinas Sosial</p>
                    </a>
                </div>

                <!-- Profil Dinas -->
                <div class="col-md-6 col-lg-3 wow fadeInUp" data-wow-delay="0.3s">
                    <a href="{{ url('/tentang') }}" class="feature-card text-decoration-none">
                        <div class="feature-icon">
                            <i class="fa fa-building"></i>
                        </div>
                        <h5>Profil Dinas</h5>
                        <p>Visi, misi, dan struktur organisasi</p>
                    </a>
                </div>

                <!-- Data Pegawai -->
                <div class="col-md-6 col-lg-3 wow fadeInUp" data-wow-delay="0.5s">
                    <a href="{{ url('/pegawai-data') }}" class="feature-card text-decoration-none">
                        <div class="feature-icon">
                            <i class="fa fa-users"></i>
                        </div>
                        <h5>Data Pegawai</h5>
                        <p>Informasi pegawai dan aparatur</p>
                    </a>
                </div>

                <!-- Informasi -->
                <div class="col-md-6 col-lg-3 wow fadeInUp" data-wow-delay="0.7s">
                    <a href="{{ url('/informasi') }}" class="feature-card text-decoration-none">
                        <div class="feature-icon">
                            <i class="fa fa-bullhorn"></i>
                        </div>
                        <h5>Informasi</h5>
                        <p>Pengumuman dan informasi terbaru</p>
                    </a>
                </div>


                <!-- CTA PENGADUAN -->
                <div class="row mt-5">
                    <div class="col-12 wow fadeInUp">
                        <div class="pengaduan-cta text-center">
                            <h2 class="mb-3 text-white">
                                <i class="fa fa-comments me-2"></i>
                                Layanan Pengaduan Masyarakat
                            </h2>

                            <p class="mb-4">
                                Sampaikan pengaduan, keluhan, atau masukan Anda terkait pelayanan Dinas Sosial.
                                Kami berkomitmen menindaklanjuti setiap laporan dengan cepat dan transparan.
                            </p>

                            <a href="{{ url('/pengaduan') }}" class="btn btn-lg btn-light px-5">
                                <i class="fa fa-paper-plane me-2"></i>
                                Sampaikan Pengaduan
                            </a>
                        </div>
                    </div>
                </div>
                @if ($SocialMedia->count())
                    <!-- Media Sosial -->
                    <div class="row mt-5">
                        <div class="col-12 text-center wow fadeInUp">

                            <h4 class="fw-bold mb-3">
                                Ikuti Kami di Media Sosial
                            </h4>

                            <p class="text-muted mb-4">
                                Dapatkan informasi dan update terbaru dari Dinas Sosial Kabupaten Penajam Paser Utara
                            </p>

                            <div class="d-flex justify-content-center flex-wrap gap-3">

                                @foreach ($SocialMedia as $item)
                                    <a href="{{ $item->url }}" target="_blank" class="social-btn"
                                        title="{{ $item->name }}">
                                        <i class="{{ $item->icon }}"></i>
                                    </a>
                                @endforeach

                            </div>
                        </div>
                    </div>
                @endif

            </div>
        </div>
    </div>
    <!-- Feature End -->
    <hr>
    <!-- Projects Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="section-title text-center">
                <h1 class="display-5 mb-5">Berita & Kegiatan</h1>
            </div>

            <div class="row mt-n2 wow fadeInUp" data-wow-delay="0.3s">
                <div class="col-12 text-center">
                    <ul class="list-inline mb-5" id="portfolio-flters">
                        <li class="mx-2 active" data-filter="*">Semua</li>

                        @foreach ($blogCategories as $cat)
                            <li class="mx-2" data-filter=".kategori-{{ $cat->id }}">
                                {{ $cat->nama }}
                            </li>
                        @endforeach

                    </ul>
                </div>
            </div>

            <div class="row g-4 portfolio-container  mb-5">

                @forelse ($blogs as $blog)
                    <div
                        class="col-lg-4 col-md-6 portfolio-item
            @foreach ((array) $blog->kategori_id as $kid)
                kategori-{{ $kid }} @endforeach
        ">

                        <div class="card h-100 shadow-sm border-0">

                            {{-- COVER --}}
                            <div class="position-relative">
                                <img src="{{ asset('storage/' . $blog->cover) }}" alt="{{ $blog->name }}"
                                    class="img-fluid w-100" style="height: 230px; object-fit: cover;">

                                {{-- OVERLAY --}}
                                <div class="portfolio-overlay d-flex align-items-center justify-content-center">
                                    <a href="{{ route('blog.show', $blog->slug) }}" class="btn btn-outline-light btn-sm">
                                        <i class="fa fa-eye me-1"></i> Baca
                                    </a>
                                </div>
                            </div>

                            {{-- CONTENT --}}
                            <div class="card-body d-flex flex-column">

                                {{-- KATEGORI --}}
                                <div class="mb-2">
                                    @foreach ((array) $blog->kategori_id as $kid)
                                        <span class="badge bg-primary me-1">
                                            {{ $blogCategories->firstWhere('id', $kid)?->name }}
                                        </span>
                                    @endforeach
                                </div>

                                {{-- JUDUL --}}
                                <h5 class="card-title mb-2">
                                    {{ Str::limit($blog->name, 65) }}
                                </h5>

                                {{-- TANGGAL --}}
                                <div class="d-flex justify-content-between text-muted small mb-2">
                                    <span>
                                        <i class="fa fa-calendar-alt me-1"></i>
                                        {{ $blog->created_at->translatedFormat('d F Y') }}
                                    </span>

                                    <span>
                                        <i class="fa fa-comments me-1"></i>
                                        {{ $blog->comments_count }} Komentar
                                    </span>
                                </div>

                                {{-- PUSH BUTTON KE BAWAH --}}
                                <div class="mt-auto">
                                    <a href="{{ route('blog.show', $blog->slug) }}"
                                        class="btn btn-sm btn-outline-primary">
                                        Selengkapnya
                                    </a>
                                </div>

                            </div>
                        </div>

                    </div>
                @empty
                    <div class="col-12 text-center">
                        <p class="text-muted">Belum ada artikel.</p>
                    </div>
                @endforelse

            </div>

            <div class="col-12 text-center">
                <a href="{{ url('/blog') }}" class="btn btn-lg btn-primary px-5">
                    Lihat Semua Berita & Kegiatan &nbsp;
                    <i class="fa fa-arrow-right me-2"></i>
                </a>
            </div>

        </div>
    </div>
    <!-- Projects End -->


    <!-- Tautan Aplikasi Start -->
    <div class="container-fluid bg-light overflow-hidden my-5 px-lg-0">
        <div class="container px-lg-0">
            <div class="row g-0 mx-lg-0 align-items-center">

                <!-- CONTENT -->
                <div class="col-lg-12 py-5 wow fadeIn" data-wow-delay="0.3s">
                    <div class="p-lg-5 pe-lg-0">

                        <div class="section-title text-start mb-4">
                            <h1 class="display-5 mb-2">Tautan Aplikasi</h1>
                            <p class="text-muted">
                                Akses cepat aplikasi dan layanan digital Dinas Sosial
                            </p>
                        </div>

                        <div class="row g-4">

                            @forelse ($tautans as $tautan)
                                <div class="col-sm-3 wow fadeInUp" data-wow-delay="0.1s">
                                    <a href="{{ $tautan->url }}" target="_blank" class="text-decoration-none">

                                        <div
                                            class="d-flex align-items-center bg-white shadow-sm rounded p-3 h-100 link-card">

                                            <div class="d-flex flex-shrink-0 align-items-center justify-content-center bg-primary text-white rounded"
                                                style="width: 50px; height: 50px;">
                                                <i class="fa fa-external-link-alt"></i>
                                            </div>

                                            <div class="ms-3">
                                                <h6 class="mb-1 text-dark">
                                                    {{ $tautan->name }}
                                                </h6>
                                                <small class="text-muted">
                                                    Klik untuk membuka aplikasi
                                                </small>
                                            </div>
                                        </div>

                                    </a>
                                </div>
                            @empty
                                <div class="col-12">
                                    <div class="alert alert-warning">
                                        Belum ada tautan aplikasi yang tersedia.
                                    </div>
                                </div>
                            @endforelse

                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- Tautan Aplikasi End -->

    <!-- Galeri Start -->
    <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container">

            <div class="section-title text-center mb-5">
                <h1 class="display-5 mb-2">Galeri Kegiatan</h1>
                <p class="text-muted">
                    Dokumentasi kegiatan dan aktivitas Dinas Sosial
                </p>
            </div>

            <div class="owl-carousel galeri-carousel">

                @foreach ($galeris as $galeri)
                    @if (is_array($galeri->image))
                        @foreach ($galeri->image as $img)
                            <div class="galeri-item text-center">
                                <div class="galeri-img-wrapper">
                                    <img src="{{ asset('storage/' . $img) }}" alt="{{ $galeri->name }}"
                                        class="img-fluid rounded">
                                </div>

                                <h6 class="mt-3 fw-semibold">
                                    {{ $galeri->name }}
                                </h6>
                            </div>
                        @endforeach
                    @endif
                @endforeach

            </div>

            <div class="col-12 text-center">
                <a href="{{ url('/galeri') }}" class="btn btn-lg btn-primary px-5">
                    Lihat Selengkapnya &nbsp;
                    <i class="fa fa-arrow-right me-2"></i>
                </a>
            </div>
        </div>
    </div>
    <!-- Galeri End -->


@endsection
