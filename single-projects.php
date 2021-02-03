<?php get_header(); ?>

<?php $category = get_the_category()[0]; ?>
<?php $bg_color = get_field('background_color', $category); ?>
<?php $text_color = get_field('text-color', $category); ?>

<style>
  body {
    background-color: <?php echo $bg_color; ?>;
  }
  .separator-bar::after {
    background-color: <?php echo $text_color; ?>;
  }
  .logo {
    color: <?php echo $text_color; ?>;
    display: flex;
    font-size: 30px;
    }
    .logo * {
      padding: 0 5px;
    }
    .A, .O {
      border-right: 1px solid <?php echo $text_color; ?>;
    }
    .custom-color {
      color:<?php echo $text_color; ?> !important;
    }
    .nav-menu {
      height: revert;
      color: <?php echo $text_color; ?>;
    }
    .menu-item::after {
      content: revert;
    }
</style>


	<div class="container">

	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

		<div class="single-project-container" >

			<div class="header-projects d-flex justify-content-center">
        <div class="logo custom-color">
          <div class="A">A</div>
          <div class="O">O</div>
          <div class="S">S</div>
        </div>
      </div>
			<div class="project-wrapper">
				<div class="single-project-img"><?php the_field('banner_video'); ?></div>
				<div class="d-flex justify-content-end">
          <div class="more custom-color mt-4">+</div>
        </div>


        <div class="project-info-container py-4">
          <div class="project-info-grid pb-5">
            <div class="separator-bar" style="background-color: <?php echo $text_color; ?>"></div>
  					<div class="team px-5" style="color: <?php echo $text_color; ?>">
              <div class="sm-text-vertical">Team</div>
  						<?php if( have_rows('team') ): ?>
                <?php while( have_rows('team') ) : the_row(); ?>

                  <div class="team-row d-flex">
                    <div class="team-name mr-2">
                      <?php the_sub_field('name'); ?>
                    </div>
                    <div class="team-role">
                      <?php the_sub_field('role'); ?>
                    </div>
                  </div>

               <?php endwhile; endif; ?>
               <div class="text-small-it"><?php the_field('place_date'); ?></div>
  					</div>

  					<div class="image-right px-5"><img src="<?php the_field('image1'); ?>" alt=""></div>
  					<div class="image-left px-5"><img src="<?php the_field('image2'); ?>" alt=""></div>
            <div class="image-center"><img src="<?php the_field('image3'); ?>" alt=""></div>

  				</div>
          <div class="other-title custom-color d-flex justify-content-center">More <?php echo $category->name; ?></div>
          <div class="other-projects py-4">

    <?php $loop = new WP_Query( array( 'post_type' => 'projects', 'category_name' => $category->name, 'posts_per_page' => 3, 'orderby' => 'rand') ); ?>
    <?php while ( $loop->have_posts() ) : $loop->the_post(); ?>

      <div class="project-container" style="color:<?php echo $color; ?>">
        <?php the_field('screenshot'); ?>
        <a class="project-anchor custom-color" href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
      </div>
    <?php endwhile; ?>
        </div>

  </div>
    <div class="nav-menu">
      <?php wp_nav_menu(); ?>
    </div>
	</div>

		</div>

	<?php endwhile; endif; ?>


	</div>
<?php get_footer(); ?>
