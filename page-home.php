<?php get_header(); ?>

<div class="green-bg">
	<div class="home-grid">
		
	<?php if (have_posts()) : while (have_posts()) : the_post();
		$count = 1;
		if( have_rows('images') ): while( have_rows('images') ) : the_row();
	     	$sub_url = get_sub_field('image');
	     	$sub_text = get_sub_field('text'); ?>
	       <div class="img-wrap item<?php echo $count; ?>" style="grid-column:<?php echo $count; ?>">
	       	<img src="<?php echo $sub_url; ?>" alt="" >
	       	<div class="img-text text-xs"><?php echo $sub_text; ?></div>       	
	       </div>
	       
		<?php $count ++; endwhile; endif; ?>
	<?php endwhile; endif; ?>

	</div>
</div>

<?php get_footer(); ?>
