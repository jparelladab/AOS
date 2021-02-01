<?php get_header(); ?>

<div class="black-bg page-gear">


      <div class="fixed-left">
        <div></div>
        <div class="nav-menu">

          <?php wp_nav_menu(); ?>

        </div>
      </div>

      <div class="content-wrapper content-right mb-4">

        <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
          <h1 class="mb-4"><?php the_title(); ?></h1>

          <div class="grid-1 mb-4">
            <div class="description white"><?php the_field('text1'); ?></div>
            <img src="<?php the_field('image'); ?>" alt="">
          </div>

          <div class="grid-2 white">
              <div class="text-small"><?php the_field('text2'); ?></div>
            <?php endwhile; endif; ?>

              <div class="left-bar-container">
                <div class="vertical-bar green">
                  <div class="bg-green"></div>
                  <div class="vertical-text text-small green mt-2"><?php the_field('vertical-text'); ?></div>
                </div>
                <div class="gear-grid">
                  <?php $loop = new WP_Query( array( 'post_type' => 'gears', 'posts_per_page' => -1 ) ); ?>
                  <?php while ( $loop->have_posts() ) : $loop->the_post(); ?>
                    <div class="gear-item">
                      <div class="gear-row">
                        <img class="gear-plus" src="<?php echo get_stylesheet_directory_uri() . '/assets/images/plus-icon2.png'; ?>" alt="">
                        <div class="gear-title"><?php the_title(); ?></div>
                        <span class="poly-regular text-small v-align-sup green"><?php the_field('tipo'); ?></span>
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

      </div>


</div>

<?php get_footer(); ?>
