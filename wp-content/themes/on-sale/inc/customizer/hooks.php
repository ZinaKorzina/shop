<?php
/**
 * On Sale customizer hooks
 *
 * @package onsale
 */

add_action( 'wp_enqueue_scripts', 									'onsale_add_customizer_css');

add_action( 'customize_preview_init', 								'onsale_customize_preview_js' );

add_action( 'customize_register', 									'onsale_customize_storefront_controls');

/**
 * Customizer default color tweaks
 */
add_filter( 'storefront_default_accent_color', 						'onsale_accent_color' );
add_filter( 'storefront_default_header_background_color', 			'onsale_dark_color' );
add_filter( 'storefront_default_text_color', 						'onsale_dark_color' );
add_filter( 'storefront_default_header_text_color', 				'onsale_accent_color' );
add_filter( 'storefront_default_header_link_color', 				'onsale_white_color' );
add_filter( 'storefront_default_button_background_color', 			'onsale_accent_color' );
add_filter( 'storefront_default_footer_background_color', 			'onsale_dark_color' );
add_filter( 'storefront_default_footer_heading_color', 				'onsale_white_color' );
add_filter( 'storefront_default_footer_text_color', 				'onsale_white_color' );
add_filter( 'storefront_default_footer_link_color', 				'onsale_white_color' );
add_filter( 'storefront_default_button_alt_background_color', 		'onsale_alt_color' );