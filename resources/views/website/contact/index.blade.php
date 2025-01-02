@extends('layouts.front-end.master')
@section('title', 'Contact Us')

@section('content')


    <!-- ==================== Page-Title (Start) ==================== -->
    <div class="page-title"
        style="background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), 
                      url('{{ asset($title_banner->image) }}');">
        <div class="title">
            <h2>Contact</h2>
        </div>

        <div class="link">
            <a href="{{ route('home') }}">Home</a>
            <i class="fa-solid fa-angles-right"></i>
            <span class="page">Contact</span>
        </div>

    </div>
    <!-- ==================== Page-Title (End) ==================== -->



    <!-- ==================== Contact Area (Start) ==================== -->
    <section class="contact" id="contact">

        <div class="box-container"
            style="background-image: linear-gradient(rgba(0, 0, 0, 0.651), rgba(0, 0, 0, 0.726)), 
                      url('{{ asset($contact_banner->image) }}');">

            <!-- ========== Contact Info (Start) ========== -->
            <div class="contact-info">

                <div class="contact-info-container">

                    <!-- Address Info -->
                    <div class="info-item">
                        <i class="fa-solid fa-map-location-dot"></i>
                        <div class="content">
                            <h3>Office address</h3>
                            <p>{{ $company_front->company_address }}</p>
                        </div>
                    </div>

                    <!-- Phone Info -->
                    <div class="info-item">
                        <i class="fas fa-phone"></i>
                        <div class="content">
                            <h3>call us</h3>
                            <p>{{ $company_front->contact_phone }}</p>
                            <p>{{ $company_front->support_phone }}</p>
                        </div>
                    </div>

                    <!-- Email Info -->
                    <div class="info-item">
                        <i class="fas fa-envelope"></i>
                        <div class="content">
                            <h3>mail us</h3>
                            <p class="gmail">{{ $company_front->contact_email }}</p>
                            <p class="gmail">{{ $company_front->support_email }}</p>
                        </div>
                    </div>

                    <!-- Opening Hours Info -->
                    <div class="info-item">
                        <i class="fa-solid fa-clock"></i>
                        <div class="content">
                            <h3>Opening Hours</h3>
                            <p>{{ $company_front->office_hour }}</p>
                        </div>
                    </div>

                </div>

            </div>
            <!-- ========== Contact Info (End) ========== -->

            <!-- ========== Contact Form (Start) ========== -->
            <form method="post" class="dark-form" id="contact-form" action="{{ route('contact.store') }}">
                @csrf
                <!-- Form Heading -->
                <div class="heading">
                    <div class="sub"><span>Contact Us for Assistance</span><i class="fa-solid fa-wifi"></i></div>
                    <!-- Sub Heading -->
                    <h2>Send Us a Message</h2>
                </div>

                <div class="input-box">

                    <!-- Name Input Field -->
                    <div class="input-field">
                        <label for="name" class="fas fa-user"></label>
                        <input type="text" name="name" class="box" id="name" placeholder="Name" required>
                    </div>

                    <!-- Email Input Field -->
                    <div class="input-field">
                        <label for="email" class="fa-solid fa-envelope"></label>
                        <input type="email" name="email" class="box" id="email" placeholder="Email" required>
                    </div>

                </div>

                <div class="input-box">

                    <!-- Phone Number Input Field -->
                    <div class="input-field">
                        <label for="number" class="fas fa-phone"></label>
                        <input type="text" name="phone" class="box" id="number" placeholder="Phone Number"
                            required>
                    </div>

                    <!-- Subject Input Field -->
                    <div class="input-field">
                        <label for="subject" class="fas fa-phone"></label>
                        <input type="text" name="subject" class="box" id="subject" placeholder="Subject">
                    </div>

                </div>

                <!-- Comment/Message Textarea -->
                <div class="input-box">
                    <div class="input-field text-area">
                        <label for="comment" class="fas fa-comment"></label>
                        <textarea cols="30" rows="10" name="message" class="box" id="comment" placeholder="Message" required></textarea>
                    </div>
                </div>

                <!-- Submit Button -->
                <button type="submit" class="btn" name="submit" id="submit">Submit</button>

                <!-- Alert Message -->
                <span class="alert" id="msg"></span>

            </form>
            <!-- ========== Contact Form (End) ========== -->

        </div>

        <!-- ========== Google Map (Start) ========== -->
        <iframe src="{{ $company_front->google_map_api_link }}" style="border:0;" allowfullscreen=""
            loading="lazy"></iframe>
        <!-- ========== Google Map (End) ========== -->

    </section>
    <!-- ==================== Contact Area (End) ==================== -->



@endsection
