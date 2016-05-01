<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after
 *
 * @package onsale
 */
?>

		</div><!-- .col-full -->
	</div><!-- #content -->

	<?php do_action( 'storefront_before_footer' ); ?>

	<?//php echo do_shortcode('[contact-form-7 id="47" title="Контактная форма 1"]'); ?>
	<footer id="colophon" class="site-footer" role="contentinfo">

		<?php if( class_exists( 'WooCommerce' ) ): ?>
		<?php if(!is_cart() && !is_checkout()): ?>
		<div class="col-full">

			<?php
			/**
			 * @hooked storefront_footer_widgets - 10
			 * 
			 */
			do_action( 'onsale_footer_widgets' ); ?>

		</div><!-- .col-full -->
		<?php endif; ?>
		<?php endif; ?>
		<div class="credits-area">
			<div class="col-full">
			<?php
			/**
			 * @hooked onsale_credit - 20
			 * 
			 */
			do_action( 'onsale_credit_area' ); ?>

			</div><!-- .col-full -->

		</div>
	</footer><!-- #colophon -->

	<?php do_action( 'storefront_after_footer' ); ?>

</div><!-- #page -->

<?php wp_footer(); ?>

<!-- BEGIN JIVOSITE CODE {literal} -->
<script type='text/javascript'>
(function(){ var widget_id = 'YHXOtZevhf';var d=document;var w=window;function l(){
var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true; s.src = '//code.jivosite.com/script/widget/'+widget_id; var ss = document.getElementsByTagName('script')[0]; ss.parentNode.insertBefore(s, ss);}if(d.readyState=='complete'){l();}else{if(w.attachEvent){w.attachEvent('onload',l);}else{w.addEventListener('load',l,false);}}})();</script>
<!-- {/literal} END JIVOSITE CODE -->

</body>
</html>