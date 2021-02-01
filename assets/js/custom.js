jQuery(document).ready(function( $ ) {

$(".more").on('click', function(){
  $(".single-project-img").toggleClass('img-small');
  $(".project-info-container").slideToggle();
});

$(".gear-item").on('click', function(){
	$(this).find(".gear-description").slideToggle();
})

});
