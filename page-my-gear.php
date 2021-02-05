<?php get_header(); ?>

<div class="black-bg white page-my-gear min-height-100">

    <?php if (have_posts()) : while (have_posts()) : the_post(); ?>

      <div class="content-wrapper container content-right mb-4 mobile-no-content-right">
        <div class="height-header pos-relative">
          <div class="logo-gear text-align-right green text-m text-vertical">A|O|S</div>
        </div>

        <h1 class="mb-4 text-xl green poly-bulky"><?php the_title(); ?></h1>

        <div class="grid-1 mb-4">
          <div class="description white text-s"><?php the_field('text1'); ?></div>
          <img src="<?php the_field('image'); ?>" alt="">
        </div>

          <div class="grid-2 white">

              <div class="left-bar-container">
                <div class="vertical-bar green">
                  <div class="bg-green"></div>
                  <div class="text-vertical text-xs green mt-2"><?php the_field('vertical-text-list'); ?></div>
                </div>
    <?php endwhile; endif; ?>

                <div class="gear-grid">
                  <div class="text-it text-xs mb-2 d-flex justify-content-between">
                    <div><?php the_field('text2'); ?></div>
                    <div class="social mx-5"><?php the_field('check-me-out'); ?> <a href="<?php the_field('link-instagram'); ?>" target="_blank">Instagram | </a><a href="<?php the_field('link-vimeo'); ?>" target="_blank">vimeo</a></div>
                  </div>
                  <?php $loop = new WP_Query( array( 'post_type' => 'gears', 'posts_per_page' => -1 ) ); ?>
                  <?php while ( $loop->have_posts() ) : $loop->the_post(); ?>
                    <div class="gear-item">
                      <div class="gear-row text-m poly-bulky">
                        <img class="gear-plus" src="<?php echo get_stylesheet_directory_uri() . '/assets/images/plus-icon2.png'; ?>" alt="">
                        <div class="gear-title"><?php the_title(); ?></div>
                        <span class="poly-regular text-xs text-it v-align-sup green"><?php the_field('tipo'); ?></span>
                      </div>
                      <div class="gear-description"><?php the_field('description'); ?></div>
                    <div class="gear-image">
                      <img src="<?php the_field('image'); ?>" alt="">
                    </div>
                    </div>
                  <?php endwhile; ?>
                </div>
              </div>
          </div>
          <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
          <div class="fixed-left">
            <div class="nav-menu">
              <div class="green text-xs text-vertical menu-text no-mobile"><?php the_field('vertical-text-menu'); ?></div>
              <?php wp_nav_menu(); ?>
            </div>
          </div>
          <?php endwhile; endif; ?>
      </div>

</div>

<?php get_footer(); ?>
