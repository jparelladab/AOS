<?php get_header(); ?>

<div class="page-wrapper black-bg page-gear">
  <div class="nav-menu">

    <?php wp_nav_menu(); ?>

  </div>

  <div class="content-wrapper">


    <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
      <h1><?php the_title(); ?></h1>
      <div class="grid-container">
        <div><?php the_field('text1'); ?></div>
        <img src="<?php the_field('image'); ?>" alt="">
      </div>


  </div>
  <div class="grid-wrapper">
      <div><?php the_field('text2'); ?></div>
    <?php endwhile; endif; ?>

      <div class="gear-grid">
        <?php $loop = new WP_Query( array( 'post_type' => 'gears', 'posts_per_page' => -1 ) ); ?>
        <?php while ( $loop->have_posts() ) : $loop->the_post(); ?>
          <div class="gear-title"><?php the_title(); ?></div>
          <div class="gear-description"><?php the_field('description') ?></div>
        <?php endwhile; ?>
      </div>
  </div>

</div>

<?php get_footer(); ?>
