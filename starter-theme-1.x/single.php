<?php
/**
 * The Template for displaying all single posts
 *
 * Methods for TimberHelper can be found in the /lib sub-directory
 *
 * @package  WordPress
 * @subpackage  Timber
 * @since    Timber 0.1
 */

$context         = Timber::context();
$timber_post     = Timber::get_post();
//Get post information
$context['post'] = $timber_post;
//Get post tags
$context['tags'] = Timber::get_terms('post_tag');
//var_dump($context['post']->tags);
//var_dump($context['post']);
//$tag_names = array("移民須知");
/*
foreach($context['post']->tags as $tag){
    array_push($tag_names, $tag->name);
    //var_dump($tag->name);
}*/
//var_dump($tag_names);

/*$context['relatedPost'] = new Timber\PostQuery(array(
    'post_type' => 'post',
    'post_tags'     => array( $tag_names ),
    'posts_per_page' => 3, //how many recent pages want to show
));
var_dump($context['relatedPost']);
*/

//show 2 more posts
$context['morePost'] = new Timber\PostQuery(array(
    'post_type' => 'post',
    'posts_per_page' => 2, //how many recent pages want to show
));

//get all posts
$context['allPost'] = new Timber\PostQuery(array(
    'post_type' => 'post',
    'posts_per_page' => 100
));
$current_url =  home_url( $wp->request );
$context['currentURL'] = $current_url;
if ( post_password_required( $timber_post->ID ) ) {
	Timber::render( 'single-password.twig', $context );
} else {
	Timber::render( array( 'single-' . $timber_post->ID . '.twig', 'single-' . $timber_post->post_type . '.twig', 'single-' . $timber_post->slug . '.twig', 'single.twig' ), $context );
}
