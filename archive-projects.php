<?php get_header(); ?>
<?php $insta_link = get_field('insta-link', 17); ?>
<?php $vimeo_link = get_field('vimeo-link', 17); ?>
<?php $check_me = get_field('check-me-out', 17); ?>
<style>
  .logo {
    color: #44d36f;
    display: flex;
    font-size: 30px;
    * {
      padding: 0 5px;
    }
    .A, .O {
      border-right: 1px solid #44d36f;
    }
  }
</style>
<div class="black-bg page-projects min-height-100">

		<div class="logo-projects green text-m">A|O|S</div>
		<div class="fixed-left">
			<div class="nav-menu">
				<?php wp_nav_menu(); ?>
			</div>
    	</div>

			<div class="content-wrapper content-right">

				<?php $categories = get_categories();

				foreach($categories as $category):
					$color = get_field('background_color', $category);
				?>

				<div class="category-container mb-5 <?php echo $category->name; ?>">
					<div class="d-flex flex-column align-items-center" style="background-color: <?php echo $color; ?>">
						<div class="text-xs bg-black text-vertical pb-1" style="color: <?php echo $color; ?>"><?php echo $category->name; ?></div>
						<div class="color-bg" ></div>
					</div>
					<?php $loop = new WP_Query( array( 'post_type' => 'projects', 'category_name' => $category->name, 'posts_per_page' => -1 ) ); ?>
					<div class="projects-category">
					<?php while ( $loop->have_posts() ) : $loop->the_post(); ?>
						<div class="project-title" style="color:<?php echo $color; ?>">
							<a class="project-anchor white text-s poly-regular" href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
						</div>
					<?php endwhile; ?>
					</div>
				</div>

				<?php endforeach; ?>
				<div class="text-align-right mx-5 white"><?php echo $check_me; ?> <a href="<?php echo $insta_link; ?>" target="_blank">Instagram | </a><a href="<?php echo $vimeo_link; ?>" target="_blank">vimeo</a></div>
			</div>

	</div>
</div>
<?php get_footer(); ?>
