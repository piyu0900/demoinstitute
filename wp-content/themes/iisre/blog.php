
 <?php
 /* Template name:  Blog */

get_header(); ?>

		
		 



		<section class="page-title page-title-13" id="page-title">
		   <div class="page-title-wrap bg-overlay bg-overlay-dark-3">
			  <div class="bg-section"><img src="<?php echo bloginfo('template_url');  ?>/assets/images/page-titles/13.jpg" alt="Background" /></div>
			  <div class="container">
				 <div class="row">
					<div class="col-12 col-lg-6 offset-lg-3">
					   <div class="title text-center">
						  <h1 class="title-heading">Blogs</h1>
					   </div>
					</div>
				 </div>
			  </div>
		   </div>
		</section>
		<section class="blog blog-grid blog-grid-5" id="blog">
		   <div class="container">
			  <div class="row">
			  
			  
				<?php
				$args = array( 
															  
					'post_type' => 'post', 
					'post_status' => 'publish',                // - post is in trashbin (available with Version 2.9).
					'cat' => '3',
					'order' => 'ASC',                      //(string) - Designates the ascending or descending order of the 'orderby' parameter. Defaultto 'DESC'.
					'orderby' => 'date',                    //(string) - Sort retrieved posts by parameter. Defaults to 'date'.
					);
																
					$the_query = new WP_Query( $args );
					// The Loop
					if ( $the_query->have_posts() ) :
					while ( $the_query->have_posts() ) : $the_query->the_post();
					?>
			  
				 <div class="col-12 col-md-6 col-lg-4">
					<div class="blog-entry" data-hover="">
					   <div class="entry-content">
						  <div class="entry-meta">
							 <div class="entry-date"><span class="day"><?php echo get_the_date(); ?></div>
						  </div>
						  <div class="entry-title">
							 <h4><a href="<?php the_permalink(); ?>"><?php the_title();  ?></a></h4>
						  </div>
						  <div class="entry-img-wrap">
							 <div class="entry-img"><a href="<?php the_permalink(); ?>"><img src="<?php the_post_thumbnail_url(array(350*350)); ?>" alt="" /></a></div>
						  </div>
						  <div class="entry-bio">
							<?php
							$content = apply_filters( 'the_content', get_the_content() );
							echo $small = substr($content, 0, 200);
							?>
						  </div>
						  <div class="entry-more"> <a class="btn btn--white btn-bordered" href="<?php the_permalink(); ?>">read more <i class="energia-arrow-right"></i></a></div>
					   </div>
					</div>
				 </div>
				 <?php
					endwhile;
					endif;
				?>
				 
				 
				 
			  </div>

		   </div>
		</section>




	 
 
		 
		 
<?php get_footer(); ?>	









