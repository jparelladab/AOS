<?php get_header(); ?>

<div class="green-bg page-home">
	<div class="logo-home black text-m mx-4">A|O|S</div>
	    <div class="fixed-left">

	      <div class="nav-menu black text-xs poly-regular">
	        <?php wp_nav_menu(); ?>
			<div class="text-check no-mobile"><?php the_field('check-me-out'); ?> <a href="<?php the_field('link-instagram'); ?>" target="_blank">Instagram | </a><a href="<?php the_field('link-vimeo'); ?>" target="_blank">vimeo</a></div>
	      </div>
	    </div>

	<div class="home-grid content-right">

	<?php if (have_posts()) : while (have_posts()) : the_post();
		$count = 1;
		if( have_rows('images') ): while( have_rows('images') ) : the_row();
	     	$sub_url = get_sub_field('image');
	     	$sub_text = get_sub_field('text');
	     	$sub_genre = get_sub_field('genre');
	     	$sub_color = get_sub_field('color');  ?>
	       <div class="img-wrap item<?php echo $count; ?>" style="grid-column:<?php echo $count; ?>;border-color: <?php echo $sub_color; ?>;">
	       	<img src="<?php echo $sub_url; ?>" alt="" >
	       	<div class="img-text text-xs"><?php echo $sub_text; ?></div>
	       	<div class="genre text-vertical text-xs poly-regular" style="color: <?php echo $sub_color; ?>;"><?php echo $sub_genre ?></div>
	       </div>

		<?php $count ++; endwhile; endif; ?>
	<?php endwhile; endif; ?>

	</div>

</div>

<?php get_footer(); ?>
