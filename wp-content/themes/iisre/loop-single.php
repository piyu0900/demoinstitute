<?php
/**
 * The loop that displays a single post
 *
 * The loop displays the posts and the post content. See
 * https://codex.wordpress.org/The_Loop to understand it and
 * https://codex.wordpress.org/Template_Tags to understand
 * the tags used in it.
 *
 * This can be overridden in child themes with loop-single.php.
 *
 * @package WordPress
 * @subpackage Twenty_Ten
 * @since Twenty Ten 1.2
 */
?>

<?php
if ( have_posts() ) {
	while ( have_posts() ) :
		the_post();
	?>

				<div id="post-<?php the_ID(); ?>" class="entry-img">
						  <img src="<?php the_post_thumbnail_url(array()); ?>" alt="entry image" />
						  <div class="entry-meta">
							 <div class="entry-date"> <span class="date"><?php echo get_the_date(); ?></span></div>
						  </div>
				</div>

				<div class="entry-content">
						  <div class="entry-title">
							 <h4><?php the_title(); ?></h4>
						  </div>
						  <div class="entry-bio">
							<?php the_content(); ?>
						  </div>
					   </div>
				
					
					<?php //comments_template( '', true ); ?>

	<?php endwhile;
}; // end of the loop. ?>
