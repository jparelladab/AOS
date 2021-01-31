jQuery(document).ready(function( $ ) {

$(".more").on('click', function(){
  $(".single-project-img").toggleClass('img-small');
  $(".project-info-container").slideToggle();
})

});
