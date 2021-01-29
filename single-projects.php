<?php get_header(); ?>

<?php $category = get_the_category()[0]; ?>
<?php $color = get_field('background_color', $category); ?>

<div class="bg-container" style="background-color: <?php echo $color; ?>">
	
	<div class="container">
		
	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

		<div class="single-project-container" >
			
			<div class="logo">AOS</div>
			<div class="project-wrapper">
				<img class="single-project-img" src="<?php the_field('banner_image'); ?>" alt="">
				<div class="project-info-grid">
					<div class="team">
						TEAM
					</div>
					<div class="image-right"><img src="" alt=""></div>
					<div class="image-left"><img src="" alt=""></div>

					<?php $images = get_field('images'); ?>

					<?php foreach ($images as $image) : ?>
				      <img src="<?php echo $image['image']; ?>" alt="">					
					<?php endforeach; ?>
					
						        

				</div>

			</div>

		</div>

	<?php endwhile; endif; ?>
	</div>
</div>
<?php get_footer(); ?>