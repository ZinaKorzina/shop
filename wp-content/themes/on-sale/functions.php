<?php
	/**
		* onsale engine room
		*
		* @package onsale
	*/
	
	/**
		* Initialize all the things.
	*/
	require get_stylesheet_directory() . '/inc/init.php';
	
	add_action('wp_enqueue_scripts', 'plug_bootstrap_script');
	
    function plug_bootstrap_script() {
        wp_register_script('bootstrap-script','https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js');
        wp_enqueue_script('bootstrap-script');
	}
	
	add_action('wp_print_styles', 'add_bootsrtap_style');
	
	function add_bootsrtap_style() {
		wp_register_style('bootastrap_stylesheet', 'https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css');
		wp_enqueue_style('bootastrap_stylesheet');
	}
	
	add_action('wp_print_styles', 'add_fontawesome');
	
	function add_fontawesome() {
		wp_register_style('fontawesome', 'https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css');
		wp_enqueue_style('fontawesome');
	}
	
	
	
	
