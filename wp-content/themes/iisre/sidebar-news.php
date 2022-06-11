 <?php
				/**
				 * Sidebar template containing the primary and secondary widget areas
				 *
				 * @package WordPress
				 * @subpackage Twenty_Ten
				 * @since Twenty Ten 1.0
				 */
				?>

				<div class="col-12 col-lg-4">
							<div class="sidebar sidebar-blog">
							   
							   <div class="widget widget-recent-posts">
								  <div class="widget-title">
									 <h5>Recent Posts</h5>
								  </div>
								  <div class="widget-content">
									<?php
									$args = array( 
																			  
									'post_type' => 'news', 
									'post_status' => 'publish',                // - post is in trashbin (available with Version 2.9).
									'order' => 'DESC',                      //(string) - Designates the ascending or descending order of the 'orderby' parameter. Defaultto 'DESC'.
									'orderby' => 'date',                    //(string) - Sort retrieved posts by parameter. Defaults to 'date'.
									'posts_per_page' => '6',
									);
																				
									$the_query = new WP_Query( $args );
									// The Loop
									if ( $the_query->have_posts() ) :
									while ( $the_query->have_posts() ) : $the_query->the_post();
									?>

										<div class="post">
											<div class="post-img"><img src="<?php the_post_thumbnail_url(array(80*80)); ?>" alt="post img" /></div>
											<div class="post-content">
											   <div class="post-date"><span class="date"><?php echo get_the_date(); ?></span></div>
											   <div class="post-title"><a href="<?php the_permalink(); ?>"><?php the_title();  ?></a></div>
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
