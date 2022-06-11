<?php
/**
 * Header template for our theme
 *
 * Displays all of the <head> section and everything up till <div id="main">.
 *
 * @package WordPress
 * @subpackage Twenty_Ten
 * @since Twenty Ten 1.0
 */
?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
	<title>
	<?php
		/*
		 * Print the <title> tag based on what is being viewed.
		 */
		global $page, $paged;

		wp_title( '|', true, 'right' );

		// Add the blog name.
		bloginfo( 'name' );

		// Add the blog description for the home/front page.
		$site_description = get_bloginfo( 'description', 'display' );
	if ( $site_description && ( is_home() || is_front_page() ) ) {
		echo " | $site_description";
	}

		// Add a page number if necessary:
	if ( ( $paged >= 2 || $page >= 2 ) && ! is_404() ) {
		echo esc_html( ' | ' . sprintf( __( 'Page %s', 'twentyten' ), max( $paged, $page ) ) );
	}

	?>
	</title>
	<link rel="profile" href="http://gmpg.org/xfn/11" />


		<link rel="apple-touch-icon" sizes="57x57" href="<?php echo bloginfo('template_url');  ?>/assets/images/logo/apple-icon-57x57.png">
		<link rel="apple-touch-icon" sizes="60x60" href="<?php echo bloginfo('template_url');  ?>/assets/images/logo/apple-icon-60x60.png">
		<link rel="apple-touch-icon" sizes="72x72" href="<?php echo bloginfo('template_url');  ?>/assets/images/logo/apple-icon-72x72.png">
		<link rel="apple-touch-icon" sizes="76x76" href="<?php echo bloginfo('template_url');  ?>/assets/images/logo/apple-icon-76x76.png">
		<link rel="apple-touch-icon" sizes="114x114" href="<?php echo bloginfo('template_url');  ?>/assets/images/logo/apple-icon-114x114.png">
		<link rel="apple-touch-icon" sizes="120x120" href="<?php echo bloginfo('template_url');  ?>/assets/images/logo/apple-icon-120x120.png">
		<link rel="apple-touch-icon" sizes="144x144" href="<?php echo bloginfo('template_url');  ?>/assets/images/logo/apple-icon-144x144.png">
		<link rel="apple-touch-icon" sizes="152x152" href="<?php echo bloginfo('template_url');  ?>/assets/images/logo/apple-icon-152x152.png">
		<link rel="apple-touch-icon" sizes="180x180" href="<?php echo bloginfo('template_url');  ?>/assets/images/logo/apple-icon-180x180.png">
		<link rel="icon" type="image/png" sizes="192x192"  href="<?php echo bloginfo('template_url');  ?>/assets/images/logo/android-icon-192x192.png">
		<link rel="icon" type="image/png" sizes="32x32" href="<?php echo bloginfo('template_url');  ?>/assets/images/logo/favicon-32x32.png">
		<link rel="icon" type="image/png" sizes="96x96" href="<?php echo bloginfo('template_url');  ?>/assets/images/logo/favicon-96x96.png">
		<link rel="icon" type="image/png" sizes="16x16" href="<?php echo bloginfo('template_url');  ?>/assets/images/logo/favicon-16x16.png">
		<link rel="manifest" href="<?php echo bloginfo('template_url');  ?>/assets/images/logo/manifest.json">
		<meta name="msapplication-TileColor" content="#ffffff">
		<meta name="msapplication-TileImage" content="<?php echo bloginfo('template_url');  ?>/assets/images/logo/ms-icon-144x144.png">
		<meta name="theme-color" content="#ffffff">
	  
	  
      <link rel="preconnect" href="https://fonts.gstatic.com/" />
      <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&amp;family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&amp;display=swap" rel="stylesheet" />
      <link href="<?php echo bloginfo('template_url');  ?>/assets/css/vendor.min.css" rel="stylesheet" />
      <link href="<?php echo bloginfo('template_url');  ?>/assets/css/style.css" rel="stylesheet" />




	<?php
		/*
		 * We add some JavaScript to pages with the comment form
		 * to support sites with threaded comments (when in use).
		 */
	if ( is_singular() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}

		/*
		 * Always have wp_head() just before the closing </head>
		 * tag of your theme, or you will break many plugins, which
		 * generally use this hook to add elements to <head> such
		 * as styles, scripts, and meta tags.
		 */
		wp_head();
	?>
	</head>





