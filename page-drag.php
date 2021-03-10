<?php get_header(); ?>
	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>


<div class="bg-green" data-barba="container" data-barba-namespace="drag">

  <div class="container min-height-100 page-drag cursor-black-tiny">

      <div id="logo_drag" class="logo-drag text-xl black poly-regular">A|O|S</div>

        <a style="width:100%;" href="<?php the_permalink(44); ?>" class="">
          <div id="hold-drag"   class="hover-black-tiny hold-drag d-flex justify-content-between align-items-center">
            <div class="black poly-bulky text-s width-fit">Hold & Drag</div>
              <div class="line mx-4" ></div>
            <div class="black poly-bulky text-s width-fit">To view content</div>
          </div>
        </a>

        <div class="nav-menu black hover-black-tiny text-xs">
          <?php wp_nav_menu(); ?>
        </div>
  </div>
  <div id="modal" class="modal-load bg-green" style="display:none;">
    <div class="container d-flex align-items-center" style="width:100%;height:100%;">
      <div id="loader-fall" class="loader-grid" style="position:relative;">
        <div id="percent" class="d-flex align-items-center">1%</div>
        <div class="circle-animated"><span class="Spinner Spinner--disc"></span></div>
      </div>
    </div>
  </div>
</div>
<?php endwhile; endif; ?>

<?php get_footer(); ?>

<script  type="text/javascript">


  // var startX, startWidth;
  // const holdDrag = document.querySelector('.hold-drag');

  // function myfunction(e){
  //   startX = e.clientX;
  //   startWidth = parseInt(document.defaultView.getComputedStyle(holdDrag).width, 10);
  //   console.log(startWidth);
  //   document.documentElement.addEventListener('mousemove', doDrag, false);
  //   document.documentElement.addEventListener('mouseup', stopDrag, false);
  // }
  // function doDrag(e) {
  //   holdDrag.style.width = (startWidth - 100) + 'px';
  // }

  // function stopDrag(e) {
  //   document.documentElement.removeEventListener('mousemove', doDrag, false);
  //   document.documentElement.removeEventListener('mouseup', stopDrag, false);
  // }

</script>
