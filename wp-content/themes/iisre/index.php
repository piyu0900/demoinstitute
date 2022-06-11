<?php
 /* Template name:  Home */

get_header(); ?>

		
		 
        
		 
		 
		 
         
         <section class="slider slider-1" id="slider-1">
            <div class="container-fluid pe-0 ps-0">
               <div class="slider-carousel owl-carousel carousel-navs carousel-dots" data-slide="1" data-slide-rs="1" data-autoplay="true" data-nav="true" data-dots="true" data-space="0" data-loop="true" data-speed="800">
					<?php
							$args = array( 
															  
							'post_type' => 'slider', 
							'post_status' => 'publish',                // - post is in trashbin (available with Version 2.9).
							'order' => 'ASC',                      //(string) - Designates the ascending or descending order of the 'orderby' parameter. Defaultto 'DESC'.
							'orderby' => 'date',                    //(string) - Sort retrieved posts by parameter. Defaults to 'date'.
							);
																
							$the_query = new WP_Query( $args );
							// The Loop
							if ( $the_query->have_posts() ) :
							while ( $the_query->have_posts() ) : $the_query->the_post();
						?>
						   
						  <div class="slide bg-overlay bg-overlay-dark-slider">
							 <div class="bg-section"><img src="<?php the_post_thumbnail_url(array()); ?>" alt="Background" /></div>
							 <div class="container">
								<div class="row">
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
         <section class="about about-1" id="about-1">
            <div class="container">
               <div class="row">
                  <div class="col-12 col-lg-5">
                     <div class="about-img">
                        <div class="about-img-holder bg-overlay">
                           <div class="bg-section"><img src="<?php echo bloginfo('template_url');  ?>/assets/images/vision.jpg" alt="about Image" /></div>
                        </div>
                        <div>
                           <div class="counter">
                              <div class="counter-icon"> <i class="flaticon-033-plug"></i></div>
                              <div class="counter-num">
                                 <span class="counting" data-counterup-nums="954">954</span>
                                 <p></p>
                              </div>
                              <div class="counter-name">
                                 <h6>happy clients</h6>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-12 col-lg-7">
                     <div class="heading heading-1"> 
                        <h2 class="heading-title">OUR VISION</h2>
                     </div>
                     <div class="about-block">
                        <div class="row"> 
                           <div class="col-12 col-lg-12">
                              <div class="block-right">
                                 <div class="prief-set">
                                    <?php echo get_option('homeourvision'); ?>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </section>
         <section class="about about-1 pt-0" id="about-1">
            <div class="container">
               <div class="row">
                  <div class="col-12 col-lg-6">
                     <div class="heading heading-1"> 
                        <h2 class="heading-title">OUR MISSION</h2>
                     </div>
                     <div class="about-block">
                        <div class="row"> 
                           <div class="col-12 col-lg-12">
                              <div class="block-right">
                                 <div class="prief-set">
                                    <?php echo get_option('homeourmision'); ?>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-12 col-lg-5 offset-lg-1">
                     <div class="about-img">
                        <div class="about-img-holder bg-overlay">
                           <div class="bg-section"><img src="<?php echo bloginfo('template_url');  ?>/assets/images/mision.jpg" alt="about Image" /></div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </section>
         <section class="features features-1 bg-overlay bg-overlay-theme2 pb-5" id="features-1">
            <div class="bg-section"> <img src="<?php echo bloginfo('template_url');  ?>/assets/images/background/2.jpg" alt="Background" /></div>
            <div class="container">
               <div class="heading heading-2 heading-light heading-light2 mb-0 pb-5">
                  <div class="row">
                     <div class="col-12 col-lg-5">
                        <p class="heading-subtitle">Sustainable, Reliable & Affordable Energy!</p>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-12 col-lg-5">
                        <h2 class="heading-title">OUR APPROACH</h2>
                     </div>
                     <div class="col-12 col-lg-6 offset-lg-1">
                        <p class="heading-desc"><?php echo get_option('homeourapproch'); ?></p>
                     </div>
                  </div>
               </div>
            </div>
         </section>

         <section class="nobgf features features-1 bg-overlay bg-overlay-theme2" id="features-1">
            <div class="bg-section"> <img src="<?php echo bloginfo('template_url');  ?>/assets/images/rainbow.jpg" alt="Background" /></div>
            <div class="container"> 
               <div class="heading heading-2 heading-light heading-light2">
                  <div class="row">
                     <div class="col-12 col-lg-5">
                        <p class="heading-subtitle"></p>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-12 col-lg-5">
                        <h2 class="heading-title">WHO WE ARE</h2>
                     </div>
                     <div class="col-12 col-lg-6 offset-lg-1">
                        <p class="heading-desc"><?php echo get_option('homewhoweare'); ?></p>
                     </div>
                  </div>
               </div>
               <div class="carousel owl-carousel carousel-dots" data-slide="4" data-slide-rs="2" data-autoplay="true" data-nav="false" data-dots="true" data-space="25" data-loop="true" data-speed="800">
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
						 <div>
							 <div class="feature-panel-holder" data-hover="">
								<div class="feature-panel">
								   <div class="feature-icon"><img src="<?php the_post_thumbnail_url(array(80*80)); ?>" width="80"  height="80" class="img-fluid"></i></div>
								   <div class="feature-content">
									  <h4><?php the_title(); ?></h4>
									  <p><?php the_content(); ?></p>
								   </div>
								   <a href="page-about.html"><i class="energia-arrow-right"></i> <span>explore more</span> </a>
								</div>
							 </div>
						  </div>
						  <?php
							endwhile;
							endif;
						?>

                  
                  
                  
               </div>
               <div class="row">
                  <div class="col-12 col-lg-4 mb-5">
                     <div class="more-features">
                        
                     </div>
                  </div> 
               </div>
            </div>
         </section>
         <section class="services services-1 bg-grey" id="services-1">
            <div class="container">
               <div class="heading heading-3 text-center">
                  <div class="row">
                     <div class="col-12 col-lg-6 offset-lg-3">
                        <p class="heading-subtitle"></p>
                        <h2 class="heading-title">WHAT WE DO</h2>
                     </div>
                  </div>
               </div>
               <div class="carousel owl-carousel carousel-dots dots-side" data-slide="3" data-slide-rs="1" data-autoplay="true" data-nav="false" data-dots="true" data-space="30" data-loop="true" data-speed="800">
                   <?php
					$args = array( 
															  
					'post_type' => 'service', 
					'post_status' => 'publish',                // - post is in trashbin (available with Version 2.9).
					'order' => 'ASC',                      //(string) - Designates the ascending or descending order of the 'orderby' parameter. Defaultto 'DESC'.
					'orderby' => 'date',                    //(string) - Sort retrieved posts by parameter. Defaults to 'date'.
					'posts_per_page' => '6',
					);
															
					$the_query = new WP_Query( $args );
					// The Loop
					if ( $the_query->have_posts() ) :
					while ( $the_query->have_posts() ) : $the_query->the_post();
					?>
				  <div>
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
               <div class="more-services">
                  <p>Sustainable, reliable & affordable energy systems, <a href="page-services.html">Find More! </a></p>
               </div>
			   
            </div>
         </section>


         <section class="about about-1" id="about-1">
            <div class="container">
               <div class="row">
                  <div class="col-12 col-lg-5">
                     <div class="about-img">
                        <div class="about-img-holder bg-overlay">
                           <div class="bg-section"><img src="<?php echo bloginfo('template_url');  ?>/assets/images/why-us.jpg" alt="about Image" /></div>
                        </div> 
                     </div>
                  </div>
                  <div class="col-12 col-lg-7">
                     <div class="heading heading-1"> 
                        <h2 class="heading-title">WHY US</h2>
                     </div>
                     <div class="about-block">
                        <div class="row"> 
                           <div class="col-12 col-lg-12">
                              <div class="block-right">
                                 <div class="prief-set">
                                     
                                    <ul class="list-unstyled advantages-list">
										<?php echo get_option('homewhyus'); ?>
									</ul>
                                 	<a class="btn btn--secondary mt-5" href="#">Read more <i class="energia-arrow-right"></i></a>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </section>



         <section class="counters counters-1 bg-overlay bg-overlay-theme2" id="counters-1">
            <div class="bg-section"> <img src="<?php echo bloginfo('template_url');  ?>/assets/images/background/2.jpg" alt="Background" /></div>
            <div class="container">
               <div class="heading heading-4 heading-light heading-light2">
                  <div class="row">
                     <div class="col-12 col-lg-5">
                        <p class="heading-subtitle"></p>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-12 col-lg-5">
                        <h2 class="heading-title">Remote sensing data bank</h2>
                     </div>
                     <div class="col-12 col-lg-6 offset-lg-1">
                        <p class="heading-desc"><?php echo get_option('homeremotesensing'); ?></p>
                        <div class="actions-holder"><a class="btn btn--primary btn--inversed" href="page-contact.html">
                           Read more<i class="energia-arrow-right"></i></a>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-12 col-lg-8">
                     <div class="img-hotspot">
                        <div class="img-hotspot-wrap">
                           <div class="img-hotspot-bg"> <img src="<?php echo bloginfo('template_url');  ?>/assets/images/background/world-map-dark.png" alt="image" /></div>
                           <div class="img-hotspot-pointers">
                              <div class="img-hotspot-pointer" data-spot-x="29%" data-spot-y="72%">
                                 <div class="pointer-icon"></div>
                                 <div class="info" data-info-x="" data-info-y="">
                                    <div class="border-outer">
                                       <div class="border-inner"><i class="flaticon-012-mining-1"></i></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="img-hotspot-pointer" data-spot-x="48%" data-spot-y="48%">
                                 <div class="pointer-icon"></div>
                                 <div class="info" data-info-x="" data-info-y="">
                                    <div class="border-outer">
                                       <div class="border-inner"><i class="flaticon-035-battery"></i></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="img-hotspot-pointer" data-spot-x="75%" data-spot-y="17%">
                                 <div class="pointer-icon"></div>
                                 <div class="info" data-info-x="" data-info-y="">
                                    <div class="border-outer">
                                       <div class="border-inner"><i class="flaticon-027-energy-tower"></i></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="img-hotspot-pointer" data-spot-x="34%" data-spot-y="9%">
                                 <div class="pointer-icon"></div>
                                 <div class="info" data-info-x="" data-info-y="">
                                    <div class="border-outer">
                                       <div class="border-inner"><i class="flaticon-032-recycle"></i></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="img-hotspot-pointer" data-spot-x="59%" data-spot-y="21%">
                                 <div class="pointer-icon"></div>
                                 <div class="info" data-info-x="" data-info-y="">
                                    <div class="border-outer">
                                       <div class="border-inner"><i class="flaticon-030-biology"></i></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="img-hotspot-pointer" data-spot-x="68%" data-spot-y="38%">
                                 <div class="pointer-icon"></div>
                                 <div class="info" data-info-x="" data-info-y="">
                                    <div class="border-outer">
                                       <div class="border-inner"><i class="flaticon-034-coal"></i></div>
                                    </div>
                                 </div>
                              </div>
                              <div class="img-hotspot-pointer" data-spot-x="15%" data-spot-y="29%">
                                 <div class="pointer-icon"></div>
                                 <div class="info" data-info-x="" data-info-y="">
                                    <div class="border-outer">
                                       <div class="border-inner"><i class="flaticon-039-wind-mill"></i></div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-12 col-lg-3 offset-lg-1">
                     <div class="counter counter-2">
                        <div class="counter-num">
                           <span class="counting" data-counterup-nums="6,154">6,154</span>
                           <h6>projects</h6>
                        </div>
                        <div class="counter-desc">
                           <p>Yet those that embrace change are thriving, building bigger, better, faster, and stronger products than ever.</p>
                        </div>
                     </div>
                     <div class="counter counter-2">
                        <div class="counter-num">
                           <span class="counting" data-counterup-nums="2,512">2,512</span>
                           <h6>employees</h6>
                        </div>
                        <div class="counter-desc">
                           <p>Yet those that embrace change are thriving, building bigger, better, faster, and stronger products than ever.</p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </section>
         
         <section class="projects projects-modern projects-modern-1" id="projects-modern-1">
            <div class="container">
               <div class="row">
                  <div class="col-12 col-lg-6 offset-lg-3">
                     <div class="heading heading-5 text-center">
                        <p class="heading-subtitle">IISRE</p>
                        <h2 class="heading-title">Research & Publications</h2>
                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-12">
                     <div class="carousel owl-carousel carousel-dots" data-slide="3" data-slide-rs="1" data-autoplay="true" data-nav="false" data-dots="true" data-space="30" data-loop="true" data-speed="3000">
                        
						<?php
							$args = array( 
															  
							'post_type' => 'research', 
							'post_status' => 'publish',                // - post is in trashbin (available with Version 2.9).
							'order' => 'ASC',                      //(string) - Designates the ascending or descending order of the 'orderby' parameter. Defaultto 'DESC'.
							'orderby' => 'date',                    //(string) - Sort retrieved posts by parameter. Defaults to 'date'.
							'posts_per_page' => '6',
							);
																
							$the_query = new WP_Query( $args );
							// The Loop
							if ( $the_query->have_posts() ) :
							while ( $the_query->have_posts() ) : $the_query->the_post();
						?>
						
						<div>
                           <div class="project-panel" data-hover="">
                              <div class="project-panel-holder">
                                 <div class="project-img"><a class="link" href="<?php the_permalink(); ?>"></a><img src="<?php the_post_thumbnail_url(array(352*287)); ?>" alt="project image" /></div>
                                 <div class="project-content">
                                     <div class="project-title">
                                       <h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
                                    </div>
                                    <div class="project-desc">
                                       <p><?php the_content(); ?></p>
                                    </div>
                                    <div class="project-more"> <a class="btn btn--bordered btn--white" href="<?php the_permalink(); ?>">explore more <i class="energia-arrow-right"></i></a></div>
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
               </div>
            </div>
         </section> 
         <section class="contact contact-1 bg-overlay bg-overlay-theme" id="contact-1">
            <div class="bg-section"><img src="<?php echo bloginfo('template_url');  ?>/assets/images/background/3.jpg" alt="background" /></div>
            <div class="container">
               <div class="contact-panel contact-panel-3">
                  <div class="heading heading-light heading-6"> 
                     <h2 class="heading-title">Gallery</h2>  
                  </div> 
               </div>
                  <div class="row">
	                  <div class="col-12">
	                     <div class="carousel owl-carousel carousel-dots" data-slide="3" data-slide-rs="1" data-autoplay="true" data-nav="false" data-dots="true" data-space="30" data-loop="true" data-speed="3000">
	                        <?php
							$args = array( 
															  
							'post_type' => 'gallery', 
							'post_status' => 'publish',                // - post is in trashbin (available with Version 2.9).
							'order' => 'ASC',                      //(string) - Designates the ascending or descending order of the 'orderby' parameter. Defaultto 'DESC'.
							'orderby' => 'date',                    //(string) - Sort retrieved posts by parameter. Defaults to 'date'.
							'posts_per_page' => '6',
							);
																
							$the_query = new WP_Query( $args );
							// The Loop
							if ( $the_query->have_posts() ) :
							while ( $the_query->have_posts() ) : $the_query->the_post();
							?>
							<div>
	                           <div class="project-panel" data-hover="">
	                              <div class="project-panel-holder">
	                                 <div class="project-img"><a class="link"></a><img src="<?php the_post_thumbnail_url(array(352*352)); ?>" alt="project image"/></div>                      
	                              </div>
	                           </div>
	                        </div>  
							<?php
							endwhile;
							endif;
							?>


	                     </div>
	                  </div>
           			</div> 
               <div class="contact-panel contact-panel-3">
                  <div class="heading heading-light heading-6">  
                     <div class="contact-quote">
                        
                     </div>
                  </div> 
               </div>
            </div>
         </section>
         <section class="blog blog-1 blog-grid" id="blog-1">
            <div class="container">
               <div class="row">
                  <div class="col-12 col-lg-6 offset-lg-3">
                     <div class="heading heading-7 text-center">
                        <h2 class="heading-title">Blogs</h2>
                     </div>
                  </div>
               </div>
               <div class="row">
			   <?php
					$args = array( 
															  
					'post_type' => 'post', 
					'post_status' => 'publish',                // - post is in trashbin (available with Version 2.9).
					'order' => 'ASC',                      //(string) - Designates the ascending or descending order of the 'orderby' parameter. Defaultto 'DESC'.
					'orderby' => 'date',                    //(string) - Sort retrieved posts by parameter. Defaults to 'date'.
					'posts_per_page' => '6',
					);
																
					$the_query = new WP_Query( $args );
					// The Loop
					if ( $the_query->have_posts() ) :
					while ( $the_query->have_posts() ) : $the_query->the_post();
					?>
					  <div class="col-12 col-lg-4">
						 <div class="blog-entry" data-hover="">
							<div class="entry-content">
							   <div class="entry-meta">
								  <div class="entry-date"><span class="day"><?php echo get_the_date(); ?></span></div>
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
							$small = substr($content, 0, 200);
							?>
                           
								  <p><?php echo $small; ?></p>
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
               <div class="row">
                  <div class="col-12">
                     <div class="more-blog"><a href="#">find out more about our news!</a></div>
                  </div>
               </div>
            </div>
         </section>
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
<?php //get_sidebar(); ?>
<?php get_footer(); ?>
