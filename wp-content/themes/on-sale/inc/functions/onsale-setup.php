<?php
/**
 * onsale setup functions
 *
 * @package onsale
 */


function onsale_theme_setup() {
	add_image_size( 'onsale-thumb-400', 400, 400, true );
	add_image_size( 'onsale-slider-600', 600, 600, true );
}

function onsale_google_fonts() {
	wp_enqueue_style('onsale-googleFonts', '//fonts.googleapis.com/css?family=Roboto:400,300,400italic,500,700,900');
}

/**
 * Enqueue scripts and styles.
 * @since  1.0.0
 */
function onsale_scripts() {

	wp_enqueue_style( 'onsale-flexslider-css', get_stylesheet_directory_uri() . '/css/flexslider.min.css', array(), '' );

	wp_enqueue_style( 'storefront-style', get_template_directory_uri() . '/style.css' ); //parent style

	wp_enqueue_style( 'onsale-style', get_stylesheet_uri(), array('storefront-style') ); // child style

	if ( class_exists( 'WooCommerce' ) ) { 
		wp_enqueue_script( 'onsale-flexslider-js', get_stylesheet_directory_uri() . '/js/jquery.flexslider-min.js', array(), '', true );
	
		wp_enqueue_script( 'onsale-main-flex', get_stylesheet_directory_uri() . '/js/main-flex.js', array(), '', true );
	}
	wp_enqueue_script( 'onsale-main-nav', get_stylesheet_directory_uri() . '/js/main-nav.js', array(), '', true );
}

//Sidebar Widget
if (function_exists('register_sidebar')) {
    register_sidebar( array(
		'name'          => __( 'Homepage Sidebar', 'onsale' ),
		'id'            => 'homepage-sidebar',
		'description'   => esc_html__( 'Home Page Widget Area', 'onsale' ),
		'before_widget' => '<aside id="%1$s" class="widget %2$s">',
		'after_widget'  => '</aside>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
	register_sidebar( array(
		'name'          => __( 'Product Page Sidebar', 'onsale' ),
		'id'            => 'product-sidebar',
		'description'   => esc_html__( 'Product Page Widget Area', 'onsale' ),
		'before_widget' => '<aside id="%1$s" class="widget %2$s">',
		'after_widget'  => '</aside>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
	register_sidebar( array(
		'name'          => __( 'Post Sidebar', 'onsale' ),
		'id'            => 'post-sidebar',
		'description'   => esc_html__( 'Single Post Widget Area', 'onsale' ),
		'before_widget' => '<aside id="%1$s" class="widget %2$s">',
		'after_widget'  => '</aside>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
}

function onsale_remove_widgets(){

	// Unregister some of the TwentyTen sidebars
	unregister_sidebar( 'sidebar-1' );

}