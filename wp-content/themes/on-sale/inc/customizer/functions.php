<?php
/**
 * On Sale Theme Customizer functions
 *
 * @package onsale
 */

/**
 * Binds JS handlers to make Theme Customizer preview reload changes asynchronously.
 *
 * @since  1.0.0
 */

	function onsale_customize_preview_js() {
		wp_enqueue_script( 'onsale_customizer', get_stylesheet_directory_uri() . '/inc/customizer/js/customizer.min.js', array( 'customize-preview' ), '1.15', true );
	}


	/* social icons*/
	function onsale_social_icons()  { 

		$social_networks = array( array( 'name' => __('Facebook','onsale'), 'theme_mode' => 'onsale_facebook','icon' => 'fa-facebook' ),
		array( 'name' => __('Twitter','onsale'), 'theme_mode' => 'onsale_twitter','icon' => 'fa-twitter' ),
		array( 'name' => __('Google+','onsale'), 'theme_mode' => 'onsale_google','icon' => 'fa-google-plus' ),
		array( 'name' => __('Pinterest','onsale'), 'theme_mode' => 'onsale_pinterest','icon' => 'fa-pinterest' ),
		array( 'name' => __('Linkedin','onsale'), 'theme_mode' => 'onsale_linkedin','icon' => 'fa-linkedin' ),
		array( 'name' => __('Youtube','onsale'), 'theme_mode' => 'onsale_youtube','icon' => 'fa-youtube' ),
		array( 'name' => __('Tumblr','onsale'), 'theme_mode' => 'onsale_tumblr','icon' => 'fa-tumblr' ),
		array( 'name' => __('Instagram','onsale'), 'theme_mode' => 'onsale_instagram','icon' => 'fa-instagram' ),
		array( 'name' => __('Flickr','onsale'), 'theme_mode' => 'onsale_flickr','icon' => 'fa-flickr' ),
		array( 'name' => __('Vimeo','onsale'), 'theme_mode' => 'onsale_vimeo','icon' => 'fa-vimeo-square' ),
		array( 'name' => __('RSS','onsale'), 'theme_mode' => 'onsale_rss','icon' => 'fa-rss' )
		);


		for ($row = 0; $row < 11; $row++){
			if (get_theme_mod( $social_networks[$row]["theme_mode"])): ?>
				<a href="<?php echo esc_url( get_theme_mod($social_networks[$row]['theme_mode']) ); ?>" class="social-tw" title="<?php echo esc_url( get_theme_mod( $social_networks[$row]['theme_mode'] ) ); ?>" target="_blank">
				<span class="fa <?php echo $social_networks[$row]['icon']; ?>"></span> 
				</a>
			<?php endif;
		}
                      
	}

	function onsale_check_number( $value ) {
	    $value = (int) $value; // Force the value into integer type.
	    return ( 0 < $value ) ? $value : null;
	}