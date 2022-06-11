<?php
/**
 * Template for displaying all single posts
 *
 * @package WordPress
 * @subpackage Twenty_Ten
 * @since Twenty Ten 1.0
 */

get_header(); ?>

		
		
		<section class="page-title page-title-blank-2 bg-white" id="page-title">
		   <div class="container">
			  <div class="row">
				 <div class="col-12">
					<div class="breadcrumb-wrap">
					   <ol class="breadcrumb">
						  <li class="breadcrumb-item"><a href="<?php echo get_home_url(); ?>">Home</a></li>
						  <li class="breadcrumb-item"><a href="<?php echo get_home_url(); ?>/blog/">blog</a></li>
						  <li class="breadcrumb-item active" aria-current="page"><?php the_title();  ?></li>
					   </ol>
					</div>
				 </div>
			  </div>
		   </div>
		</section>
		
		
		
		
		<section class="blog blog-single" id="blog">
		   <div class="container">
			  <div class="row">
			  
			  
			  
				 <div class="col-sm-12 col-md-12 col-lg-8">
					<div class="blog-entry">
					
					
						<?php
						/*
						 * Run the loop to output the post.
						 * If you want to overload this in a child theme then include a file
						 * called loop-single.php and that will be used instead.
						 */
						get_template_part( 'loop', 'single' );
						?>
					   
					   
					</div>
				 </div>
				 
				 
				 
				<?php get_sidebar(); ?>
				 
				 
			  </div>
		   </div>
		</section>

			

<?php get_footer(); ?>
