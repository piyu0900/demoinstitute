<?php
/**
 * Template for displaying the footer
 *
 * Contains the closing of the id=main div and all content
 * after. Calls sidebar-footer.php for bottom widgets.
 *
 * @package WordPress
 * @subpackage Twenty_Ten
 * @since Twenty Ten 1.0
 */
?>
	
	
	
		 
		 
		 
		 
         <footer class="footer footer-1">
            <div class="footer-top">
               <div class="container">
                  <div class="row">
                     <div class="col-12 col-sm-6 col-md-6 col-lg-2">
                        <div class="footer-widget widget-links">
                           <div class="footer-widget-title">
                              <h5>Company</h5>
                           </div>
                           <div class="widget-content">
                              <ul>
                                 <li><a href="<?php echo get_home_url(); ?>/about/">About Us</a></li>
                                 <li><a href="<?php echo get_home_url(); ?>/who-we-are/">Who We Are</a></li>
                                 <li><a href="<?php echo get_home_url(); ?>/our-mision/">Our Mision</a></li>
                                 <li><a href="<?php echo get_home_url(); ?>/out-vision/">Our Vision</a></li>
                                 <li><a href="<?php echo get_home_url(); ?>/contact/">Contact</a></li>
                              </ul>
                           </div>
                        </div>
                     </div>
                     <div class="col-12 col-sm-6 col-md-6 col-lg-2">
                        <div class="footer-widget widget-links">
                           <div class="footer-widget-title">
                              <h5>What We Do</h5>
                           </div>
                           <div class="widget-content">
                              <ul>
                                 <li><a href="<?php echo get_home_url(); ?>/blog/">Blog</a></li>
                                 <li><a href="<?php echo get_home_url(); ?>/news-and-events/">News & Events</a></li>
                                 <li><a href="<?php echo get_home_url(); ?>/research-publications/">Research & Publications</a></li> 
                                 <li><a href="<?php echo get_home_url(); ?>/research-publications/data-bank/">Data Bank</a></li> 
                              </ul>
                           </div>
                        </div>
                     </div>
                     <div class="col-12 col-sm-6 col-md-6 col-lg-5">
                        <div class="footer-widget widget-links widget-icon">
                           <div class="footer-widget-title">
                              <h5>Other Links</h5>
                           </div>
                           <div class="widget-content">
                              <ul>
                                 <li><a href="<?php echo get_home_url(); ?>/contact/">Contact Us</a></li> 
                                 <li><a href="<?php echo get_home_url(); ?>/privacy-policy/">Privacy Policy</a></li> 
                                 <li><a href="<?php echo get_home_url(); ?>/terms-and-conditions/">Terms and conditions</a></li> 
                              </ul>
                           </div>
                        </div>
                     </div>
                     <div class="col-12 col-md-6 col-lg-3">
                        <div class="footer-widget widget-contact">
                           <div class="widget-content">
                              <ul>
                                 <li class="phone"><a href="tel:<?php echo get_option('phone'); ?>"><?php echo get_option('phone'); ?></a></li>
                                 <li class="email">Email: <a href="mailto:<?php echo get_option('email'); ?>><span class="__cf_email__"><?php echo get_option('email'); ?></span></a></li>
                                 <li class="address">
                                    <p> <?php echo get_option('address'); ?></p>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="footer-bottom">
               <div class="container">
                  <div class="row">
                     <div class="col-12">
                        <div class="footer-copyright">
                           <div class="copyright">
                              <span>&copy; 2022 IISRE. All rights reserved. </span>
                              <ul class="list-unstyled social-icons">
                                 <li> <a class="share-facebook" href="<?php echo get_option('facebook_url'); ?>"><i class="energia-facebook"></i>facebook </a></li>
                                 <li> <a class="share-twitter" href="<?php echo get_option('twitter_url'); ?>"><i class="energia-twitter"></i>twitter</a></li>
                                 <li> <a class="share-youtube" href="<?php echo get_option('instragram_url'); ?>"><i class="energia-youtube"></i>youtube</a></li>
                              </ul>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </footer>
         <div class="back-top" id="back-to-top" data-hover=""><i class="energia-arrow-up"></i></div>
      </div>
	  <script src="<?php echo bloginfo('template_url');  ?>/assets/js/vendor/jquery-3.6.0.min.js"></script>
      <script src="<?php echo bloginfo('template_url');  ?>/assets/js/vendor.js"></script>
      <script src="<?php echo bloginfo('template_url');  ?>/assets/js/functions.js"></script>
	
	
	
	

<?php
	/*
	 * Always have wp_footer() just before the closing </body>
	 * tag of your theme, or you will break many plugins, which
	 * generally use this hook to reference JavaScript files.
	 */

	wp_footer();
?>
</body>
</html>
