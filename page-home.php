<?php get_header(); ?>

<div class="green-bg cursor-black-tiny page-home" data-barba="container" data-barba-namespace="home">
	<div class="logo-home black text-m mx-4">A|O|S</div>
	    <!-- <div class="fixed-left"> -->

	      <div class="nav-menu black text-xs poly-regular hover-black-tiny">
	        <?php wp_nav_menu(); ?>
			<div class="text-check no-mobile"><?php the_field('check-me-out'); ?> <a class="hover-black-tiny" href="<?php the_field('link-instagram'); ?>" target="_blank">Instagram | </a><a class="hover-black-tiny" href="<?php the_field('link-vimeo'); ?>" target="_blank">vimeo</a></div>
	      </div>
	    <!-- </div> -->

	<div class="home-grid content-right mr-5">



  <?php $loop = new WP_Query( array( 'post_type' => 'projects', 'category_name' => $category->name, 'posts_per_page' => 8, 'orderby' => 'rand') ); ?>
   <?php $count = 1; ?>
    <?php while ( $loop->have_posts() ) : $loop->the_post(); ?>
      <?php $category = get_the_category()[0]; ?>
      <?php $bg_color = get_field('background_color', $category); ?>
          <div class="img-wrap-home project-container-home  item<?php echo $count; ?> cursor-white-tiny" style="grid-column:<?php echo $count; ?>;">
            <a class="pos-relative text-s poly-bulky hover-green-tiny d-flex justify-content-center align-items-center" href="<?php the_permalink(); ?>">
              <div class="img-text text-s poly-bulky"><?php the_title(); ?></div>
            <iframe class="vimeo-video" id="<?php echo $count; ?>" src="https://player.vimeo.com/video/<?php the_field('vimeo_code'); ?>?api=1&background=1&autoplay=0" frameborder="0" style="background-color: <?php echo $bg_color; ?>;"></iframe>
            <div class="genre text-vertical text-xs poly-regular" style="color: #bb2455;"><?php echo $category->name; ?></div>
            </a>
          </div>
    <?php $count++; endwhile; ?>
    <div style="grid-column:9;">

    </div>

	</div>

</div>

<?php get_footer(); ?>
