<?php get_header(); ?>

<div class="black-bg ">
  <div class="container-fluid page-gear">
    
      <div class="nav-menu">

        <?php wp_nav_menu(); ?>

      </div>

      <div class="content-wrapper mb-4">

        <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
          <h1 class="mb-4"><?php the_title(); ?></h1>
          <div class="grid-container">
            <div class="description"><?php the_field('text1'); ?></div>
            <img src="<?php the_field('image'); ?>" alt="">
          </div>


      </div>
      <div class="grid-wrapper">
          <div class="text-small"><?php the_field('text2'); ?></div>
        <?php endwhile; endif; ?>

          <div class="gear-grid">
            <?php $loop = new WP_Query( array( 'post_type' => 'gears', 'posts_per_page' => -1 ) ); ?>
            <?php while ( $loop->have_posts() ) : $loop->the_post(); ?>
              <div class="gear-item">            
                <div class="gear-title">
                  <img class="gear-plus" src="<?php echo get_stylesheet_directory_uri() . '/assets/images/plus-icon2.png'; ?>" alt="">
                  <?php the_title(); ?>
                  <span class="poly-regular text-small v-align-sup green"><?php the_field('tipo'); ?></span>
                </div>
                <div class="gear-description"><?php the_field('description'); ?></div>
              </div>
            <?php endwhile; ?>
          </div>
      </div>
   </div>

</div>

<?php get_footer(); ?>
