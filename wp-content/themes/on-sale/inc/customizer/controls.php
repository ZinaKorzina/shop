<?php
/**
 * On Sale Customizer controls
 *
 * @package onsale
 */

/**
 * Customize some of the default Storefront controls.
 * @return void
 */
function onsale_customize_storefront_controls( $wp_customize ) {
	
		/**
		 * Header Top Background
		 */
		$wp_customize->add_setting( 'onsale_header_top_background_color', array(
			'default'           => apply_filters( 'onsale_default_header_top_background_color', '#242424' ),
			'sanitize_callback' => 'storefront_sanitize_hex_color',
			'transport'			=> 'postMessage',
		) );

		$wp_customize->add_control( new WP_Customize_Color_Control( $wp_customize, 'onsale_header_top_background_color', array(
			'label'	   => __( 'Top Background color', 'onsale' ),
			'section'  => 'header_image',
			'settings' => 'onsale_header_top_background_color',
			'priority' => 10,
		) ) );

		/**
		 * Header Top text color
		 */
		$wp_customize->add_setting( 'onsale_header_top_text_color', array(
			'default'           => apply_filters( 'onsale_default_header_top_text_color', '#ffffff' ),
			'sanitize_callback' => 'storefront_sanitize_hex_color',
			'transport'			=> 'postMessage',
		) );

		$wp_customize->add_control( new WP_Customize_Color_Control( $wp_customize, 'onsale_header_top_text_color', array(
			'label'	   => __( 'Top Text color', 'onsale' ),
			'section'  => 'header_image',
			'settings' => 'onsale_header_top_text_color',
			'priority' => 12,
		) ) );

		$wp_customize->add_section( 'onsale_slider_section' , array(
	      'title'       => __( 'Slider Options', 'onsale' ),
	      'priority'    => 33,
	      'description' => __( 'Product Slider', 'onsale' ),
	    ) );
	    
	    $wp_customize->add_setting( 'onsale_slider_area', array(
	      'default' => 'recent',
	      'sanitize_callback' => 'sanitize_text_field',
	    ));
	    
	    $wp_customize->add_control( 'effect_select_box', array(
	      'settings' => 'onsale_slider_area',
	      'label' => __( 'What products to show:', 'onsale' ),
	      'section' => 'onsale_slider_section',
	      'type' => 'select',
	      'choices' => array(
	        'featured' => 'Featured Products',
	        'total_sales' => 'Best Selling Products',
	        'recent' => 'Recent Products',
	        'top_rated' => 'Top Rated Products',
	        'sale' => 'On Sale Products',
	      ),
	      'priority' => 12,
	    ));

	    $wp_customize->add_setting( 'onsale_slider_num_show', array (
	    	'default' => 5,
      		'sanitize_callback' => 'onsale_check_number',
	    ) );
	    
	    $wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'onsale_slider_num_show', array(
	      'label'    => __( 'Products show at most', 'onsale' ),
	      'section'  => 'onsale_slider_section',
	      'settings' => 'onsale_slider_num_show',
	      'priority'    => 10,
	    ) ) );


		/**
		 * Footer Background
		 */
		$wp_customize->add_setting( 'onsale_footer_credits_background_color', array(
			'default'           => apply_filters( 'onsale_default_footer_credits_background_color', '#242424' ),
			'sanitize_callback' => 'storefront_sanitize_hex_color',
			'transport'			=> 'postMessage',
		) );

		$wp_customize->add_control( new WP_Customize_Color_Control( $wp_customize, 'onsale_footer_credits_background_color', array(
			'label'	   => __( 'Top Background color', 'onsale' ),
			'section'  => 'storefront_footer',
			'settings' => 'onsale_footer_credits_background_color',
			'priority' => 50,
		) ) );

		/**
		 * Social Media Icons
		 */
	    $wp_customize->add_section( 'onsale_social_section' , array(
	      'title'       => __( 'Social Media Icons', 'onsale' ),
	      'priority'    => 42,
	      'description' => __( 'Optional media icons in the header', 'onsale' ),
	    ) );
	    
	    $wp_customize->add_setting( 'onsale_facebook', array (
      		'sanitize_callback' => 'esc_url_raw',
	    ) );
	    
	    $wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'onsale_facebook', array(
	      'label'    => __( 'Enter your Facebook url', 'onsale' ),
	      'section'  => 'onsale_social_section',
	      'settings' => 'onsale_facebook',
	      'priority'    => 101,
	    ) ) );
	  
	    $wp_customize->add_setting( 'onsale_twitter', array (
	      'sanitize_callback' => 'esc_url_raw',
	    ) );
	    
	    $wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'onsale_twitter', array(
	      'label'    => __( 'Enter your Twitter url', 'onsale' ),
	      'section'  => 'onsale_social_section',
	      'settings' => 'onsale_twitter',
	      'priority'    => 102,
	    ) ) );
	    
	    $wp_customize->add_setting( 'onsale_google', array (
	      'sanitize_callback' => 'esc_url_raw',
	    ) );
	    
	    $wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'onsale_google', array(
	      'label'    => __( 'Enter your Google+ url', 'onsale' ),
	      'section'  => 'onsale_social_section',
	      'settings' => 'onsale_google',
	      'priority'    => 103,
	    ) ) );
	    
	    $wp_customize->add_setting( 'onsale_pinterest', array (
	      'sanitize_callback' => 'esc_url_raw',
	    ) );
	    
	    $wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'onsale_pinterest', array(
	      'label'    => __( 'Enter your Pinterest url', 'onsale' ),
	      'section'  => 'onsale_social_section',
	      'settings' => 'onsale_pinterest',
	      'priority'    => 104,
	    ) ) );
	    
	    $wp_customize->add_setting( 'onsale_linkedin', array (
	      'sanitize_callback' => 'esc_url_raw',
	    ) );
	    
	    $wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'onsale_linkedin', array(
	      'label'    => __( 'Enter your Linkedin url', 'onsale' ),
	      'section'  => 'onsale_social_section',
	      'settings' => 'onsale_linkedin',
	      'priority'    => 105,
	    ) ) );
	    
	    $wp_customize->add_setting( 'onsale_youtube', array (
	      'sanitize_callback' => 'esc_url_raw',
	    ) );
	    
	    $wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'onsale_youtube', array(
	      'label'    => __( 'Enter your Youtube url', 'onsale' ),
	      'section'  => 'onsale_social_section',
	      'settings' => 'onsale_youtube',
	      'priority'    => 106,
	    ) ) );
	    
	    $wp_customize->add_setting( 'onsale_tumblr', array (
	      'sanitize_callback' => 'esc_url_raw',
	    ) );
	    
	    $wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'onsale_tumblr', array(
	      'label'    => __( 'Enter your Tumblr url', 'onsale' ),
	      'section'  => 'onsale_social_section',
	      'settings' => 'onsale_tumblr',
	      'priority'    => 107,
	    ) ) );
	    
	    $wp_customize->add_setting( 'onsale_instagram', array (
	      'sanitize_callback' => 'esc_url_raw',
	    ) );
	    
	    $wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'onsale_instagram', array(
	      'label'    => __( 'Enter your Instagram url', 'onsale' ),
	      'section'  => 'onsale_social_section',
	      'settings' => 'onsale_instagram',
	      'priority'    => 108,
	    ) ) );
	    
	    $wp_customize->add_setting( 'onsale_flickr', array (
	      'sanitize_callback' => 'esc_url_raw',
	    ) );
	    
	    $wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'onsale_flickr', array(
	      'label'    => __( 'Enter your Flickr url', 'onsale' ),
	      'section'  => 'onsale_social_section',
	      'settings' => 'onsale_flickr',
	      'priority'    => 109,
	    ) ) );
	    
	    $wp_customize->add_setting( 'onsale_vimeo', array (
	      'sanitize_callback' => 'esc_url_raw',
	    ) );
	    
	    $wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'onsale_vimeo', array(
	      'label'    => __( 'Enter your Vimeo url', 'onsale' ),
	      'section'  => 'onsale_social_section',
	      'settings' => 'onsale_vimeo',
	      'priority'    => 110,
	    ) ) );
	    
	    $wp_customize->add_setting( 'onsale_rss', array (
	      'sanitize_callback' => 'esc_url_raw',
	    ) );
	    
	    $wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'onsale_rss', array(
	      'label'    => __( 'Enter your RSS url', 'onsale' ),
	      'section'  => 'onsale_social_section',
	      'settings' => 'onsale_rss',
	      'priority'    => 112,
	    ) ) );
	    
}
