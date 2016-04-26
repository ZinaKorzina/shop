<?php
/**
 * The sidebar containing the main widget area.
 *
 * @package onsale
 */

if ( is_active_sidebar( 'post-sidebar' ) ) {
?>

<div id="secondary" class="widget-area" role="complementary">
	<?php dynamic_sidebar( 'post-sidebar' ); ?>
</div><!-- #secondary -->

<?php } ?>