<?php get_header(); ?>

<div class="page-wrapper black-bg">
	<div class="nav-menu">		
		<?php wp_nav_menu(); ?>	
	</div>

	<div class="content-wrapper">		
		<div class="commercial">			
			<?php $loop = new WP_Query( array( 'post_type' => 'projects', 'category_name' => 'commercial', 'posts_per_page' => -1 ) ); 
			while ( $loop->have_posts() ) : $loop->the_post(); ?>
				<div class="project-title">
					<a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>					
				</div>
			<?php endwhile; ?>
		</div>
		<div class="fiction">
			<?php $loop = new WP_Query( array( 'post_type' => 'projects', 'category_name' => 'fiction', 'posts_per_page' => -1 ) ); 
			while ( $loop->have_posts() ) : $loop->the_post(); ?>
				<div class="project-title">
					<a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>					
				</div>
			<?php endwhile; ?>
		</div>
		<div class="videoclip">
			<?php $loop = new WP_Query( array( 'post_type' => 'projects', 'category_name' => 'videoclip', 'posts_per_page' => -1 ) ); 
			while ( $loop->have_posts() ) : $loop->the_post(); ?>
				<div class="project-title">
					<a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>					
				</div>
			<?php endwhile; ?>
		</div>
	</div>

</div>

<?php get_footer(); ?>
