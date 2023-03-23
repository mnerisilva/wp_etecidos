<?php



add_filter('single_template', 'create_single_template');

function create_single_template( $template ) {
	global $post;

	$categories = get_the_category();
	// caso não tenhamos categoria retornamos o template default.
	if ( ! $categories )
			return $template; 

	//resgatando o post type
	$post_type = get_post_type( $post->ID );

	$templates = array();

	foreach ( $categories as $category ) {
			// adicionando templates por id e slug
			$templates[] = "single-{$post_type}-{$category->slug}.php";
			$templates[] = "single-{$post_type}-{$category->term_id}.php";
	}

	// adicionando os templates padrões
	$templates[] = "single-{$post_type}.php";
	$templates[] = 'single.php';
	$templates[] = 'singular.php';
	$templates[] = 'index.php';

	return locate_template( $templates );
}


add_theme_support('post-thumbnails', array(
    'post',
    'page',
    'custom-post-type-name',
));

add_theme_support('title-tag');

function cptui_register_my_cpts() {

	/**
	 * Post Type: Vídeos Hero.
	 */

	$labels = [
		"name" => esc_html__( "Vídeos Hero", "ericatecidos" ),
		"singular_name" => esc_html__( "Vídeo Hero", "ericatecidos" ),
	];

	$args = [
		"label" => esc_html__( "Vídeos Hero", "ericatecidos" ),
		"labels" => $labels,
		"description" => "",
		"public" => true,
		"publicly_queryable" => true,
		"show_ui" => true,
		"show_in_rest" => true,
		"rest_base" => "",
		"rest_controller_class" => "WP_REST_Posts_Controller",
		"rest_namespace" => "wp/v2",
		"has_archive" => false,
		"show_in_menu" => true,
		"show_in_nav_menus" => true,
		"delete_with_user" => false,
		"exclude_from_search" => false,
		"capability_type" => "post",
		"map_meta_cap" => true,
		"hierarchical" => true,
		"can_export" => false,
		"rewrite" => [ "slug" => "videohero", "with_front" => true ],
		"query_var" => true,
		"menu_icon" => "dashicons-video-alt2",
		"supports" => [ "title", "editor", "thumbnail", "page-attributes" ],
		"show_in_graphql" => false,
	];

	register_post_type( "videohero", $args );
}

add_action( 'init', 'cptui_register_my_cpts' );


function cptui_register_my_cpts_videohero() {

	/**
	 * Post Type: Vídeos Hero.
	 */

	$labels = [
		"name" => esc_html__( "Vídeos Hero", "ericatecidos" ),
		"singular_name" => esc_html__( "Vídeo Hero", "ericatecidos" ),
	];

	$args = [
		"label" => esc_html__( "Vídeos Hero", "ericatecidos" ),
		"labels" => $labels,
		"description" => "",
		"public" => true,
		"publicly_queryable" => true,
		"show_ui" => true,
		"show_in_rest" => true,
		"rest_base" => "",
		"rest_controller_class" => "WP_REST_Posts_Controller",
		"rest_namespace" => "wp/v2",
		"has_archive" => false,
		"show_in_menu" => true,
		"show_in_nav_menus" => true,
		"delete_with_user" => false,
		"exclude_from_search" => false,
		"capability_type" => "post",
		"map_meta_cap" => true,
		"hierarchical" => true,
		"can_export" => false,
		"rewrite" => [ "slug" => "videohero", "with_front" => true ],
		"query_var" => true,
		"menu_icon" => "dashicons-video-alt2",
		"supports" => [ "title", "editor", "thumbnail", "page-attributes" ],
		"show_in_graphql" => false,
	];

	register_post_type( "videohero", $args );
}

add_action( 'init', 'cptui_register_my_cpts_videohero' );




?>