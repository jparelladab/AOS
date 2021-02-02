<?php get_header(); ?>

<div class="black-bg">
  <div class="container-fluid page-wrapper">

    <div class="fixed-left">
      <div></div>
      <div class="nav-menu">
        <?php wp_nav_menu(); ?>
      </div>
    </div>


	<div class="content-wrapper page-info white content-right">


	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
      <h1 class="text-xl green poly-bulky"><?php the_field('name'); ?></h1>
      <div class="poly-regular text-s mb-4"><?php the_field('main-text') ?></div>
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
		<?php endwhile; endif; ?>

	</div>

      </div>
</div>

<?php get_footer(); ?>
