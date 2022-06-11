 <?php
 /* Template name:  Contact */

get_header(); ?>

		
		 
        




		<section class="map map-2">
		   <div class="container">
			  <div class="row">
				 <div class="col">
					<h3 class="d-none">our office map</h3>
				 </div>
			  </div>
		   </div>
		   <iframe src="https://maps.google.com/maps?q=Pioneer%20Works&amp;t=m&amp;z=13&amp;output=embed&amp;iwloc=near" width="600" height="450" style="border:0;"></iframe>
		</section>
		<section class="testimonial testimonial-5 bg-overlay bg-overlay-white2">
		   <div class="bg-section"><img src="assets/images/background/wavy-pattern.png" alt="background" /></div>
		   <div class="container">
			  <div class="contact-panel contact-panel-2">
				 <div class="row">
					<div class="col-12 col-lg-5 img-card-holder">
					   <div class="img-card img-card-2 bg-overlay bg-overlay-theme">
						  <div class="bg-section"><img src="assets/images/contact/2.jpg" alt="image" /></div>
						  <div class="card-content">
							 <div class="content-top">
								<p><?php $the_query = new WP_Query( 'page_id=104' ); ?>
								<?php while ($the_query -> have_posts()) : $the_query -> the_post();  ?>
								<?php the_content(); ?>
								 <?php endwhile;?></p>
							 </div>
							 <div class="content-bottom">
								<ul class="list-unstyled contact-infos">
								   <li class="contact-info">
									  <i class="energia-phone-Icon"></i>
									  <p>Emergency Line: <?php echo get_option('phone'); ?></p>
								   </li>
								   <li class="contact-info">
									  <i class="energia-location-Icon"></i>
									  <p>Location: <?php echo get_option('address'); ?> </p>
								   </li>
								   <li class="contact-info">
									  <i class="energia-clock-Icon"></i>
									  <p><?php echo get_option('hour'); ?>	</p>
								   </li>
								</ul>
							 </div>
						  </div>
					   </div>
					</div>
					<div class="col-12 col-lg-7">
					   <div class="contact-card">
						  <div class="contact-body">
							 <h5 class="card-heading">get in touch</h5>
							 <p class="card-desc"></p>
							 
							 <?php
							if(isset($_POST['submit']))
							{
													
								$subject="Contact Mail";    
								$headers="MIME-Version: 1.0\n"; 
								$headers.="Content-type: text/html; charset=iso-8859-1 \n"; 

													   
								$headers.="from:Contact<".$_POST['email'].">"; 
								$mail_body="<table cellpadding='0' cellspacing='0' border='0'><tr><td>Fullname:".$_POST['fullname']."</td></tr>";
								$mail_body.="<tr><td>E-mail:".$_POST['email']."</td></tr>";
								$mail_body.="<tr><td>Phone:".$_POST['phone']."</td></tr>";
								$mail_body.="<tr><td>Company Name:".$_POST['subject']."</td></tr>";
								$mail_body.="<tr><td>Message:".$_POST['message']."</td></tr></table>";   
														
								$mail_to="info@iisre.co.in";

							if(@wp-mail($mail_to, $subject, $mail_body, $headers)) 
														
							{
								?>
								<script type="text/javascript">
									alert("Thank You! Your Message Has Been Sent Successfully");
								</script>
								<?php 
							} 
							else
							{
								print("<h1><font color=\"#880000\">Sorry! An Error Occurred While Sending Message. Please Try Again</font></h1>"); 
							}
						}

					?>
							 
							 
							 <form  method="post" action="">
								<div class="row">
								   <div class="col-12 col-md-6">
									  <input class="form-control" type="text" id="contact-name" name="fullname" placeholder="Name" required="" />
								   </div>
								   <div class="col-12 col-md-6">
									  <input class="form-control" type="text" id="contact-email" name="email" placeholder="Email" required="" />
								   </div>
								   <div class="col-12 col-md-6">
									  <input class="form-control" type="text" id="contact-phone" name="phone" placeholder="Phone" required="" />
								   </div>
								   <div class="col-12 col-md-6">
									  <input class="form-control" type="text" id="contact-phone" name="subject" placeholder="Subject" />
								   </div>
								   <div class="col-12">
									  <textarea class="form-control" id="contact-infos" placeholder="additional information" name="message" cols="30" rows="10"></textarea>
								   </div>
								   <div class="col-12">
										<!--<input type="submit" class="btn btn--secondary" name="submit" value="Submit" />-->
									  <button class="btn btn--secondary">submit request <i class="energia-arrow-right"></i></button>
								   </div>
								   <div class="col-12">
									  <div class="contact-result"></div>
								   </div>
								</div>
							 </form>
						  </div>
					   </div>
					</div>
				 </div>
			  </div>
		   </div>
		</section>


		 
 
		 
		 
<?php get_footer(); ?>	

