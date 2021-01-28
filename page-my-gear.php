<?php get_header(); ?>

<div class="page-wrapper black-bg">
	<div class="nav-menu">
		
		<?php wp_nav_menu(); ?>
	
	</div>

	<div class="content-wrapper">
		
	
		<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

		<?php endwhile; endif; ?>

	</div>

</div>

<?php get_footer(); ?>