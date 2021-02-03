jQuery(document).ready(function( $ ) {

$(".more").on('click', function(){
  // $(".single-project-img").toggleClass('img-small');
  $(".project-info-container").slideToggle();
});

$(".gear-item").on('click', function(){
  $(".gear-description").slideUp();
  $(".gear-image").slideUp();
	$(this).find(".gear-description").slideToggle();
  $(this).find(".gear-image").slideToggle();
});

$(".current-menu-item").append('<div class="menu-line"></div>');
// $(".menu-line").css('height', '100%');
$(".project-container .vp-controls-wrapper").hide();

});
