jQuery(document).ready(function( $ ) {

$(".more").on('click', function(){
  $(".single-project-img").toggleClass('img-small');
  $(".project-info-container").slideToggle();
});

$(".gear-item").on('click', function(){
  $(".gear-description").slideUp();
  $(".gear-image").slideUp();
	$(this).find(".gear-description").slideToggle();
  $(this).find(".gear-image").slideToggle();
})

});