<body>
      <div class="preloader">
         <div class="dual-ring"></div>
      </div>
      <div class="wrapper clearfix" id="wrapperParallax">
         <header class="header header-light header-topbar header-topbar1 header-shadow" id="navbar-spy">
            <div class="top-bar">
               <div class="block-left">
                  <div class="top-contact">
                     <div class="contact-infos">
                        <i class="energia-phone-Icon"></i>
                        <div class="contact-body">
                           <p>Phone: <a href="tel:<?php echo get_option('phone'); ?>"><?php echo get_option('phone'); ?></a></p>
                        </div>
                     </div>
                     <div class="contact-infos">
                        <i class="energia-email--icon"></i>
                        <div class="contact-body">
                           <p>Email: <a href="<?php echo get_option('email'); ?>"><span class="__cf_email__"  ><?php echo get_option('email'); ?></span> </a></p>
                        </div>
                     </div>
                     <div class="contact-infos">
                        <i class="energia-clock-Icon"></i>
                        <div class="contact-body">
                           <p>Hours: <?php echo get_option('hour'); ?> </p>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="block-right">
                  <div class="social-links"><a class="share-facebook" href="<?php echo get_option('facebook_url'); ?>"><i class="energia-facebook"></i></a><a class="share-instagram" href="<?php echo get_option('twitter_url'); ?>"><i class="energia-twitter"></i></a><a class="share-twitter" href="<?php echo get_option('instragram_url'); ?>"><i class="energia-youtube"></i></a></div>
                  <div class="topbar-links"><a href="<?php echo get_home_url(); ?>/news-and-events/">News & Events</a><a href="leadership-team.html">Leadership Team</a><a href="<?php echo get_home_url(); ?>/gallery/">Gallery</a></div>
               </div>
            </div>
            <nav class="navbar navbar-expand-lg navbar-sticky" id="primary-menu">
               <a class="navbar-brand" href="<?php echo get_home_url(); ?>"><img class="logo logo-dark" src="<?php echo bloginfo('template_url');  ?>/assets/images/logo/logo-dark.png" alt="Energia Logo" /><img class="logo logo-mobile" src="<?php echo bloginfo('template_url');  ?>/assets/images/logo/logo-mobile.png" alt="Energia Logo" /></a>
               <div class="module-holder module-holder-phone">
                  <div class="module module-search">
                     <div class="module-icon module-icon-search"><i class="energia-search-Icon"></i></div>
                  </div> 
                  <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
               </div>
               <div class="collapse navbar-collapse" id="navbarContent">
                  <ul class="navbar-nav me-auto">
                     <li class="nav-item active" data-hover="">
                        <a href="<?php echo get_home_url(); ?>" ><span>Home</span></a>
                         
                     </li>
                     <li class="nav-item has-dropdown" data-hover="">
                        <a class="dropdown-toggle" href="#" data-toggle="dropdown"><span>Institute</span></a>
                        <ul class="dropdown-menu">
                           <li class="nav-item"><a href="<?php echo get_home_url(); ?>/who-we-are/"><span>Who We Are</span></a></li>
                           <li class="nav-item"><a href="<?php echo get_home_url(); ?>/our-mission/"><span>Our Mission</span></a></li>
                           <li class="nav-item"><a href="<?php echo get_home_url(); ?>/our-vision/"><span>Our Vision</span></a></li>
                           <li class="nav-item"><a href="<?php echo get_home_url(); ?>/what-we-do/"><span>What We Do</span></a></li>  
                           <li class="nav-item"><a href="<?php echo get_home_url(); ?>/why-us/"><span>Why Us</span></a></li>  
                           <li class="nav-item"><a href="<?php echo get_home_url(); ?>/our-approach/"><span>Our Approach</span></a></li>
                           <li class="nav-item"><a href="<?php echo get_home_url(); ?>/leadership-team/"><span>Leadership Team</span></a></li>  
                           <li class="nav-item"><a href="<?php echo get_home_url(); ?>/gallery/"><span>Gallery</span></a></li>  
                        </ul>
                     </li>
                     <li class="nav-item" data-hover="">
                        <a href="<?php echo get_home_url(); ?>/news-and-events/"><span>News & Events</span></a>                         
                     </li> 
                     <li class="nav-item" data-hover="">
                        <a href="<?php echo get_home_url(); ?>/research-publications/"><span>Research & Publications</span></a>                         
                     </li> 
                     <li class="nav-item" data-hover="">
                        <a href="<?php echo get_home_url(); ?>/data-bank/"><span> Data Bank</span></a>                         
                     </li> 
                     <li class="nav-item" data-hover="">
                        <a href="<?php echo get_home_url(); ?>/community/"><span>Community</span></a>                         
                     </li>
                     <li class="nav-item" data-hover="">
                        <a href="<?php echo get_home_url(); ?>/blog/"><span>Blog</span></a>                         
                     </li>
                     <li class="nav-item"  data-hover="">
                        <a href="<?php echo get_home_url(); ?>/contact/"><span>Contact</span></a>                         
                     </li>
                  </ul>
                  <div class="module-holder">
                     
                     <div class="module-contact"><a class="btn btn--primary " href="<?php echo get_home_url(); ?>/contact/">
                        Support<i class="energia-arrow-right"></i></a>
                     </div>
                  </div>
               </div>
            </nav>
         </header>
		 
		 