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
    'banner',
	'cta',
	'equipe_cabecalho',
	'equipe_dados',
	'contato',
	'rodape',
	'projeto_conteudo',
));

add_theme_support('title-tag');






?>