/*--------------- Section Slider ---------------*/ 
var swiper = new Swiper(".section-slider", {

  spaceBetween: 10, // Space between slides
  loop:true, // Enable looping of slides

  autoplay: {
    delay: 5000, // Delay between slide transitions
    disableOnInteraction: false, // Allow autoplay on user interaction
  },
 
  breakpoints: {
    450: {
      slidesPerView: 2,
    },
    991: {
      slidesPerView: 3,
    },
  },

}); 