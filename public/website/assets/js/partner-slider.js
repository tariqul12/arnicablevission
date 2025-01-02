/*--------------- Partners Slider ---------------*/

// Initialize Swiper for partner slider
var swiper = new Swiper(".partner-slider", {

  spaceBetween: 10, // Set space between slides
  loop: true, // Enable looping through slides

  // Autoplay settings
  autoplay: {
    delay: 5000, // Delay between slide transitions
    disableOnInteraction: false, // Continue autoplay on user interaction
  },

  // Define responsive breakpoints
  breakpoints: {
    
    0: { // For screens less than 450px
      slidesPerView: 2, // Show 1 slide per view
    },
    450: { // For screens 450px and above
      slidesPerView: 3, // Show 2 slides per view
    },
    768: { // For screens 768px and above
      slidesPerView: 4, // Show 3 slides per view
    },
    990: { // For screens 980px and above
      slidesPerView: 5, // Show 4 slides per view
    },

  },

}); 
