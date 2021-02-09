<?php get_header(); ?>
	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

<div class="bg-green">

  <div class="container min-height-100 page-drag cursor-black-tiny">
<!--     <div class="page-drag"> -->

      <div class="logo-drag text-xl black poly-regular">A|O|S</div>

        <a style="width:100%;" href="<?php the_permalink(44); ?>" class="">
          <div class="hover-black-tiny hold-drag d-flex justify-content-between align-items-center">
            <div class="black poly-bulky text-s">Hold & Drag</div>
              <div class="line mx-4"></div>
            <div class="black poly-bulky text-s">To view content</div>
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
