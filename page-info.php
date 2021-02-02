<?php get_header(); ?>

<div class="black-bg page-info">
  <div class="header-space"></div>
  <div class="container-fluid page-wrapper">
	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

    <div class="fixed-left">

      <div class="nav-menu">
        <div class="green text-xs text-vertical menu-text"><?php the_field('vertical-text'); ?></div>
        <?php wp_nav_menu(); ?>
      </div>
    </div>


  	<div class="content-wrapper page-info white content-right">
      <div class="height-header">
        <div class="text-align-right green text-m">A|O|S</div>
      </div>


        <h1 class="text-xl green poly-bulky mb-3"><?php the_field('name'); ?></h1>
        <div class="poly-regular text-s mb-5 width-50"><?php the_field('main-text') ?></div>
        <div class="left-bar-container">
              <div class="vertical-bar green">
                    <div class="bg-green"></div>
                    <div class="text-vertical text-xs green mt-2"><?php the_field('no-spamming'); ?></div>
              </div>
              <div class="contact-info">
                    <div class="text-xs text-it white poly-regular"><?php the_field('lets-do-this'); ?></div>
                    <div class="contact-details">
                      <div class="text-big white poly-bulky"><?php the_field('email'); ?><span class="mx-2 poly-regular text-xs text-it v-align-sup green"><?php the_field('email-sub'); ?></span></div>
                      <div class="text-big white poly-bulky"><?php the_field('phone'); ?><span class="mx-2 poly-regular text-xs text-it v-align-sup green"><?php the_field('phone-sub'); ?></span></div>                    
                    </div>
              </div>
        </div>
    <div class="text-check"><?php the_field('check-me-out'); ?> <a href="<?php the_field('link-instagram'); ?>" target="_blank">Instagram | </a><a href="<?php the_field('link-vimeo'); ?>" target="_blank">vimeo</a></div>
  		<?php endwhile; endif; ?>
  	</div>
  </div>
</div>

<?php get_footer(); ?>
