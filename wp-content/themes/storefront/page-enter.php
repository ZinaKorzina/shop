<?php
/**
 * The template for displaying all pages.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site will use a
 * different template.
 *
 * @package storefront
 * Template Name: Enter
 */

get_header(); ?>

	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">

			<?php while ( have_posts() ) : the_post(); ?>

				<?php
				do_action( 'storefront_page_before' );
				?>
                                <?php if(!is_user_logged_in()):?>
                                <p class="wppb-alert">Еще нет аккаунта? <a href="<?php echo site_url()."/регистрация/";  ?>" class="wppb-logout-url" title="Регистрация">Зарегистрируйтесь »</a></p>
                                <?php endif; ?>
				<?php get_template_part( 'content', 'page' ); ?>

				<?php
				/**
				 * @hooked storefront_display_comments - 10
				 */
				do_action( 'storefront_page_after' );
				?>

			<?php endwhile; // end of the loop. ?>

		</main><!-- #main -->
	</div><!-- #primary -->

<?php do_action( 'storefront_sidebar' ); ?>
<?php get_footer(); ?>
