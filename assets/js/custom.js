


jQuery(document).ready(function( $ ) {






  $(".current-menu-item").append('<div class="menu-line"></div>');
  // $(".menu-line").css('height', '100%');
  $(".project-container .vp-controls-wrapper").hide();
  $(".project-container")
  	.on('mouseover', function(){
  		$(".separator-bar").toggleClass('separator-bar-wider');
  	})
  	.on('mouseout', function(){
  		$(".separator-bar").toggleClass('separator-bar-wider');
  	});

  barba.init({
  transitions: [{
    name: 'opacity-transition',
    leave(data) {
      return gsap.to(data.current.container, {
        opacity: 0
      });
    },
    enter(data) {
      return gsap.from(data.next.container, {
        opacity: 0
      });
    }
  }],
  // for custom code
  views: [{
    namespace: 'single-project',
    beforeEnter() {
      // update the menu based on user navigation
      // menu.update();
    },
    afterEnter() {
      // refresh the parallax based on new page content
      // parallax.refresh();

      $(".more, .close").on('click', function(){
        $(".project-info-container").slideToggle();
      });
      $(".project-container .vp-controls-wrapper").hide();
      $(".project-container")
      .on('mouseover', function(){
        $(".separator-bar").toggleClass('separator-bar-wider');
      })
      .on('mouseout', function(){
        $(".separator-bar").toggleClass('separator-bar-wider');
      });
    }
  },
  {
    namespace: 'my-gear',
    beforeEnter() {
      // update the menu based on user navigation
      // menu.update();
    },
    afterEnter() {
      // refresh the parallax based on new page content
      // parallax.refresh();
      $(".current-menu-item").append('<div class="menu-line"></div>');
      $(".gear-item").on('click', function(){
        // $(".gear-description").slideUp();
        // $(".gear-image").slideUp();
        $(this).find(".gear-description").slideToggle();
        $(this).find(".gear-image").slideToggle();
      });
    }
  },
  {
    namespace: 'projects',
    beforeEnter() {
      // update the menu based on user navigation
      // menu.update();
    },
    afterEnter() {
      $(".current-menu-item").append('<div class="menu-line"></div>');
    }
  },
  {
    namespace: 'info',
    beforeEnter() {
      // update the menu based on user navigation
      // menu.update();
    },
    afterEnter() {
      // refresh the parallax based on new page content
      // parallax.refresh();
      $(".current-menu-item").append('<div class="menu-line"></div>');
    }
  }
  ]
});

});

