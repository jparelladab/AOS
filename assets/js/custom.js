


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
  views: [
  {
    namespace: 'drag',
    beforeEnter() {
      // update the menu based on user navigation
      // menu.update();
    },
    afterEnter() {
      // refresh the parallax based on new page content
      // parallax.refresh();
      if (sessionStorage.getItem('loaded') == 'true'){
        $('.logo-drag').css('top', 0);
      } else {

      $('#modal').show();
      const loader = document.getElementById('loader-fall');
      const logo = document.getElementById('logo_drag');
      var data = sessionStorage.getItem('loaded');
      const modal = document.getElementById('modal');

      var i = 0;
      function move() {
        if (i == 0) {
          i = 1;
          var elem = document.getElementById("percent");
          var count = 0;
          var id = setInterval(frame, 20);
          function frame() {
            if (count >= 100) {
              clearInterval(id);
          loader.classList.add('fall');
          setTimeout(function(){
            modal.style.display = 'none';
            logo.style.top = 0;
            console.log('done');
            }, 2000);
              i = 0;
            } else {
              count++;
              elem.innerHTML = count + "%";
            }
          }
        }
        // Save data to sessionStorage
        sessionStorage.setItem('loaded', true);
      }
        window.onload = move();
      }

    }
  },
  {
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

