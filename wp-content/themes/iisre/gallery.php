

 <?php
 /* Template name:  Gallery */

get_header(); ?>

		
		 





		<section class="page-title page-title-7" id="page-title">
		   <div class="page-title-wrap bg-overlay bg-overlay-dark-3">
			  <div class="bg-section"><img src="<?php echo bloginfo('template_url');  ?>/assets/images/page-titles/7.jpg" alt="Background" /></div>
			  <div class="container">
				 <div class="row">
					<div class="col-12 col-lg-5">
					    <div class="title">
						  <h1 class="title-heading">Gallery</h1>
						</div>
					</div>
				 </div>
			  </div>
		   </div>
		   <div class="breadcrumb-wrap">
			  <div class="container">
				 <ol class="breadcrumb d-flex">
					<li class="breadcrumb-item"><a href="<?php echo get_home_url(); ?>/">Home</a></li>
					<li class="breadcrumb-item active" aria-current="page">Gallery</li>
				 </ol>
			  </div>
		   </div>
		</section>
		<section class="projects projects-gallery">
		   <div class="container">
			  <div class="row">
				 <div class="col">
					<h3 class="d-none">Our Projects Gallery</h3>
				 </div>
			  </div>
			  <div class="row">
			  
				<?php
					$args = array( 
															  
					'post_type' => 'gallery', 
					'post_status' => 'publish',                // - post is in trashbin (available with Version 2.9).
					'order' => 'ASC',                      //(string) - Designates the ascending or descending order of the 'orderby' parameter. Defaultto 'DESC'.
					'orderby' => 'date',                    //(string) - Sort retrieved posts by parameter. Defaults to 'date'.
					);
															
					$the_query = new WP_Query( $args );
					// The Loop
					if ( $the_query->have_posts() ) :
					while ( $the_query->have_posts() ) : $the_query->the_post();
					?>
					 <div class="col-12 col-md-6 col-lg-4 team-item ">
						<div class="project-panel">
						   <div class="project-panel-holder">
							  <div class="project-img">
								 <img src="<?php the_post_thumbnail_url(array(352*352)); ?>" alt=" item" />
								 <div class="project-hover">
									<div class="project-action">
									   <div class="project-zoom"><i class="far fa-eye"></i><a class="img-gallery-item" href="<?php the_post_thumbnail_url(array()); ?>" title="wind generators item"></a></div>
									</div>
								 </div>
							  </div>
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






