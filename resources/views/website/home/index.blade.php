@extends('layouts.front-end.master')
@section('title', 'Internet, Cable TV And Broadband Provider Website')

@section('content')

    <!-- ==================== Home Slider Area (Start) ==================== -->
    <section class="home">

        <!-- Home Slider -->
        <div class="swiper-container home-slider">
            <div class="swiper-wrapper">

                @foreach ($sliders as $slider)
                    <!-- Home Slide-1 -->
                    <div class="swiper-slide home-item">
                        <img src="{{ asset($slider->image) }}" alt="Ultra-Fast Internet">
                        <!-- Slide Image -->
                        <div class="content">
                            <div class="text">
                                <h5><i class="fa-solid fa-wifi"></i> {{ $slider->title }} <i class="fa-solid fa-wifi"></i>
                                </h5> <!-- Slide Subheading -->
                                <h3>{{ substr($slider->description, 0, 30) . '...' }}</h3> <!-- Slide Heading -->

                                <a href="{{ route('service-detail', $slider->service_id) }}" class="btn">Get Started</a>
                                <!-- Pricing Page Button -->
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>

            <!-- Home Slider Pagination -->
            <div class="swiper-pagination swiper-pagination1"></div>

            <!-- Home Slider Navigation arrows -->
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>

        </div>

    </section>
    <!-- ====================  Home Slider Area (End) ==================== -->



    <!-- ==================== Features Area (Start) =================== -->
    <section class="features home-features">

        <div class="box-container">

            @foreach ($categories as $category)
                <!-- Feature 1 - High-Speed Internet -->
                <div class="feature-item">
                    <div class="intro">
                        <i class="fas fa-wifi"></i>
                        <h3>{{ $category->name }}</h3>
                    </div>
                    <p>{{ $category->description }}</p>
                </div>
            @endforeach

        </div>

    </section>
    <!-- ==================== Features Area (End) ==================== -->



    <!-- ==================== About Area (Start) ==================== -->
    <section class="about">

        <!-- About Image -->
        <div class="image">
            <div class="sub-image one">
                <img src="{{ asset($about->image1) }}" alt="About-Image-1">
                <div class="experience">
                    <i class="fa-solid fa-globe"></i> <span>30+ years</span> quality experience
                </div>
            </div>
            <div class="sub-image two">
                <img src="{{ asset($about->image2) }}" alt="About-Image-2">
            </div>
        </div>

        <!-- Introduction Content -->
        <div class="content">

            <div class="heading">
                <div class="sub"><span>About Us</span><i class="fa-solid fa-wifi"></i></div> <!-- Sub Heading -->
                <h2>{{ $about->title }}</h2> <!-- Main Heading -->
            </div>

            <!-- Description -->
            <p>{!! $about->description !!}</p>

            <a href="{{ route('contact') }}" class="btn">Get Started</a> <!-- Getting Started Page Button -->

        </div>

    </section>
    <!-- ==================== About Area (End) ==================== -->

    <!-- ==================== Count Area (Start) ==================== -->
    <div class="counting"
        style="background-image: linear-gradient(rgb(0, 0, 0), rgb(0, 0, 0)), 
                      url('{{ asset($title_banner->image) }}');">

        <!-- Statistic Box 1: Connections Established -->
        <div class="box">
            <div class="info">
                <i class="fas fa-award"></i> <!-- Connection icon -->
                <div class="content">
                    <h1 class="count" data-count="{{ $about->awards }}">{{ $about->awards }}+</h1>
                    <!-- Count of connections established -->
                    <h3>Certificate & Awards Winner</h3> <!-- Statistic description -->
                </div>
            </div>
        </div>

        <!-- Statistic Box 2: Happy Customers -->
        <div class="box">
            <div class="info">
                <i class="fa-solid fa-smile"></i> <!-- Happy customer icon -->
                <div class="content">
                    <h1 class="count" data-count="{{ $about->happy_customer }}">{{ $about->happy_customer }}+</h1>
                    <!-- Count of happy customers -->
                    <h3>Happy Customers</h3> <!-- Statistic description -->
                </div>
            </div>
        </div>

        <!-- Statistic Box 3: Years in Service -->
        <div class="box">
            <div class="info">
                <i class="fa-solid fa-calendar-alt"></i> <!-- Calendar icon -->
                <div class="content">
                    <h1 class="count" data-count="{{ $about->employee }}">{{ $about->employee }}+</h1>
                    <!-- Count of years in service -->
                    <h3>Experienced Employees</h3> <!-- Statistic description -->
                </div>
            </div>
        </div>

        <!-- Statistic Box 4: Service Areas -->
        <div class="box">
            <div class="info">
                <i class="fa-solid fa-map"></i> <!-- Map icon -->
                <div class="content">
                    <h1 class="count" data-count="{{ $about->network }}">{{ $about->network }}+</h1>
                    <!-- Count of service areas -->
                    <h3>Network Coverage Areas</h3> <!-- Statistic description -->
                </div>
            </div>
        </div>

    </div>
    <!-- ==================== Count Area (End) ==================== -->

    <!-- ==================== Service Slider Area (Start) ==================== -->
    <section class="services">

        <!-- Section Heading -->
        <div class="heading">
            <div class="sub"><i class="fa-solid fa-wifi"></i><span>What we offer</span><i class="fa-solid fa-wifi"></i>
            </div>
            <h2>Our Services</h2>
        </div>

        <!-- Service Slider -->
        <div class="swiper-container section-slider">
            <div class="swiper-wrapper">

                @foreach ($services as $service)
                    <!-- Service 1: Internet Plans -->
                    <div class="swiper-slide service-item">
                        <img src="{{ asset($service->image) }}" alt="Internet Plans">
                        <!-- Service Image -->
                        <div class="content">
                            <i class="fa-solid fa-wifi"></i> <!-- Internet Icon -->
                            <a href="{{ route('service-detail', $service->id) }}">
                                <h3>{{ $service->title }}</h3>
                            </a> <!-- Service Title -->
                            <p>{{ $service->short_description }}</p>
                            <!-- Service Description -->
                            <a href="{{ route('service-detail', $service->id) }}" class="btn">Read More</a>
                        </div>
                    </div>
                @endforeach

            </div>
        </div>

    </section>
    <!-- ==================== Service Slider Area (End) ==================== -->

    <!-- ==================== Banner Area (Start) ==================== -->
    <section class="banner"
        style="background-image: linear-gradient(rgba(0, 0, 0, 0.514), rgba(0, 0, 0, 0.514)), 
                      url('{{ asset($home_banner->image) }}');">
        <div class="content">

            <!-- Heading Section -->
            <div class="heading">
                <div class="sub"><span>Discover Our Exciting Offers</span><i class="fa-solid fa-wifi"></i></div>
            </div>

            <!-- Main Heading -->
            <h2>Stay Connected with the Best Internet and Cable Services</h2>

            <!-- Call-to-Action Button -->
            <a href="{{ route('packeages') }}" class="btn">Explore Packages</a>

        </div>
    </section>
    <!-- ==================== Banner Area (End) ==================== -->

    <!-- ==================== Pricing Plans Area (Start) ==================== -->
    <section class="pricing">

        <!-- Section Heading -->
        <div class="heading">
            <div class="sub"><i class="fa-solid fa-wifi"></i><span>Our Plans</span><i class="fa-solid fa-wifi"></i>
            </div>
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
                            <div class="icon-container">
                                <i class="fa-solid fa-wifi"></i>
                            </div>
                        </div>
                        <div class="content">
                            {!! $package->description !!}
                            <div class="price-box">
                                <div class="price">${{ $package->price }}</div>
                                <p>/ month</p>
                            </div>
                            <a href="{{ route('package.single.order', $package->id) }}" class="btn">Get Started</a>

                        </div>
                    </div>
                </div>
            @endforeach

        </div>
    </section>
    <!-- ==================== Pricing Plans Area (End) ==================== -->



    <!-- ==================== Testimonials Area (Start) ==================== -->
    <section class="testimonial-bg linear-bg"
        style="background-image: linear-gradient(rgba(0, 0, 0, 0.514), rgba(0, 0, 0, 0.514)), 
                      url('{{ asset($home_banner->image) }}');">

        <!-- Section Heading -->
        <div class="heading">
            <div class="sub"><i class="fa-solid fa-wifi"></i><span>What Attendees Say</span><i
                    class="fa-solid fa-wifi"></i></div> <!-- Sub Heading -->
            <h2>Attendee Testimonials</h2>
        </div>

        <!-- Testimonial Slider -->
        <div class="swiper-container testimonial-slider">

            <div class="swiper-wrapper">
                @foreach ($clients as $client)
                    <!-- Testimonial Slide 1 -->
                    <div class="swiper-slide testi-item">
                        <div class="content">
                            <div class="rating">
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                            </div>
                            <p>{{ $client->message }}</p>
                        </div>
                        <div class="bottom">
                            <div class="intro">
                                <img src="{{ asset($client->image) }}" alt="Alice Cooper">
                                <div class="text">
                                    <h4>{{ $client->name }}</h4>
                                    {{-- <h6>Remote Worker</h6> --}}
                                </div>
                            </div>
                            <i class="fas fa-quote-right"></i>
                        </div>
                    </div>
                @endforeach
            </div>

            <!-- Testimonial Slider Pagination -->
            <div class="swiper-pagination swiper-pagination3"></div>

        </div>

    </section>
    <!-- ==================== Testimonials Area (End) ==================== -->



    <!-- ==================== Team Area (Start) ==================== -->
    <section class="team">

        <!-- Section Heading -->
        <div class="heading">
            <div class="sub"><i class="fa-solid fa-wifi"></i><span>Meet Our Team</span><i
                    class="fa-solid fa-wifi"></i></div> <!-- Sub Heading -->
            <h2>Our Experts</h2>
        </div>

        <div class="box-container">
            @foreach ($teams as $team)
                <!-- Expert 1 -->
                <div class="team-item">
                    <img src="{{ asset($team->image) }}" alt="Network Specialist">
                    <!-- Expert Image -->
                    <div class="content">
                        <div class="icon-container">
                            <a href="#"><i class="fab fa-facebook-f"></i></a> <!-- Facebook Link -->
                            <a href="#"><i class="fab fa-linkedin-in"></i></a> <!-- LinkedIn Link -->
                            <a href="#"><i class="fa-brands fa-x-twitter"></i></a> <!-- Twitter Link -->
                            <a href="#"><i class="fab fa-instagram"></i></a> <!-- Instagram Link -->
                        </div>
                        <div class="text">
                            <a href="#">
                                <h3>{{ $team->name }}</h3>
                            </a> <!-- Expert Name -->
                            <p>{{ $team->designation }}</p> <!-- Expert Designation -->
                        </div>
                    </div>
                </div>
            @endforeach
            {{-- <!-- Expert 2 -->
            <div class="team-item">
                <img src="{{ asset('/') }}website/assets/images/Team/Team-2.jpg" alt="Technical Lead">
                <!-- Expert Image -->
                <div class="content">
                    <div class="icon-container">
                        <a href="#"><i class="fab fa-facebook-f"></i></a> <!-- Facebook Link -->
                        <a href="#"><i class="fab fa-linkedin-in"></i></a> <!-- LinkedIn Link -->
                        <a href="#"><i class="fa-brands fa-x-twitter"></i></a> <!-- Twitter Link -->
                        <a href="#"><i class="fab fa-instagram"></i></a> <!-- Instagram Link -->
                    </div>
                    <div class="text">
                        <a href="pages/About/Team-Single.html">
                            <h3>Michael Smith</h3>
                        </a> <!-- Expert Name -->
                        <p>Technical Lead</p> <!-- Expert Designation -->
                    </div>
                </div>
            </div>

            <!-- Expert 3 -->
            <div class="team-item">
                <img src="{{ asset('/') }}website/assets/images/Team/Team-3.jpg" alt="Sales Manager">
                <!-- Expert Image -->
                <div class="content">
                    <div class="icon-container">
                        <a href="#"><i class="fab fa-facebook-f"></i></a> <!-- Facebook Link -->
                        <a href="#"><i class="fab fa-linkedin-in"></i></a> <!-- LinkedIn Link -->
                        <a href="#"><i class="fa-brands fa-x-twitter"></i></a> <!-- Twitter Link -->
                        <a href="#"><i class="fab fa-instagram"></i></a> <!-- Instagram Link -->
                    </div>
                    <div class="text">
                        <a href="pages/About/Team-Single.html">
                            <h3>Sarah Lee</h3>
                        </a> <!-- Expert Name -->
                        <p>Sales Manager</p> <!-- Expert Designation -->
                    </div>
                </div>
            </div>

            <!-- Expert 4 -->
            <div class="team-item">
                <img src="{{ asset('/') }}website/assets/images/Team/Team-4.jpg" alt="Support Head">
                <!-- Expert Image -->
                <div class="content">
                    <div class="icon-container">
                        <a href="#"><i class="fab fa-facebook-f"></i></a> <!-- Facebook Link -->
                        <a href="#"><i class="fab fa-linkedin-in"></i></a> <!-- LinkedIn Link -->
                        <a href="#"><i class="fa-brands fa-x-twitter"></i></a> <!-- Twitter Link -->
                        <a href="#"><i class="fab fa-instagram"></i></a> <!-- Instagram Link -->
                    </div>
                    <div class="text">
                        <a href="pages/About/Team-Single.html">
                            <h3>John Williams</h3>
                        </a> <!-- Expert Name -->
                        <p>Support Head</p> <!-- Expert Designation -->
                    </div>
                </div>
            </div> --}}

        </div>

    </section>
    <!-- ==================== Team Area (End) ==================== -->



    <!-- ==================== Order Form Area (Start) ==================== -->
    <section class="custom-form order-form linear-bg">
        <div class="box-container"
            style="background-image: linear-gradient(rgba(0, 0, 0, 0.514), rgba(0, 0, 0, 0.514)), 
                      url('{{ asset($order_banner->image) }}');">

            <div class="content">
                <p>{{ Session('message') }}</p>

                <form method="post" class="dark-form" id="contact-form" action="{{ route('package.order') }}">
                    @csrf
                    <!-- Form Heading -->
                    <div class="heading">
                        <div class="sub"><span>Order Your Package</span><i class="fa-solid fa-wifi"></i></div>
                        <!-- Sub Heading -->
                        <h2>Request an Order</h2>
                    </div>

                    <div class="input-box">

                        <!-- Name Input Field -->
                        <div class="input-field">
                            <label for="name" class="fas fa-user"></label>
                            <input type="text" name="name" class="box" id="name" placeholder="Name"
                                required>
                        </div>

                        <!-- Email Input Field -->
                        <div class="input-field">
                            <label for="email" class="fa-solid fa-envelope"></label>
                            <input type="email" name="email" class="box" id="email" placeholder="Email"
                                required>
                        </div>

                    </div>

                    <div class="input-box">

                        <!-- Phone Number Input Field -->
                        <div class="input-field">
                            <label for="number" class="fas fa-phone"></label>
                            <input type="text" name="mobile" class="box" id="number"
                                placeholder="Phone Number" required>
                        </div>

                        <!-- Subject Input Field -->
                        <div class="input-field">
                            <label for="subject" class="fas fa-phone"></label>
                            <select name="package_id" class="box package" id="package" required>
                                <option value="">Choose Your Package</option>
                                @foreach ($packages as $package)
                                    <option value="{{ $package->id }}">
                                        {{ $package->price . ' TK' . '-' . $package->speed . 'Mbps' }}
                                    </option>
                                @endforeach
                            </select>
                        </div>

                    </div>

                    <div class="input-box">
                        <div class="input-field text-area">
                            <label for="comment" class="fas fa-address"></label>
                            <textarea cols="30" rows="10" name="address" class="box" id="address" placeholder="Address"
                                required></textarea>
                        </div>
                    </div>
                    <!-- Comment/Message Textarea -->
                    <div class="input-box">
                        <div class="input-field text-area">
                            <label for="comment" class="fas fa-comment"></label>
                            <textarea cols="30" rows="10" name="message" class="box" id="comment" placeholder="Message"
                                required></textarea>
                        </div>
                    </div>

                    <!-- Submit Button -->
                    <button type="submit" class="btn" id="submit">Order</button>

                    <!-- Alert Message -->
                    <span class="alert" id="msg"></span>

                </form>

            </div>

        </div>

    </section>
    <!-- ==================== Order Form Area (End) ==================== -->

    <!-- ==================== Partners Area (Start) ==================== -->
    <section class="home-partners partners">

        <!-- Partner Slider Container -->
        <div class="swiper-container partner-slider">

            <!-- Partners Logo -->
            <div class="swiper-wrapper">
                @foreach ($brands as $brand)
                    <div class="swiper-slide partner-item"><a href="#"><img src="{{ asset($brand->image) }}"
                                alt="Partner-Logo"></a>
                    </div>
                @endforeach
            </div>

        </div>

    </section>
    <!-- ==================== Partners Area (End) ==================== -->

@endsection

@push('script')
@endpush
