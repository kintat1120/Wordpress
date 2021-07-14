<?php
/**
 * The template for displaying all pages.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site will use a
 * different template.
 *
 * To generate specific templates for your pages you can use:
 * /mytheme/templates/page-mypage.twig
 * (which will still route through this PHP file)
 * OR
 * /mytheme/page-mypage.php
 * (in which case you'll want to duplicate this file and save to the above path)
 *
 * Methods for TimberHelper can be found in the /lib sub-directory
 *
 * @package  WordPress
 * @subpackage  Timber
 * @since    Timber 0.1
 */

$context = Timber::context();

$timber_post     = new Timber\Post();
//var_dump($timber_post);
$context['post'] = $timber_post;

//Get all the post tags
$context['tags'] = Timber::get_terms('post_tag');

//show 3 recent posts
$context['recentPost'] = new Timber\PostQuery(array(
    'post_type' => 'post',
    'posts_per_page' => 3, //how many recent pages want to show
));
//var_dump($context['recentPost']);

//show all the posts
$context['allPost'] = new Timber\PostQuery(array(
    'post_type' => 'post'
));
//var_dump($context['allPost']);


Timber::render( array( 'page-' . $timber_post->post_name . '.twig', 'page.twig' ), $context );




