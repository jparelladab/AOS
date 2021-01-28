<?php get_header(); ?>

<div class="page-wrapper black-bg">
	<div class="nav-menu">
		
		<?php wp_nav_menu(); ?>
	
	</div>

	<div class="content-wrapper">
		<?php
	
		$args = array(  
	        'post_type' => 'projects',
	        'post_status' => 'publish', 
	        'orderby' => 'title', 
	        'order' => 'ASC', 
    	);

    $loop = new WP_Query( $args ); 
        
    while ( $loop->have_posts() ) : $loop->the_post(); ?>
        <div class="project-wrapper">
        	<a href="<?php the_permalink(); ?>">        		
      			<?php the_title(); ?>
        	</a>
 
        </div>
   <?php endwhile;

    wp_reset_postdata(); ?>

	</div>

</div>

<?php get_footer(); ?>