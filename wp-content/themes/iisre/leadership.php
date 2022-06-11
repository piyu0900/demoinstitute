
 <?php
 /* Template name:  Leadership Team */

get_header(); ?>

		
		 
        







	<section class="page-title page-title-3" id="page-title">
		<div class="page-title-wrap bg-overlay bg-overlay-dark-2">
			<div class="bg-section"><img src="<?php echo bloginfo('template_url');  ?>/assets/images/page-titles/3.jpg" alt="Background" /></div>
			<div class="container">
				<div class="row">
					<div class="col-12 col-lg-5">
						<div class="title">
							<h1 class="title-heading">Leadership</h1>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="breadcrumb-wrap">
			<div class="container">
				<ol class="breadcrumb d-flex">
					<li class="breadcrumb-item"><a href="<?php echo get_home_url(); ?>/">Home</a></li>
					<li class="breadcrumb-item active" aria-current="page">Leadership Team</li>
				</ol>
			</div>
		</div>
	</section>


			<section class="team team-1" id="team">
				<div class="container">
					
				<div class="row">
					<?php
						$args = array( 
															  
						'post_type' => 'team', 
						'post_status' => 'publish',                // - post is in trashbin (available with Version 2.9).
						'order' => 'ASC',                      //(string) - Designates the ascending or descending order of the 'orderby' parameter. Defaultto 'DESC'.
						'orderby' => 'date',                    //(string) - Sort retrieved posts by parameter. Defaults to 'date'.
						);
																
						$the_query = new WP_Query( $args );
						// The Loop
						if ( $the_query->have_posts() ) :
						while ( $the_query->have_posts() ) : $the_query->the_post();
						?>
						<div class=" col-12 col-md-6 col-lg-3">
							<div class="member member-2">
							<div class="member-img"><img src="<?php the_post_thumbnail_url(array(80*80)); ?>" /></div>

							<div class="member-content">
							<div class="member-info"><a href="javascript:void(0)"><?php the_title(); ?></a>
							<h6><?php the_content(); ?></h6>
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




