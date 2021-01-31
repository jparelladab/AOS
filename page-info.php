<?php get_header(); ?>

<div class="page-wrapper black-bg">
	<div class="nav-menu">

		<?php wp_nav_menu(); ?>

	</div>

	<div class="content-wrapper page-info">


		<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
      <h1><?php the_field('name'); ?></h1>
      <div class="info-text"><?php the_field('main-text') ?></div>
      <div><?php the_field('lets-do-this'); ?></div>
      <div><?php the_field('no-spamming'); ?></div>
      <div><?php the_field('email'); ?></div>
      <div><?php the_field('email-sub'); ?></div>
      <div><?php the_field('phone'); ?></div>
      <div><?php the_field('phone-sub'); ?></div>


		<?php endwhile; endif; ?>

	</div>

</div>

<?php get_footer(); ?>
