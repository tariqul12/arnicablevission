@extends('layouts.front-end.master')
@section('title', 'packages')
@section('content')


    <!-- ==================== Page-Title (Start) ==================== -->
    <div class="page-title"
        style="background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), 
                      url('{{ asset($title_banner->image) }}');">

        <div class="title">
            <h2>Pricing</h2>
        </div>

        <div class="link">
            <a href="{{ route('home') }}">Home</a>
            <i class="fa-solid fa-angles-right"></i>
            <span class="page">Pricing</span>
        </div>

    </div>
    <!-- ==================== Page-Title (End) ==================== -->



    <!-- ==================== Pricing Plans Area (Start) ==================== -->
    <section class="pricing">

        <!-- Section Heading -->
        <div class="heading">
            <div class="sub"><i class="fa-solid fa-wifi"></i><span>Our Plans</span><i class="fa-solid fa-wifi"></i></div>
            <h2>Our Pricing</h2>
        </div>

        <div class="box-container">
            @foreach ($packages as $package)
                <!-- Basic Package -->
                <div class="plan-item">
                    <img src="{{ asset('/') }}website/assets/images/Pricing/Plan-1.jpg" alt="Basic Package">
                    <!-- Service Image -->
                    <div class="plan-content">
                        <div class="top"></div>
                        <div class="intro">
                            <i class="speed">up to <span>{{ $package->speed }}</span> Mbps</i> <!-- Internet speed -->
                            <h5>{{ $package->title }}</h5> <!-- Service Name -->
                            <h3>{{ $package->sub_title }}</h3> <!-- Plan Type -->

                        </div>
                        <div class="content">
                            {!! $package->description !!}
                            <div class="price-box">
                                <div class="price">TK:{{ $package->price }}</div>
                                <p> month</p>
                            </div>
                            <a href="{{ route('package.single.order', $package->id) }}" class="btn">Get Started</a>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </section>
    <!-- ==================== Pricing Plans Area (End) ==================== -->


@endsection
