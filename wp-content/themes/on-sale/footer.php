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

<?php //echo do_shortcode('[contact-form-7 id="47" title="Контактная форма 1"]'); ?>
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
			<div class="row">
				<div class="col-md-3">
					<div class="footer-title">Магазин одежды это:</div>
					<ul class="about">
						<li>Свыше 1000 довольных покупателей</li>
						<li>Ежедневные заказы</li>
						<li>Индивидуальный подход</li>
						<li>Гарантия качества</li>
						<li>Доставка во все уголки страны</li>
					</ul>
					<div class="socials">
						<div class="col-md-4">
							<a class="fa fa-vk" href="http://vk.com/" rel="nofollow" target="_blanc" aria-hidden="true"></a>
						</div>
						<div class="col-md-4">
							<a class="fa fa-facebook" href="http://facebook.com/" rel="nofollow" target="_blanc" aria-hidden="true"></a>
						</div>
						<div class="col-md-4">
							<a class="fa fa-twitter" href="http://odnoklassniki.ru/" rel="nofollow" target="_blanc" aria-hidden="true"></a>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="footer-title">Обратная связь:</div>
					<ul>
						<li>(Kyivstar): <a href="tel:0985322555">(098)5322555</a></li>
						<li>(Vodafone): <a href="tel:0645322555">(064)5322555</a></li>
						<li>(Lifecell): <a href="tel:0635322555">(063)5322555</a></li>
					</ul>
					Вы можете связаться с нами по e-mail: <a href="mailto:<?php echo get_option('admin_email'); ?>"><?php echo get_option('admin_email'); ?></a>
				</div>
				<div class=col-md-3>
					<div class="footer-title">
						Разделы сайта:
					</div>
					<?php wp_nav_menu(); ?>
				</div>
				<div class=col-md-3>
					<div class="footer-title">
						Облако тегов:
					</div>
					<?php 
					echo wp_tag_cloud(array(
						'taxonomy'=>'product_tag'
					)); 
					?>
				</div>
			</div>
			<div class="site-info">
				© Магазин одежды 2016					
			</div><!-- .site-info -->
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