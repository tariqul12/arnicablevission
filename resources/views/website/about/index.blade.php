@extends('layouts.front-end.master')
@section('title', 'About page')
@section('content')


    <!-- ==================== Page-Title (Start) ==================== -->
    <div class="page-title"
        style="background-image: linear-gradient(rgba(0, 0, 0, 0.521), rgba(0, 0, 0, 0.5)), 
                      url('{{ asset($title_banner->image) }}');">

        <div class="title">
            <h2>about us</h2>
        </div>

        <div class="link">
            <a href="{{ route('home') }}">Home</a>
            <i class="fa-solid fa-angles-right"></i>
            <span class="page">about us</span>
        </div>

    </div>
    <!-- ==================== Page-Title Area (End) ==================== -->



    <!-- ==================== About-Us Area (Start) ==================== -->
    <section class="about-us">

        <!-- ========== About Area (Start) ========== -->
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

                <a href="{{ route('packeages') }}" class="btn">Get Started</a> <!-- Getting Started Page Button -->

            </div>

        </section>
        <!-- ========== About Area (End) ========== -->

        <!-- ========== Count Area (Start) ========== -->
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
        <!-- ========== Count Area (End) ========== -->

        <!-- ========== Services Slider Area (Start) ========== -->
        <section class="services">

            <!-- Section Heading -->
            <div class="heading">
                <div class="sub"><i class="fa-solid fa-wifi"></i><span>What we offer</span><i
                        class="fa-solid fa-wifi"></i></div>
                <h2>Our Services</h2>
            </div>

            <!-- Service Slider -->
            <div class="swiper-container section-slider">
                <div class="swiper-wrapper">
                    @foreach ($services as $service)
                        <!-- Service 1: Internet Plans -->
                        <div class="swiper-slide service-item">
                            <img src="{{ asset($service->image) }}" alt="Internet Plans">
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
        <!-- ========== Services Slider Area (End) ========== -->
        {{-- 
        <!-- ========== Why Choose Us Area (Start) ========== -->
        <section class="custom-form whyUs linear-bg">

            <div class="box-container">

                <!-- Main Content Area -->
                <div class="content">
                    <div class="text">

                        <!-- Section Heading -->
                        <div class="heading">
                            <div class="sub"><span>Why Choose Us</span><i class="fa-solid fa-wifi"></i></div>
                            <!-- Sub Heading -->
                            <h2>Your Trusted Partner for Connectivity</h2> <!-- Main Heading -->
                        </div>

                        <!-- Main Description -->
                        <p>Our commitment to quality sets us apart in delivering reliable connectivity for your home and
                            business.</p>

                        <!-- Why Choose Us Points -->
                        <ul class="whyUs-points">
                            <li>
                                <i class="fas fa-bolt"></i> <!-- Speed icon -->
                                <div class="text">
                                    <h5>High-Speed Internet</h5>
                                    <p>Enjoy blazing-fast internet speeds that keep you connected for working from home.</p>
                                </div>
                            </li>
                            <li>
                                <i class="fas fa-tv"></i> <!-- TV icon -->
                                <div class="text">
                                    <h5>Diverse Channel Selection</h5>
                                    <p>Access a wide range of cable TV channels, including premium content and local
                                        programming.</p>
                                </div>
                            </li>
                            <li>
                                <i class="fas fa-headset"></i> <!-- Support icon -->
                                <div class="text">
                                    <h5>24/7 Customer Support</h5>
                                    <p>Get round-the-clock assistance from our dedicated support team.</p>
                                </div>
                            </li>
                        </ul>

                    </div>
                </div>

            </div>

        </section>
        <!-- ========== Why Choose Us Area (End) ========== -->

        <!-- ========== Process Slider Area (Start) ========== -->
        <section class="process">

            <!-- Section Heading -->
            <div class="heading">
                <div class="sub"><i class="fa-solid fa-wifi"></i><span>How We Work</span><i class="fa-solid fa-wifi"></i>
                </div>
                <h2>Our Process</h2>
            </div>

            <!-- Process Slider -->
            <div class="swiper-container section-slider">
                <div class="swiper-wrapper">

                    <!-- Step 1: Service Consultation -->
                    <div class="swiper-slide process-item">
                        <img src="{{ asset('/') }}website/assets/images/Process/Step-1.jpg" alt="Service Consultation">
                        <!-- Service Image -->
                        <div class="content">
                            <div class="intro">
                                <i class="fa-solid fa-comments"></i> <!-- Consultation Icon -->
                                <h6>01</h6>
                            </div>
                            <h3>Service Consultation</h3> <!-- Step Title -->
                            <p>We start with a personalized consultation to understand your connectivity needs and recommend
                                the best packages.</p> <!-- Step Description -->
                        </div>
                    </div>

                    <!-- Step 2: Plan Selection -->
                    <div class="swiper-slide process-item">
                        <img src="{{ asset('/') }}website/assets/images/Process/Step-2.jpg" alt="Plan Selection">
                        <!-- Service Image -->
                        <div class="content">
                            <div class="intro">
                                <i class="fa-solid fa-clipboard-list"></i> <!-- Plan Selection Icon -->
                                <h6>02</h6>
                            </div>
                            <h3>Plan Selection</h3> <!-- Step Title -->
                            <p>Choose from a variety of high-speed internet, cable, and phone packages that suit your
                                household or business needs.</p> <!-- Step Description -->
                        </div>
                    </div>

                    <!-- Step 3: Equipment Installation -->
                    <div class="swiper-slide process-item">
                        <img src="{{ asset('/') }}website/assets/images/Process/Step-3.jpg"
                            alt="Equipment Installation"> <!-- Service Image -->
                        <div class="content">
                            <div class="intro">
                                <i class="fa-solid fa-tools"></i> <!-- Installation Icon -->
                                <h6>03</h6>
                            </div>
                            <h3>Equipment Installation</h3> <!-- Step Title -->
                            <p>Our team will set up your modem, router, and any additional equipment to ensure a seamless
                                connection.</p> <!-- Step Description -->
                        </div>
                    </div>

                    <!-- Step 4: Connection Activation -->
                    <div class="swiper-slide process-item">
                        <img src="{{ asset('/') }}website/assets/images/Process/Step-4.jpg"
                            alt="Connection Activation"> <!-- Service Image -->
                        <div class="content">
                            <div class="intro">
                                <i class="fa-solid fa-bolt"></i> <!-- Activation Icon -->
                                <h6>04</h6>
                            </div>
                            <h3>Connection Activation</h3> <!-- Step Title -->
                            <p>We activate your services quickly so you can start enjoying high-speed internet,
                                crystal-clear TV, and reliable phone service right away.</p> <!-- Step Description -->
                        </div>
                    </div>

                    <!-- Step 5: Quality Assurance -->
                    <div class="swiper-slide process-item">
                        <img src="{{ asset('/') }}website/assets/images/Process/Step-5.jpg" alt="Quality Assurance">
                        <!-- Service Image -->
                        <div class="content">
                            <div class="intro">
                                <i class="fa-solid fa-shield-alt"></i> <!-- Quality Assurance Icon -->
                                <h6>05</h6>
                            </div>
                            <h3>Quality Assurance</h3> <!-- Step Title -->
                            <p>Our technicians perform quality checks to ensure that you receive the best possible service
                                and performance.</p> <!-- Step Description -->
                        </div>
                    </div>

                    <!-- Step 6: Ongoing Support -->
                    <div class="swiper-slide process-item">
                        <img src="{{ asset('/') }}website/assets/images/Process/Step-6.jpg" alt="Ongoing Support">
                        <!-- Service Image -->
                        <div class="content">
                            <div class="intro">
                                <i class="fa-solid fa-headset"></i> <!-- Support Icon -->
                                <h6>06</h6>
                            </div>
                            <h3>Ongoing Support</h3> <!-- Step Title -->
                            <p>Our customer support team is always available to assist with any questions or technical
                                support you may need.</p> <!-- Step Description -->
                        </div>
                    </div>

                </div>
            </div>

        </section>
        <!-- ========== Process Slider Area (End) ========== -->

        <!-- ========== Banner Area (Start) ========== -->
        <section class="banner">
            <div class="content">

                <!-- Heading Section -->
                <div class="heading">
                    <div class="sub"><span>Discover Our Exciting Offers</span><i class="fa-solid fa-wifi"></i></div>
                </div>

                <!-- Main Heading -->
                <h2>Stay Connected with the Best Internet and Cable Services</h2>

                <!-- Call-to-Action Button -->
                <a href="../Pages/Pricing.html" class="btn">Explore Packages</a>

            </div>
        </section>
        <!-- ========== Banner Area (End) ========== -->

        <!-- ========== Team Area (Start) ========== -->
        <section class="team">

            <!-- Section Heading -->
            <div class="heading">
                <div class="sub"><i class="fa-solid fa-wifi"></i><span>Meet Our Team</span><i
                        class="fa-solid fa-wifi"></i></div> <!-- Sub Heading -->
                <h2>Our Experts</h2>
            </div>

            <div class="box-container">

                <!-- Expert 1 -->
                <div class="team-item">
                    <img src="{{ asset('/') }}website/assets/images/Team/Team-1.jpg" alt="Network Specialist">
                    <!-- Expert Image -->
                    <div class="content">
                        <div class="icon-container">
                            <a href="#"><i class="fab fa-facebook-f"></i></a> <!-- Facebook Link -->
                            <a href="#"><i class="fab fa-linkedin-in"></i></a> <!-- LinkedIn Link -->
                            <a href="#"><i class="fa-brands fa-x-twitter"></i></a> <!-- Twitter Link -->
                            <a href="#"><i class="fab fa-instagram"></i></a> <!-- Instagram Link -->
                        </div>
                        <div class="text">
                            <a href="Team-Single.html">
                                <h3>Emily Jones</h3>
                            </a> <!-- Expert Name -->
                            <p>Network Specialist</p> <!-- Expert Designation -->
                        </div>
                    </div>
                </div>

                <!-- Expert 2 -->
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
                            <a href="Team-Single.html">
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
                            <a href="Team-Single.html">
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
                            <a href="Team-Single.html">
                                <h3>John Williams</h3>
                            </a> <!-- Expert Name -->
                            <p>Support Head</p> <!-- Expert Designation -->
                        </div>
                    </div>
                </div>

            </div>

        </section>
        <!-- ========== Team Area (End) ========== -->

        <!-- ========== Testimonials Area (Start) ========== -->
        <section class="testimonial-bg linear-bg">

            <!-- Section Heading -->
            <div class="heading">
                <div class="sub"><i class="fa-solid fa-wifi"></i><span>What Attendees Say</span><i
                        class="fa-solid fa-wifi"></i></div> <!-- Sub Heading -->
                <h2>Attendee Testimonials</h2>
            </div>

            <!-- Testimonial Slider -->
            <div class="swiper-container testimonial-slider">

                <div class="swiper-wrapper">

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
                            <p>"Switching to this provider was the best decision we made! The Internet speed is fantastic,
                                and we’ve had a seamless experience streaming and working from home. Highly recommend for
                                reliable service."</p>
                        </div>
                        <div class="bottom">
                            <div class="intro">
                                <img src="{{ asset('/') }}website/assets/images/Testimonials/Pic-1.jpg"
                                    alt="Alice Cooper">
                                <div class="text">
                                    <h4>Alice Cooper</h4>
                                    <h6>Remote Worker</h6>
                                </div>
                            </div>
                            <i class="fas fa-quote-right"></i>
                        </div>
                    </div>

                    <!-- Testimonial Slide 2 -->
                    <div class="swiper-slide testi-item">
                        <div class="content">
                            <div class="rating">
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                            </div>
                            <p>"The bundled Internet and TV package is perfect for our family. We get all our favorite
                                channels and the Internet speed is excellent. Customer service was incredibly helpful with
                                setting everything up!"</p>
                        </div>
                        <div class="bottom">
                            <div class="intro">
                                <img src="{{ asset('/') }}website/assets/images/Testimonials/Pic-2.jpg"
                                    alt="Robert Green">
                                <div class="text">
                                    <h4>Robert Green</h4>
                                    <h6>Home User</h6>
                                </div>
                            </div>
                            <i class="fas fa-quote-right"></i>
                        </div>
                    </div>

                    <!-- Testimonial Slide 3 -->
                    <div class="swiper-slide testi-item">
                        <div class="content">
                            <div class="rating">
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                            </div>
                            <p>"As a small business owner, reliable Internet is crucial, and this provider has never let us
                                down. Our connection is always fast, which has been fantastic for video calls and online
                                transactions."</p>
                        </div>
                        <div class="bottom">
                            <div class="intro">
                                <img src="{{ asset('/') }}website/assets/images/Testimonials/Pic-3.jpg"
                                    alt="Emma Thompson">
                                <div class="text">
                                    <h4>Emma Thompson</h4>
                                    <h6>Business Owner</h6>
                                </div>
                            </div>
                            <i class="fas fa-quote-right"></i>
                        </div>
                    </div>

                    <!-- Testimonial Slide 4 -->
                    <div class="swiper-slide testi-item">
                        <div class="content">
                            <div class="rating">
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                            </div>
                            <p>"We recently upgraded to a faster package and it’s been fantastic. No more buffering during
                                movie nights, and everyone in the family can stay connected without any issues! Absolutely
                                thrilled with the speed!"</p>
                        </div>
                        <div class="bottom">
                            <div class="intro">
                                <img src="{{ asset('/') }}website/assets/images/Testimonials/Pic-4.jpg"
                                    alt="Chris Martin">
                                <div class="text">
                                    <h4>Chris Martin</h4>
                                    <h6>Residential Customer</h6>
                                </div>
                            </div>
                            <i class="fas fa-quote-right"></i>
                        </div>
                    </div>

                </div>

                <!-- Testimonial Slider Pagination -->
                <div class="swiper-pagination swiper-pagination3"></div>

            </div>

        </section>
        <!-- ========== Testimonials Area (End) ========== -->

        <!-- ========== Pricing Plans Area (Start) ========== -->
        <section class="pricing">

            <!-- Section Heading -->
            <div class="heading">
                <div class="sub"><i class="fa-solid fa-wifi"></i><span>Our Plans</span><i
                        class="fa-solid fa-wifi"></i></div>
                <h2>Our Pricing</h2>
            </div>

            <div class="box-container">

                <!-- Basic Package -->
                <div class="plan-item">
                    <img src="{{ asset('/') }}website/assets/images/Pricing/Plan-1.jpg" alt="Basic Package">
                    <!-- Service Image -->
                    <div class="plan-content">
                        <div class="top"></div>
                        <div class="intro">
                            <i class="speed">up to <span>35</span> Mbps</i> <!-- Internet speed -->
                            <h5>Internet Only</h5> <!-- Service Name -->
                            <h3>Basic Plan</h3> <!-- Plan Type -->
                            <div class="icon-container">
                                <i class="fa-solid fa-wifi"></i>
                            </div>
                        </div>
                        <div class="content">
                            <ul> <!-- Package Features -->
                                <li><i class="fa-solid fa-check"></i> High-Speed Internet</li>
                                <li><i class="fa-solid fa-check"></i> Free Installation</li>
                                <li><i class="fa-solid fa-check"></i> 24/7 Customer Support</li>
                                <li><i class="fa-solid fa-check"></i> No Data Caps</li>
                            </ul>
                            <div class="price-box">
                                <div class="price">$29.99</div>
                                <p>/ month</p>
                            </div>
                            <a href="../Pages/Order-Now.html" class="btn">Get Started</a>
                        </div>
                    </div>
                </div>

                <!-- Standard Package -->
                <div class="plan-item">
                    <img src="{{ asset('/') }}website/assets/images/Pricing/Plan-2.jpg" alt="Standard Package">
                    <!-- Service Image -->
                    <div class="plan-content">
                        <div class="top"></div>
                        <div class="intro">
                            <i class="speed">up to <span>75</span> Mbps</i> <!-- Internet speed -->
                            <h5>Internet + Cable TV</h5> <!-- Service Name -->
                            <h3>Standard Plan</h3> <!-- Plan Type -->
                            <div class="icon-container">
                                <i class="fa-solid fa-wifi"></i>
                                <i class="fa-solid fa-tv"></i>
                            </div>
                        </div>
                        <div class="content">
                            <ul> <!-- Package Features -->
                                <li><i class="fa-solid fa-check"></i> Up to 120+ Channels</li>
                                <li><i class="fa-solid fa-check"></i> High-Speed Internet</li>
                                <li><i class="fa-solid fa-check"></i> Free HD Channels</li>
                                <li><i class="fa-solid fa-check"></i> Unlimited Streaming</li>
                            </ul>
                            <div class="price-box">
                                <div class="price">$59.99</div>
                                <p>/ month</p>
                            </div>
                            <a href="../Pages/Order-Now.html" class="btn">Get Started</a>
                        </div>
                    </div>
                </div>

                <!-- Premium Package -->
                <div class="plan-item">
                    <img src="{{ asset('/') }}website/assets/images/Pricing/Plan-3.jpg" alt="Premium Package">
                    <!-- Service Image -->
                    <div class="plan-content">
                        <div class="top"></div>
                        <div class="intro">
                            <i class="speed">up to <span>150</span> Mbps</i> <!-- Internet speed -->
                            <h5>Internet + TV + Mobile</h5> <!-- Service Name -->
                            <h3>Premium Plan</h3> <!-- Plan Type -->
                            <div class="icon-container">
                                <i class="fa-solid fa-wifi"></i>
                                <i class="fa-solid fa-tv"></i>
                                <i class="fa-solid fa-mobile-screen"></i>
                            </div>
                        </div>
                        <div class="content">
                            <ul> <!-- Package Features -->
                                <li><i class="fa-solid fa-check"></i> Up to 200+ Channels</li>
                                <li><i class="fa-solid fa-check"></i> High-Speed Internet</li>
                                <li><i class="fa-solid fa-check"></i> Mobile Connectivity</li>
                                <li><i class="fa-solid fa-check"></i> On-Demand Movies</li>
                            </ul>
                            <div class="price-box">
                                <div class="price">$99.99</div>
                                <p>/ month</p>
                            </div>
                            <a href="../Pages/Order-Now.html" class="btn">Get Started</a>
                        </div>
                    </div>
                </div>

            </div>

        </section>
        <!-- ========== Pricing Plans Area (End) ========== --> --}}

        <!-- ========== Newsletter Area (Start) ========== -->
        <section class="newsletter-subscribe"
            style="background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), 
                      url('{{ asset($title_banner->image) }}');">
            <div class="content">
                <h2>Subscribe To Our Newsletter</h2> <!-- Newsletter Heading -->
                <p>Subscribe to receive updates on the latest internet packages, exclusive promotions, service upgrades, and
                    helpful tips for maximizing your broadband experience.</p> <!-- Newsletter Description -->
                <form class="newsletter-form" method="post" id="newsletter-form-1">
                    <div class="box-container">
                        <input type="email" id="sub-email-1" name="email" placeholder="Your email address" required>
                        <!-- Email Input Field -->
                        <button type="submit" class="btn" name="submit" id="submit-1">Subscribe</button>
                        <!-- Subscribe Button -->
                    </div>
                    <!-- Alert Message -->
                    <span class="alert" id="msg-1"></span>
                </form>
            </div>
        </section>
        <!-- ========== Newsletter Area (End) ========== -->

        <!-- ========== Partners Area (Start) ========== -->
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

        </section>
        <!-- ========== Partners Area (End) ========== -->

    </section>
    <!-- ==================== About-Us Area (End) ==================== -->



@endsection
