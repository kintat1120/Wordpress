<?php
/**
 * The template for displaying Archive pages.
 *
 * Used to display archive-type pages if nothing more specific matches a query.
 * For example, puts together date-based pages if no date.php file exists.
 *
 * Learn more: http://codex.wordpress.org/Template_Hierarchy
 *
 * Methods for TimberHelper can be found in the /lib sub-directory
 *
 * @package  WordPress
 * @subpackage  Timber
 * @since   Timber 0.2
 */

$templates = array( 'archive.twig', 'index.twig' );

$context = Timber::context();

$context['title'] = 'Archive';
if ( is_day() ) {
	$context['title'] = 'Archive: ' . get_the_date( 'D M Y' );
} elseif ( is_month() ) {
	$context['title'] = 'Archive: ' . get_the_date( 'M Y' );
} elseif ( is_year() ) {
	$context['title'] = 'Archive: ' . get_the_date( 'Y' );
} elseif ( is_tag() ) {
	$context['title'] = single_tag_title( '', false );
} elseif ( is_category() ) {
	$context['title'] = single_cat_title( '', false );
	array_unshift( $templates, 'archive-' . get_query_var( 'cat' ) . '.twig' );
} elseif ( is_post_type_archive() ) {
	$context['title'] = post_type_archive_title( '', false );
	array_unshift( $templates, 'archive-' . get_post_type() . '.twig' );
}
//get post under this tag
$context['posts'] = new Timber\PostQuery();
//get all tags
$context['tags'] = Timber::get_terms('post_tag');

/* tag page pagination set by wordpress panel
	WP Dashboard > Settings > Reading is set to 10 (Post Number) <=Blog pages show at most
*/
$current_url =  home_url( $wp->request );
$context['currentURL'] = $current_url;
$context['pagination'] = $context['posts']->pagination(3);
/*global $paged;
if (!isset($paged) || !$paged){
	$paged = 1;
}
$context = Timber::context();
$args = array(
	'post_type' => 'post',
	'posts_per_page' => 5,
	'paged' => $paged
);
$context['posts'] = new Timber\PostQuery($args);
var_dump($context['posts']);*/

Timber::render( $templates, $context );
