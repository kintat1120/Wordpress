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

// Equivalent to endsWith
if (substr_compare($timber_post->post_name, "suggestion", -strlen("suggestion")) === 0){
    $context['cookies'] = $_COOKIE;
    $context['advices'] = json_decode(file_get_contents("wp-content/themes/starter-theme-1.x/static/form/landForm.json"), true)['advice'];
    //$context['advices'] = json_decode(file_get_contents("wp-content/Wordpress/starter-theme-1.x/static/form/landForm.json"), true)['advice'];

    // var_dump($context['advices']);
}

//show 3 recent posts
$context['recentPost'] = new Timber\PostQuery(array(
    'post_type' => 'post',
    'posts_per_page' => 9, //how many recent pages want to show
));

//var_dump($context['recentPost']);
$args_cp = array(
    'post_type' => 'post',
    'posts_per_page' => 8,
);
$current_url =  home_url( $wp->request );
$context['currentURL'] = $current_url;
//var_dump($context['currentURL']);
$context['allPost'] = new Timber\PostQuery($args_cp);
//var_dump($context['allPost']);
Timber::render( array( 'page-' . $timber_post->post_name . '.twig', 'page.twig' ), $context );




