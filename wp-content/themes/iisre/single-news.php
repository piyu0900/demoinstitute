 <?php
/**
 * Template for displaying all single news
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
						  <li class="breadcrumb-item"><a href="<?php echo get_home_url(); ?>/news-and-events/">News & Events</a></li>
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

					   
					   
					</div>
				 </div>
				 
				 
				 
				
				<?php  get_sidebar('news');  ?>
				 
				 
			  </div>
		   </div>
		</section>

			

<?php get_footer(); ?>
