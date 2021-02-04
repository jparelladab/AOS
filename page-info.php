<?php get_header(); ?>
	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

<div class="black-bg page-info">
  <div class="header-space"></div>
  <div class="container-fluid page-wrapper">



  	<div class="content-wrapper container page-info white content-right mobile-no-content-right">
      <div class="height-header">
        <div class="logo-info text-align-right green text-m">A|O|S</div>
      </div>


        <h1 class="text-xl green poly-bulky mb-3"><?php the_field('name'); ?></h1>
        <div class="poly-regular text-s mb-5 width-50"><?php the_field('main-text') ?></div>
        <div class="left-bar-container mb-5">
              <div class="vertical-bar green">
                    <div class="bg-green"></div>
                    <div class="text-vertical text-xs green mt-2"><?php the_field('no-spamming'); ?></div>
              </div>
              <div class="contact-info">
                    <div class="text-xs text-it white poly-regular mb-4"><?php the_field('lets-do-this'); ?></div>
                    <div class="contact-details">
                      <div class="text-m white poly-bulky mb-4"><?php the_field('email'); ?><span class="mx-2 poly-regular text-xs text-it v-align-sup green"><?php the_field('email-sub'); ?></span></div>
                      <div class="text-m white poly-bulky mb-4"><?php the_field('phone'); ?><span class="mx-2 poly-regular text-xs text-it v-align-sup green"><?php the_field('phone-sub'); ?></span></div>                    
                    </div>
              </div>
        </div>
    <div class="text-check"><?php the_field('check-me-out'); ?> <a href="<?php the_field('link-instagram'); ?>" target="_blank">Instagram | </a><a href="<?php the_field('link-vimeo'); ?>" target="_blank">vimeo</a></div>
  		<?php endwhile; endif; ?>


    <div class="fixed-left">

      <div class="nav-menu">
        <div class="green text-xs text-vertical menu-text no-mobile"><?php the_field('vertical-text'); ?></div>
        <?php wp_nav_menu(); ?>
      </div>
    </div>
  	</div>
  </div>
</div>

<?php get_footer(); ?>
