$(window).load(function() {
  $("#spinner").delay(1000).fadeOut(500);
})

$(window).scroll(function () {

  	if ($(document).scrollTop() <= 0) {
        $('.navbar-brand img').attr('src', $('.navbar-brand img').attr('orig'));
      	$('header').removeClass('shrink');
    } else {
      	$('.navbar-brand img').attr('src', $('.navbar-brand img').attr('scroll'));
      	$('header').addClass('shrink');
    }
});

$("#nav ul li a[href^='#'], #scroll").on('click', function(e) {

   // prevent default anchor click behavior
   e.preventDefault();

   // store hash
   var hash = this.hash;

   // animate
   $('html, body').animate({
       scrollTop: $(this.hash).offset().top
     }, 300, function(){

       // when done, add hash to url
       // (default click behaviour)
       window.location.hash = hash;
     });

});

window.onload = function() {

  var isMobile = window.matchMedia("only screen and (max-width: 768px)");

      if (isMobile.matches) {
        $(".slider").addClass('swipe');
        $(".slider").find("div").addClass('swipe-wrap');
        $(".slider").Swipe();
      }
}

$(document).ready(function(){
  $('.slider4').bxSlider({
    slideWidth: 200,
    minSlides: 1,
    maxSlides: 5,
    moveSlides: 1,
    slideMargin: 35,
    auto: true,
    pause: 4000,
    speed: 1000,
    controls:false,
    pager:false
  });
});
