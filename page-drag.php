<?php get_header(); ?>
	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>


<div class="bg-green" data-barba="container" data-barba-namespace="drag">

  <div ondrag="myfunction(event)" class="container min-height-100 page-drag cursor-black-tiny">
<!--     <div class="page-drag"> -->

      <div class="logo-drag text-xl black poly-regular">A|O|S</div>

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
<!--
    </div> -->
  </div>
</div>
<?php endwhile; endif; ?>

<?php get_footer(); ?>

<script>
  var startX, startWidth;
  const holdDrag = document.querySelector('.hold-drag');

  function myfunction(e){
    startX = e.clientX;
    startWidth = parseInt(document.defaultView.getComputedStyle(holdDrag).width, 10);
    console.log(startWidth);
    document.documentElement.addEventListener('mousemove', doDrag, false);
    document.documentElement.addEventListener('mouseup', stopDrag, false);
  }
  function doDrag(e) {
    holdDrag.style.width = (startWidth - 100) + 'px';
  }

  function stopDrag(e) {
    document.documentElement.removeEventListener('mousemove', doDrag, false);
    document.documentElement.removeEventListener('mouseup', stopDrag, false);
  }

</script>
