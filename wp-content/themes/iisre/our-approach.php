 <?php
 /* Template name:  Our Approach */

get_header(); ?>

		
		 
        




	<section class="page-title page-title-1" id="page-title">
		<div class="page-title-wrap bg-overlay bg-overlay-dark-2">
			<div class="bg-section"><img src="<?php echo bloginfo('template_url');  ?>/assets/images/rainbow.jpg" alt="Background" /></div>
			<div class="container">
				<div class="row">
					<div class="col-12 col-lg-5">
						<div class="title">
							<h1 class="title-heading">Our Approach</h1>
						</div>
					</div>
				</div>
			</div>
		</div>
	<div class="breadcrumb-wrap">
		<div class="container">
			<ol class="breadcrumb d-flex">
				<li class="breadcrumb-item"><a href="<?php echo get_home_url(); ?>/">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Our Approach</li>
			</ol>

		</div>
	</div>

	</section>


	<section class="about about-1" id="about-1">
		<div class="container">
			<div class="row">
				<div class="col-12 col-lg-5">
					<div class="about-img">
						<div class="about-img-holder bg-overlay">
							<div class="bg-section"><img src="<?php echo bloginfo('template_url');  ?>/assets/images/about/1.jpg" alt="about Image" /></div>
						</div>
					</div>
				</div>
				<div class="col-12 col-lg-7">
					
				<?php $the_query = new WP_Query( 'page_id=92' ); ?>
				<?php while ($the_query -> have_posts()) : $the_query -> the_post();  ?>
				<?php the_content(); ?>
				 <?php endwhile;?>
				 
				</div>
			</div>
		</div>
	</section>



		 
 
		 
		 
<?php get_footer(); ?>	