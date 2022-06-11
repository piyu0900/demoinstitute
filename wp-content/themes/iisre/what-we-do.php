 <?php
 /* Template name: What We Do */

get_header(); ?>

		
		 
    <section class="page-title page-title-1" id="page-title">
		<div class="page-title-wrap bg-overlay bg-overlay-dark-2">
			<div class="bg-section"><img src="<?php echo bloginfo('template_url');  ?>/assets/images/rainbow.jpg" alt="Background" /></div>
			<div class="container">
				<div class="row">
					<div class="col-12 col-lg-5">
						<div class="title">
							<h1 class="title-heading">WHAT WE DO</h1>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="breadcrumb-wrap">
			<div class="container">
				<ol class="breadcrumb d-flex">
					<li class="breadcrumb-item"><a href="<?php echo get_home_url(); ?>/">Home</a></li>
					<li class="breadcrumb-item active" aria-current="page">WHAT WE DO</li>
				</ol>

			</div>
		</div>

	</section>
    

 <section class="services services-1 bg-grey" id="services-1">
		
	 <div class="container">
               <div class="" style="width: 100%;">
                   <?php
					$args = array( 
															  
					'post_type' => 'service', 
					'post_status' => 'publish',                // - post is in trashbin (available with Version 2.9).
					'order' => 'ASC',                      //(string) - Designates the ascending or descending order of the 'orderby' parameter. Defaultto 'DESC'.
					'orderby' => 'date',                    //(string) - Sort retrieved posts by parameter. Defaults to 'date'.
					);
															
					$the_query = new WP_Query( $args );
					// The Loop
					if ( $the_query->have_posts() ) :
					while ( $the_query->have_posts() ) : $the_query->the_post();
					?>
				  <div style="width: 372px;float: left;padding-right: 15px;">
                     <div class="service-panel">
                        <div class="service-icon"><i class="flaticon-004-solar-panel"></i></div>
                        <div class="service-content">
                           <h4><a><?php the_title();  ?></a></h4>
                           <?php the_content(); ?>
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