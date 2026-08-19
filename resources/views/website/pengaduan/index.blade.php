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
        <div class="row justify-content-center">
            <div class="col-lg-8">

                @if (session('success'))
                    <div class="alert alert-success alert-dismissible fade show">
                        <i class="fa fa-check-circle me-2"></i>
                        {{ session('success') }}
                        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                    </div>
                @endif

                <div class="card shadow border-0">
                    <div class="card-body p-4 p-lg-5">

                        <h4 class="mb-4 text-center fw-bold">
                            Form Pengaduan
                        </h4>

                        <form action="{{ route('pengaduan.store') }}" method="POST">
                            @csrf

                            <div class="mb-3">
                                <label class="form-label fw-semibold">Kategori Pengaduan</label>
                                <select name="kategori_pengaduan_id"
                                    class="form-select @error('kategori_pengaduan_id') is-invalid @enderror" required>
                                    <option value="">-- Pilih Kategori --</option>
                                    @foreach ($kategoriPengaduan as $kategori)
                                        <option value="{{ $kategori->id }}" @selected(old('kategori_pengaduan_id') == $kategori->id)>
                                            {{ $kategori->name }}
                                        </option>
                                    @endforeach
                                </select>
                                @error('kategori_pengaduan_id')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>

                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label class="form-label fw-semibold">Nama Lengkap</label>
                                    <input type="text" name="name" required
                                        class="form-control @error('name') is-invalid @enderror"
                                        value="{{ old('name') }}">
                                    @error('name')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label fw-semibold">No. HP</label>
                                    <input type="text" name="no_hp" required
                                        class="form-control @error('no_hp') is-invalid @enderror"
                                        value="{{ old('no_hp') }}">
                                    @error('no_hp')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>

                            <div class="mb-3">
                                <label class="form-label fw-semibold">Email</label>
                                <input type="email" name="email" required
                                    class="form-control @error('email') is-invalid @enderror" value="{{ old('email') }}">
                                @error('email')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>

                            <div class="mb-3">
                                <label class="form-label fw-semibold">Subjek Pengaduan</label>
                                <input type="text" name="subjek" required
                                    class="form-control @error('subjek') is-invalid @enderror" value="{{ old('subjek') }}">
                                @error('subjek')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>

                            <div class="mb-4">
                                <label class="form-label fw-semibold">Detail Pengaduan</label>
                                <textarea required name="detail_pengaduan" rows="5"
                                    class="form-control @error('detail_pengaduan') is-invalid @enderror">{{ old('detail_pengaduan') }}</textarea>
                                @error('detail_pengaduan')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="mb-4">
                                <label class="form-label fw-semibold">Pastikan Anda Bukan Robot</label>

                                <div class="d-flex align-items-center gap-3 mb-2">
                                    <img id="captcha-img" src="{{ $captcha }}" alt="captcha">

                                    <button type="button" class="btn btn-sm btn-outline-secondary"
                                        onclick="refreshCaptcha()">
                                        <i class="fa fa-rotate"></i>
                                    </button>
                                </div>


                                <input type="text" name="captcha" required
                                    class="form-control @error('captcha') is-invalid @enderror"
                                    placeholder="Masukkan kode di atas">

                                @error('captcha')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>

                            <div class="d-grid">
                                <button class="btn btn-primary btn-lg">
                                    <i class="fa fa-paper-plane me-2"></i>
                                    Kirim Pengaduan
                                </button>
                            </div>

                        </form>

                    </div>
                </div>

            </div>
        </div>
    </div>
@endsection

@push('scripts')
    <script>
        function refreshCaptcha() {
            fetch("{{ route('pengaduan.captcha') }}")
                .then(res => res.json())
                .then(data => {
                    document.getElementById('captcha-img').src = data.captcha;
                });
        }
    </script>
@endpush
