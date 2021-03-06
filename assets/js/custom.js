


jQuery(document).ready(function( $ ) {

if ($(".page-home")[0]){

  var player1 = $("#1");
  var player2 = $("#2");
  var player3 = $("#3");
  var player4 = $("#4");
  var player5 = $("#5");
  var player6 = $("#6");
  var player7 = $("#7");
  var player8 = $("#8");
  froogaloop1 = $f(player1[0].id);
  froogaloop2 = $f(player2[0].id);
  froogaloop3 = $f(player3[0].id);
  froogaloop4 = $f(player4[0].id);
  froogaloop5 = $f(player5[0].id);
  froogaloop6 = $f(player6[0].id);
  froogaloop7 = $f(player7[0].id);
  froogaloop8 = $f(player8[0].id);
  player1.mouseover(function(){
      froogaloop1.api('play');
  }).mouseout(function(){
      froogaloop1.api('pause');
  });
  player2.mouseover(function(){
      froogaloop2.api('play');
  }).mouseout(function(){
      froogaloop2.api('pause');
  });
  player3.mouseover(function(){
      froogaloop3.api('play');
  }).mouseout(function(){
      froogaloop3.api('pause');
  });
  player4.mouseover(function(){
      froogaloop4.api('play');
  }).mouseout(function(){
      froogaloop4.api('pause');
  });
  player5.mouseover(function(){
      froogaloop5.api('play');
  }).mouseout(function(){
      froogaloop5.api('pause');
  });
  player6.mouseover(function(){
      froogaloop6.api('play');
  }).mouseout(function(){
      froogaloop6.api('pause');
  });
  player7.mouseover(function(){
      froogaloop7.api('play');
  }).mouseout(function(){
      froogaloop7.api('pause');
  });
  player8.mouseover(function(){
      froogaloop8.api('play');
  }).mouseout(function(){
      froogaloop8.api('pause');
  });

}




  $(".current-menu-item").append('<div class="menu-line"></div>');

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
    before(){
      $('.current-menu-item .menu-line').css('height', 0);
    },
    leave(data) {
      console.log(data.next);
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
      menu.update();
    },
    afterEnter() {
      $(".current-menu-item").append('<div class="menu-line"></div>');
      $('.page-projects .project-anchor').on({
          mouseenter: function() {
              $(this).next().toggle();
          },
          mouseleave: function() {
              $(this).next().toggle();
          }
      });
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

