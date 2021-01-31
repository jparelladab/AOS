<?php get_header(); ?>

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
<div class="black-bg">
	<div class="container">


		<div class="header-projects">
			<div class="logo" style="color:">
				<div class="A">A</div>
				<div class="O">O</div>
				<div class="S">S</div>
			</div>
		</div>

		<div class="page-wrapper">
			<div class="nav-menu">
				<?php wp_nav_menu(); ?>
			</div>

			<div class="content-wrapper">

				<?php $categories = get_categories();

				foreach($categories as $category):
					$color = get_field('background_color', $category);
				?>

				<div class="category-container mb-5 <?php echo $category->name; ?>">
					<div class="color-bar" style="background-color: <?php echo $color; ?>">
						<div class="cat-name pb-1" style="color: <?php echo $color; ?>"><?php echo $category->name; ?></div>
						<div class="color-bg" ></div>
					</div>
					<?php $loop = new WP_Query( array( 'post_type' => 'projects', 'category_name' => $category->name, 'posts_per_page' => -1 ) ); ?>
					<div class="projects-category">
					<?php while ( $loop->have_posts() ) : $loop->the_post(); ?>
						<div class="project-title" style="color:<?php echo $color; ?>">
							<a class="project-anchor" href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
						</div>
					<?php endwhile; ?>
					</div>
				</div>

				<?php endforeach; ?>

			</div>

		</div>
	</div>
</div>
<?php get_footer(); ?>
