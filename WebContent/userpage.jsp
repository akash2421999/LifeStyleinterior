<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">


<!-- index 06:41:43 GMT -->
<head>
<meta charset="UTF-8">
<title>Userpage</title>

<!-- responsive meta -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- For IE -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- master stylesheet -->
<link rel="stylesheet" href="css/style.css">
<!-- Responsive stylesheet -->
<link rel="stylesheet" href="css/responsive.css">
<!-- Favicon -->
<link rel="apple-touch-icon" sizes="180x180"
	href="images/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png"
	href="images/favicon/favicon-32x32.png" sizes="32x32">
<link rel="icon" type="image/png"
	href="images/favicon/favicon-16x16.png" sizes="16x16">

<!-- Fixing Internet Explorer-->
<!--[if lt IE 9]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <script src="js/html5shiv.js"></script>
    <![endif]-->

</head>

<body>
	<div class="boxed_wrapper">

		<div class="preloader"></div>

		<!-- Start Top Bar style1 -->
		<section class="top-bar-style1">
			<div class="container">
				<div class="row">
					<div class="col-xl-12 col-lg-12 col-md-12">
						<div class="top-style1 clearfix">
							<p>
								Lifestyle Interiors, Basesd On India... <a
									href="#">Get Approximate Estimation.</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Top Bar style1 -->

		<!--Start Main Header-->
		<header class="main-header header-style1">

			<div class="header-upper-style1">
				<div class="container">
					<div class="row">
						<div class="col-xl-12">
							<div class="inner-container clearfix">
								<div class="logo-box-style1 float-left">
									<a href="userpage.jsp"> <img
										src="images/resources/logo.png" alt="Awesome Logo">
									</a>
								</div>
								<div class="main-menu-box float-right">
									<nav class="main-menu clearfix">
										<div class="navbar-header clearfix">
											<button type="button" class="navbar-toggle"
												data-toggle="collapse" data-target=".navbar-collapse">
												<span class="icon-bar"></span> <span class="icon-bar"></span>
												<span class="icon-bar"></span>
											</button>
										</div>
										<div class="navbar-collapse collapse clearfix">
											<ul class="navigation clearfix">
												<li class=""><a href="userpage.jsp">Home</a>
													<ul></li>
											</ul>
											</li>
											<li class=""><a data-toggle="modal"
												data-target="#exampleModal">My Profile</a>
												<ul>

												</ul></li>


											<li class=""><a  data-toggle="modal"
												data-target="#exampleModal1">Complain
													Here</a></li>
											<li class=""><a href="mybooking.jsp">My Booking</a>
												</li>
											<li><a href="#rev">Renovate</a></li>
											</ul>
										</div>
									</nav>
									<div class="mainmenu-right">
										<div class="outer-search-box">
											<div class="seach-toggle"><a href="userlogin.jsp">
											<i class="fa fa-sign-out" aria-hidden="true"></i></a>
											
											</div>
											
										</div>
										
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="header-lower-style1">
				<div class="container">
					<div class="row">
						<div class="col-xl-12">
							<div class="inner-content clearfix">
								<ul class="header-contact-info float-left">
									<li>
										<div class="single-item">
											<div class="icon">
												<span class="icon-maps-and-location"></span>
											</div>
											<div class="text">
												<h3>BANGALORE 5600002</h3>
												<p>South end Circle </p>
											</div>
										</div>
									</li>
									<li>
										<div class="single-item">
											<div class="icon">
												<span class="icon-phone"></span>
											</div>
											<div class="text">
												<h3>+91 9741765401</h3>
												<p>Mon - Friday: 9.00 to 18.00</p>
											</div>
										</div>
									</li>
									<li>
										<div class="single-item">
											<div class="icon">
												<span class="icon-mail"></span>
											</div>
											<div class="text">
												<h3>Lifestyle@gmail.com</h3>
												<p></p>
											</div>
										</div>
									</li>
								</ul>
								<ul class="header-social-links-style1 float-right">
									<li class="wow slideInUp" data-wow-delay="0ms"
										data-wow-duration="1200ms"><a href="#"><i
											class="fa fa-facebook" aria-hidden="true"></i></a></li>
									<li class="wow slideInUp" data-wow-delay="300ms"
										data-wow-duration="1500ms"><a href="#"><i
											class="fa fa-skype" aria-hidden="true"></i></a></li>
									<li class="wow slideInUp" data-wow-delay="400ms"
										data-wow-duration="1500ms"><a href="#"><i
											class="fa fa-linkedin" aria-hidden="true"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!--End Main Header-->

		<!--Main Slider-->
		<section class="main-slider">
			<div class="rev_slider_wrapper fullwidthbanner-container"
				id="rev_slider_one_wrapper" data-source="gallery">
				<div class="rev_slider fullwidthabanner" id="rev_slider_one"
					data-version="5.4.1">
					<ul>
						<li data-description="Slide Description" data-easein="default"
							data-easeout="default" data-fsmasterspeed="1500"
							data-fsslotamount="7" data-fstransition="fade"
							data-hideafterloop="0" data-hideslideonmobile="off"
							data-index="rs-1689" data-masterspeed="default" data-param1=""
							data-param10="" data-param2="" data-param3="" data-param4=""
							data-param5="" data-param6="" data-param7="" data-param8=""
							data-param9="" data-rotate="0" data-saveperformance="off"
							data-slotamount="default" data-thumb="images/slides/v1-1.jpg"
							data-title="Slide Title" data-transition="parallaxvertical">

							<img alt="" class="rev-slidebg" data-bgfit="cover"
							data-bgparallax="10" data-bgposition="center center"
							data-bgrepeat="no-repeat" data-no-retina=""
							src="images/slides/v1-1.jpg">

							<div class="tp-caption" data-paddingbottom="[0,0,0,0]"
								data-paddingleft="[0,0,0,0]" data-paddingright="[0,0,0,0]"
								data-paddingtop="[0,0,0,0]" data-responsive_offset="on"
								data-type="text" data-height="none"
								data-width="['800','800','700','500']" data-whitespace="normal"
								data-hoffset="['15','15','15','15']"
								data-voffset="['-160','-100','-110','-105']"
								data-x="['left','left','left','left']"
								data-y="['middle','middle','middle','middle']"
								data-textalign="['top','top','top','top']"
								data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":1000,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"auto:auto;","mask":"x:0;y:0;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]'
								style="z-index: 7; white-space: nowrap;">
								<div class="slide-content left-slide">
									<div class="big-title">User Page</div>
								</div>
							</div>
							<div class="tp-caption" data-paddingbottom="[0,0,0,0]"
								data-paddingleft="[0,0,0,0]" data-paddingright="[0,0,0,0]"
								data-paddingtop="[0,0,0,0]" data-responsive_offset="on"
								data-type="text" data-height="none"
								data-width="['800','800','700','500']" data-whitespace="normal"
								data-hoffset="['15','15','15','15']"
								data-voffset="['-75','-10','-25','-30']"
								data-x="['left','left','left','left']"
								data-y="['middle','middle','middle','middle']"
								data-textalign="['top','top','top','top']"
								data-frames='[{"from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":1500,"ease":"Power3.easeInOut"},
                        {"delay":"wait","speed":1000,"to":"auto:auto;","mask":"x:0;y:0;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]'
								style="z-index: 7; white-space: nowrap;">
								<div class="slide-content left-slide">
									<div class="text">
										Our power of choice is untrammelled and when nothing prevents
										<br>our being able to do what we like best.
									</div>
								</div>
							</div>
							<div class="tp-caption" data-paddingbottom="[0,0,0,0]"
								data-paddingleft="[0,0,0,0]" data-paddingright="[0,0,0,0]"
								data-paddingtop="[0,0,0,0]" data-responsive_offset="on"
								data-type="text" data-height="none"
								data-width="['800','800','700','500']" data-whitespace="normal"
								data-hoffset="['15','15','15','15']"
								data-voffset="['25','90','100','85']"
								data-x="['left','left','left','left']"
								data-y="['middle','middle','middle','middle']"
								data-textalign="['top','top','top','top']"
								data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":1500,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"auto:auto;","mask":"x:0;y:0;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]'
								style="z-index: 7; white-space: nowrap;">
								<div class="slide-content left-slide">
									<div class="btn-box">
										<a class="btn-one" href="#">About Company<span
											class="flaticon-next"></span></a>
									</div>
								</div>
							</div>

						</li>



						<li data-description="Slide Description" data-easein="default"
							data-easeout="default" data-fsmasterspeed="1500"
							data-fsslotamount="7" data-fstransition="fade"
							data-hideafterloop="0" data-hideslideonmobile="off"
							data-index="rs-1688" data-masterspeed="default" data-param1=""
							data-param10="" data-param2="" data-param3="" data-param4=""
							data-param5="" data-param6="" data-param7="" data-param8=""
							data-param9="" data-rotate="0" data-saveperformance="off"
							data-slotamount="default" data-thumb="images/slides/v1-3.jpg"
							data-title="Slide Title" data-transition="parallaxvertical">
							<img alt="" class="rev-slidebg" data-bgfit="cover"
							data-bgparallax="10" data-bgposition="center center"
							data-bgrepeat="no-repeat" data-no-retina=""
							src="images/slides/v1-3.jpg">

							<div class="tp-caption" data-paddingbottom="[0,0,0,0]"
								data-paddingleft="[0,0,0,0]" data-paddingright="[0,0,0,0]"
								data-paddingtop="[0,0,0,0]" data-responsive_offset="on"
								data-type="text" data-height="none"
								data-width="['800','800','700','500']" data-whitespace="normal"
								data-hoffset="['15','15','15','15']"
								data-voffset="['-160','-100','-110','-105']"
								data-x="['left','left','left','left']"
								data-y="['middle','middle','middle','middle']"
								data-textalign="['top','top','top','top']"
								data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":1000,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"auto:auto;","mask":"x:0;y:0;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]'
								style="z-index: 7; white-space: nowrap;">
								<div class="slide-content left-slide">
									<div class="big-title">Well invented</div>
								</div>
							</div>
							<div class="tp-caption" data-paddingbottom="[0,0,0,0]"
								data-paddingleft="[0,0,0,0]" data-paddingright="[0,0,0,0]"
								data-paddingtop="[0,0,0,0]" data-responsive_offset="on"
								data-type="text" data-height="none"
								data-width="['800','800','700','500']" data-whitespace="normal"
								data-hoffset="['15','15','15','15']"
								data-voffset="['-75','-10','-25','-30']"
								data-x="['left','left','left','left']"
								data-y="['middle','middle','middle','middle']"
								data-textalign="['top','top','top','top']"
								data-frames='[{"from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":1500,"ease":"Power3.easeInOut"},
                        {"delay":"wait","speed":1000,"to":"auto:auto;","mask":"x:0;y:0;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]'
								style="z-index: 7; white-space: nowrap;">
								<div class="slide-content left-slide">
									<div class="text">
										Our power of choice is untrammelled and when nothing prevents
										<br>our being able to do what we like best.
									</div>
								</div>
							</div>
							<div class="tp-caption" data-paddingbottom="[0,0,0,0]"
								data-paddingleft="[0,0,0,0]" data-paddingright="[0,0,0,0]"
								data-paddingtop="[0,0,0,0]" data-responsive_offset="on"
								data-type="text" data-height="none"
								data-width="['800','800','700','500']" data-whitespace="normal"
								data-hoffset="['15','15','15','15']"
								data-voffset="['25','90','100','85']"
								data-x="['left','left','left','left']"
								data-y="['middle','middle','middle','middle']"
								data-textalign="['top','top','top','top']"
								data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":1500,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"auto:auto;","mask":"x:0;y:0;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]'
								style="z-index: 7; white-space: nowrap;">
								<div class="slide-content left-slide">
									<div class="btn-box">
										<a class="btn-one" href="#">About Company<span
											class="flaticon-next"></span></a>

									</div>
								</div>
							</div>
						</li>

					</ul>
				</div>
			</div>
		</section>
		<!--End Main Slider-->

		<!--Start Highlights Area-->
		<section class="highlights-area">
			<div class="container">
				<div class="row">
					<!--Start single highlight box-->
					<div class="col-xl-4 col-lg-4">
						<div class="single-highlight-box text-center wow fadeInUp"
							data-wow-delay="0ms" data-wow-duration="1200ms">
							<div class="icon-holder">
								<span class="icon-concept"></span>
							</div>
							<div class="inner-content">
								<div class="text">
									<h3>Package</h3>
									<p>Indignation dislike who are beguile works & demoralized
										the charms.</p>
								</div>
								<a class="btn-one" href="package.jsp">Click here<span
									class="flaticon-next"></span></a>
							</div>
						</div>
					</div>
					<!--End single highlight box-->
					<!--Start single highlight box-->
					<div class="col-xl-4 col-lg-4">
						<div class="single-highlight-box text-center wow fadeInUp"
							data-wow-delay="200ms" data-wow-duration="1200ms">
							<div class="icon-holder">
								<span class="icon-scheme"></span>
							</div>
							<div class="inner-content">
								<div class="text">
									<h3>Painter</h3>
									<p>Our power of choice is untrammelled and all nothing
										prevents best.</p>
								</div>
								<a class="btn-one" href="paint.jsp">Click here<span
									class="flaticon-next"></span></a>
							</div>
						</div>
					</div>
					<!--End single highlight box-->
					<!--Start single highlight box-->
					<div class="col-xl-4 col-lg-4">
						<div class="single-highlight-box text-center wow fadeInUp"
							data-wow-delay="400ms" data-wow-duration="1200ms">
							<div class="icon-holder">
								<span class="icon-cupboard"></span>
							</div>
							<div class="inner-content">
								<div class="text">
									<h3>Buy Furniture</h3>
									<p>Every pleasure is to be welcomed & every circumstances &
										owing power.</p>
								</div>
								<a class="btn-one" href="shop.jsp">Click here<span
									class="flaticon-next"></span></a>
							</div>
						</div>
					</div>
					<!--End single highlight box-->
				</div>
			</div>
		</section>
		<!--End Highlights Area-->

		<!--Start about area-->


		<!--Start Working Area-->
		<section class="working-area"
			style="background-image: url(images/parallax-background/working-bg.jpg);">
			<div class="container">
				<div
					class="sec-title with-text max-width text-center wow fadeInDown"
					data-wow-delay="100ms" data-wow-duration="1200ms">
					<p>Working Areas</p>
					<div class="title clr-white">
						Booking <span>Section</span>
					</div>
					<p class="bottom-text">We are an Interior Designer, Who believe
						in excellence, quality and honesty, yes we design beautiful home
						interiors.</p>
				</div>
				<div class="row">
					<!--Start Single Working Box-->
					<div class="col-xl-4 col-lg-4">
						<div class="single-working-box wow fadeInDown"
							data-wow-delay="0ms">
							<div class="img-holder">
								<div class="inner">
									<img src="images/resources/working-1.jpg" alt="Awesome Image">
									<div class="overlay-style-one"></div>
								</div>
							</div>
							<div class="text-holder">
								<div class="plus-icon-box">
									<a href="bookedcontractor.jsp"><span class="icon-plus"></a></span>
								</div>
								<div class="outer-box">
									<div class="icon">
										<div class="inner">
											<div class="box">
												<span class="icon-architecture-and-city1"></span>
											</div>
										</div>
									</div>
									<div class="text">
										<h3>Contractor</h3>
										<p>Indignation and dislike men who are so beguiled and our
											the charms moment.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--End Single Working Box-->
					<!--Start Single Working Box-->
					<div class="col-xl-4 col-lg-4">
						<div class="single-working-box wow fadeInDown"
							data-wow-delay="400ms">
							<div class="img-holder">
								<div class="inner">
									<img src="images/resources/working-2.jpg" alt="Awesome Image">
									<div class="overlay-style-one"></div>
								</div>
							</div>
							<div class="text-holder">
								<div class="plus-icon-box">
									<a href="bookedplumber.jsp"><span class="icon-plus"></a></span>
								</div>
								<div class="outer-box">
									<div class="icon">
										<div class="inner">
											<div class="box">
												<span class="icon-shop"></span>
											</div>
										</div>
									</div>
									<div class="text">
										<h3>Plumber</h3>
										<p>Righteous indignation work are so beguiled demoralized
											the blinded by desire.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--End Single Working Box-->
					<!--Start Single Working Box-->
					<div class="col-xl-4 col-lg-4">
						<div class="single-working-box wow fadeInDown"
							data-wow-delay="800ms">
							<div class="img-holder">
								<div class="inner">
									<img src="images/resources/working-3.jpg" alt="Awesome Image">
									<div class="overlay-style-one"></div>
								</div>
							</div>
							<div class="text-holder">
								<div class="plus-icon-box">
									<a href="bookedelectrion.jsp"><span class="icon-plus"></a></span>
								</div>
								<div class="outer-box">
									<div class="icon">
										<div class="inner">
											<div class="box">
												<span class="icon-company"></span>
											</div>
										</div>
									</div>
									<div class="text">
										<h3>Electrion</h3>
										<p>Our power of choice is and when nothing prevents work
											every pleasure interior.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--End Single Working Box-->
				</div>
			</div>
		</section>
		<!--End Working Area-->

		<!--Start Recently Project Area-->
		<section class="recently-project-area">
			<div class="container">
				<div class="row">
					<div class="col-xl-12">
						<div class="sec-title float-left">
							<p>Projects</p>
							<div class="title">
								Recently Completed <span>Works</span>
							</div>
						</div>
						<div class="more-project-button float-right">
							<a class="btn-two" href="#">More Projects<span
								class="flaticon-next"></span></a>
						</div>
					</div>
				</div>
			</div>
			<div class="container-fluid">
				<div class="project-carousel owl-carousel owl-theme">
					<!--Start single project style1-->
					<div class="single-project-style1">
						<div class="img-holder">
							<img src="images/projects/lat-pro-1.jpg" alt="Awesome Image">
							<div class="overlay-content">
								<div class="inner-content">
									<div class="link-box">
										<a class="btn-one" href="#">Case Study<span
											class="flaticon-next"></span></a>
									</div>
								</div>
							</div>
							<div class="title-box">
								<span>Modern Design</span>
								<h3>Office Partition Walls</h3>
							</div>
						</div>
					</div>
					<!--End single project style1-->
					<!--Start single project style1-->
					<div class="single-project-style1">
						<div class="img-holder">
							<img src="images/projects/lat-pro-2.jpg" alt="Awesome Image">
							<div class="overlay-content">
								<div class="inner-content">
									<div class="link-box">
										<a class="btn-one" href="#">Case Study<span
											class="flaticon-next"></span></a>
									</div>
								</div>
							</div>
							<div class="title-box">
								<span>Modern Design</span>
								<h3>Office Partition Walls</h3>
							</div>
						</div>
					</div>
					<!--End single project style1-->
					<!--Start single project style1-->
					<div class="single-project-style1">
						<div class="img-holder">
							<img src="images/projects/lat-pro-3.jpg" alt="Awesome Image">
							<div class="overlay-content">
								<div class="inner-content">
									<div class="link-box">
										<a class="btn-one" href="#">Case Study<span
											class="flaticon-next"></span></a>
									</div>
								</div>
							</div>
							<div class="title-box">
								<span>Modern Design</span>
								<h3>Office Partition Walls</h3>
							</div>
						</div>
					</div>
					<!--End single project style1-->
					<!--Start single project style1-->
					<div class="single-project-style1">
						<div class="img-holder">
							<img src="images/projects/lat-pro-4.jpg" alt="Awesome Image">
							<div class="overlay-content">
								<div class="inner-content">
									<div class="link-box">
										<a class="btn-one" href="#">Case Study<span
											class="flaticon-next"></span></a>
									</div>
								</div>
							</div>
							<div class="title-box">
								<span>Modern Design</span>
								<h3>Office Partition Walls</h3>
							</div>
						</div>
					</div>
					<!--End single project style1-->
					<!--Start single project style1-->
					<div class="single-project-style1">
						<div class="img-holder">
							<img src="images/projects/lat-pro-5.jpg" alt="Awesome Image">
							<div class="overlay-content">
								<div class="inner-content">
									<div class="link-box">
										<a class="btn-one" href="#">Case Study<span
											class="flaticon-next"></span></a>
									</div>
								</div>
							</div>
							<div class="title-box">
								<span>Modern Design</span>
								<h3>Office Partition Walls</h3>
							</div>
						</div>
					</div>
					<!--End single project style1-->

					<!--Start single project style1-->
					<div class="single-project-style1">
						<div class="img-holder">
							<img src="images/projects/lat-pro-1.jpg" alt="Awesome Image">
							<div class="overlay-content">
								<div class="inner-content">
									<div class="link-box">
										<a class="btn-one" href="#">Case Study<span
											class="flaticon-next"></span></a>
									</div>
								</div>
							</div>
							<div class="title-box">
								<span>Modern Design</span>
								<h3>Office Partition Walls</h3>
							</div>
						</div>
					</div>
					<!--End single project style1-->
					<!--Start single project style1-->
					<div class="single-project-style1">
						<div class="img-holder">
							<img src="images/projects/lat-pro-2.jpg" alt="Awesome Image">
							<div class="overlay-content">
								<div class="inner-content">
									<div class="link-box">
										<a class="btn-one" href="#">Case Study<span
											class="flaticon-next"></span></a>
									</div>
								</div>
							</div>
							<div class="title-box">
								<span>Modern Design</span>
								<h3>Office Partition Walls</h3>
							</div>
						</div>
					</div>
					<!--End single project style1-->
					<!--Start single project style1-->
					<div class="single-project-style1">
						<div class="img-holder">
							<img src="images/projects/lat-pro-3.jpg" alt="Awesome Image">
							<div class="overlay-content">
								<div class="inner-content">
									<div class="link-box">
										<a class="btn-one" href="#">Case Study<span
											class="flaticon-next"></span></a>
									</div>
								</div>
							</div>
							<div class="title-box">
								<span>Modern Design</span>
								<h3>Office Partition Walls</h3>
							</div>
						</div>
					</div>
					<!--End single project style1-->
					<!--Start single project style1-->
					<div class="single-project-style1">
						<div class="img-holder">
							<img src="images/projects/lat-pro-4.jpg" alt="Awesome Image">
							<div class="overlay-content">
								<div class="inner-content">
									<div class="link-box">
										<a class="btn-one" href="#">Case Study<span
											class="flaticon-next"></span></a>
									</div>
								</div>
							</div>
							<div class="title-box">
								<span>Modern Design</span>
								<h3>Office Partition Walls</h3>
							</div>
						</div>
					</div>
					<!--End single project style1-->
					<!--Start single project style1-->
					<div class="single-project-style1">
						<div class="img-holder">
							<img src="images/projects/lat-pro-5.jpg" alt="Awesome Image">
							<div class="overlay-content">
								<div class="inner-content">
									<div class="link-box">
										<a class="btn-one" href="#">Case Study<span
											class="flaticon-next"></span></a>
									</div>
								</div>
							</div>
							<div class="title-box">
								<span>Modern Design</span>
								<h3>Office Partition Walls</h3>
							</div>
						</div>
					</div>
					<!--End single project style1-->

					<!--Start single project style1-->
					<div class="single-project-style1">
						<div class="img-holder">
							<img src="images/projects/lat-pro-1.jpg" alt="Awesome Image">
							<div class="overlay-content">
								<div class="inner-content">
									<div class="link-box">
										<a class="btn-one" href="#">Case Study<span
											class="flaticon-next"></span></a>
									</div>
								</div>
							</div>
							<div class="title-box">
								<span>Modern Design</span>
								<h3>Office Partition Walls</h3>
							</div>
						</div>
					</div>
					<!--End single project style1-->
					<!--Start single project style1-->
					<div class="single-project-style1">
						<div class="img-holder">
							<img src="images/projects/lat-pro-2.jpg" alt="Awesome Image">
							<div class="overlay-content">
								<div class="inner-content">
									<div class="link-box">
										<a class="btn-one" href="#">Case Study<span
											class="flaticon-next"></span></a>
									</div>
								</div>
							</div>
							<div class="title-box">
								<span>Modern Design</span>
								<h3>Office Partition Walls</h3>
							</div>
						</div>
					</div>
					<!--End single project style1-->
					<!--Start single project style1-->
					<div class="single-project-style1">
						<div class="img-holder">
							<img src="images/projects/lat-pro-3.jpg" alt="Awesome Image">
							<div class="overlay-content">
								<div class="inner-content">
									<div class="link-box">
										<a class="btn-one" href="#">Case Study<span
											class="flaticon-next"></span></a>
									</div>
								</div>
							</div>
							<div class="title-box">
								<span>Modern Design</span>
								<h3>Office Partition Walls</h3>
							</div>
						</div>
					</div>
					<!--End single project style1-->
					<!--Start single project style1-->
					<div class="single-project-style1">
						<div class="img-holder">
							<img src="images/projects/lat-pro-4.jpg" alt="Awesome Image">
							<div class="overlay-content">
								<div class="inner-content">
									<div class="link-box">
										<a class="btn-one" href="#">Case Study<span
											class="flaticon-next"></span></a>
									</div>
								</div>
							</div>
							<div class="title-box">
								<span>Modern Design</span>
								<h3>Office Partition Walls</h3>
							</div>
						</div>
					</div>
					<!--End single project style1-->
					<!--Start single project style1-->
					<div class="single-project-style1">
						<div class="img-holder">
							<img src="images/projects/lat-pro-5.jpg" alt="Awesome Image">
							<div class="overlay-content">
								<div class="inner-content">
									<div class="link-box">
										<a class="btn-one" href="#">Case Study<span
											class="flaticon-next"></span></a>
									</div>
								</div>
							</div>
							<div class="title-box">
								<span>Modern Design</span>
								<h3>Office Partition Walls</h3>
							</div>
						</div>
					</div>
					<!--End single project style1-->

				</div>
			</div>
		</section>
		<!--End Recently Project Area-->

		<!--Start Working Process Area-->
		<section class="working-process-area">
			<div class="container">
				<div class="sec-title text-center">
					<p>To Do good design</p>
					<div class="title">
						Our Working <span>process</span>
					</div>
				</div>
				<div class="row">
					<!--Start Single Working Process-->
					<div class="col-xl-4 col-lg-4 wow fadeInUp" data-wow-delay="100ms"
						data-wow-duration="1500ms">
						<div class="single-working-process text-center">
							<div class="top-box">
								<span>01</span>
							</div>
							<div class="inner">
								<h3>Idea & Design</h3>
								<p>With righteous indignation and works off beguiled
									demoralized charm.</p>
								<div class="icon-holder">
									<span class="icon-productive"></span>
								</div>
							</div>
						</div>
					</div>
					<!--End Single Working Process-->
					<!--Start Single Working Process-->
					<div class="col-xl-4 col-lg-4 wow fadeInUp" data-wow-delay="300ms"
						data-wow-duration="1500ms">
						<div class="single-working-process text-center">
							<div class="top-box">
								<span>02</span>
							</div>
							<div class="inner">
								<h3>Specification</h3>
								<p>Our power of choice is untrammelled and when nothing
									prevents.</p>
								<div class="icon-holder">
									<span class="icon-document"></span>
								</div>
							</div>
						</div>
					</div>
					<!--End Single Working Process-->
					<!--Start Single Working Process-->
					<div class="col-xl-4 col-lg-4 wow fadeInUp" data-wow-delay="500ms"
						data-wow-duration="1500ms">
						<div class="single-working-process text-center">
							<div class="top-box">
								<span>03</span>
							</div>
							<div class="inner">
								<h3>Execution</h3>
								<p>Wing to the claims of duty the obligations will
									frequently occur.</p>
								<div class="icon-holder">
									<span class="icon-kitchen"></span>
								</div>
							</div>
						</div>
					</div>
					<!--End Single Working Process-->
				</div>
			</div>
		</section>
		<!--End Working Process Area-->

		<!--Start slogan area-->

		<!--End slogan area-->

		<!--Start Testimonial Area-->


		<!--Start appointment Area-->
		<section class="appointment-area"
			style="background-image: url(images/resources/appointment-bg.jpg);" id="rev">
			<div class="container">
				<div class="row">
					<div class="col-xl-6 col-lg-6">
						<div class="map-content-box">
							<div class="sec-title">
								<p>Contact Details</p>
								<div class="title">
									How Can We <span>Help You?</span>
								</div>
							</div>
							<div class="inner paroller">
								<img src="images/resources/map.png" alt="Map">
								<div class="overlay">
									<div class="single-location-box one wow zoomIn"
										data-wow-delay="100ms" data-wow-duration="1500ms">
										<div class="marker-box">
											<span class="icon-pin"></span>
										</div>
										<div class="location-info">
											<h3>Brooklyn</h3>
											<p>
												P. B: 222. Mid Corner Street<br> Brooklyn - 11223.<br>
												+224 620 63 09 00<br> example@example.com
											</p>
										</div>
									</div>
									<div class="single-location-box two wow zoomIn"
										data-wow-delay="300ms" data-wow-duration="1500ms">
										<div class="marker-box">
											<span class="icon-pin"></span>
										</div>
										<div class="location-info">
											<h3>Brooklyn</h3>
											<p>
												P. B: 222. Mid Corner Street<br> Brooklyn - 11223.<br>
												+224 620 63 09 00<br> example@example.com
											</p>
										</div>
									</div>
									<div class="single-location-box three wow zoomIn"
										data-wow-delay="500ms" data-wow-duration="1500ms">
										<div class="marker-box">
											<span class="icon-pin"></span>
										</div>
										<div class="location-info">
											<h3>Brooklyn</h3>
											<p>
												P. B: 222. Mid Corner Street<br> Brooklyn - 11223.<br>
												+224 620 63 09 00<br> example@example.com
											</p>
										</div>
									</div>
									<div class="single-location-box four wow zoomIn"
										data-wow-delay="700ms" data-wow-duration="1500ms">
										<div class="marker-box">
											<span class="icon-pin"></span>
										</div>
										<div class="location-info">
											<h3>Brooklyn</h3>
											<p>
												P. B: 222. Mid Corner Street<br> Brooklyn - 11223.<br>
												+224 620 63 09 00<br> example@example.com
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<%@page import="java.sql.DriverManager"%>
					<%@page import="java.sql.ResultSet"%>
					<%@page import="java.sql.Statement"%>
					<%@page import="java.sql.Connection"%>
					<%@page import="java.util.ArrayList"%>

					<%
	String id = request.getParameter("id");
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "demo";
	String userid = "root";
	String password = "";
	try {
		Class.forName(driver);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>
<% 
	try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "");
				Statement smt = con.createStatement();
				String user1 = (String) session.getAttribute("user");
				String s1 = "select * from userdetail where name='" + user1 + "'";
				ResultSet rs = smt.executeQuery(s1);
				if (rs.next()) {
		%>
		
					               <div class="col-xl-6 col-lg-6" >
                        <div class="appointment-box wow slideInRight" data-wow-delay="300ms" data-wow-duration="1500ms">
                            <div class="title-box">
                                <h2>Renovation</h2>
                            </div>
                            <div class="appointment">
                                <form class="appointment-form" action="renovation.jsp" method="post">
                                    <div class="row">
                                        <div class="col-xl-12">
                                            <div class="single-box">
                                                <input type="text" name="name" value="<%out.println(rs.getString(2));%>" placeholder="Name" required="required">
                                            </div>
                                        </div>
                                    </div>
                                  
                                      <div class="row">
                                        <div class="col-xl-12">
                                            <div class="single-box">
                                                <input type="text" name="email" value="<%out.println(rs.getString(4));%>">
                                            </div>
                                        </div>
                                    </div>
                                      <div class="row">
                                        <div class="col-xl-12">
                                            <div class="single-box">
                                                <input type="text" name="address" placeholder="city" required="required">
                                            </div>
                                        </div>
                                    </div>
                                      <div class="row">
                                        <div class="col-xl-12">
                                            <div class="single-box">
                                                <input type="text" name="state"  placeholder="state" required="required">
                                            </div>
                                        </div>
                                    </div>
                                      <div class="row">
                                        <div class="col-xl-12">
                                            <div class="single-box">
                                                <input type="date" name="date" required="required" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    
                                    
                            <br>
                                    <div class="row">
                                        <div class="col-xl-12">
                                            <div class="single-box">
                                                <select name="category" class="form-control"><optgroup>
								                <option value="House" >Office</option>
								                <option value="Flat">Flat</option>
								                <option value="Villa">Villa</option>
								               <option value="Bangalow">Bungalow</option>
                
                								</optgroup></select>
                                            </div>
                                        </div>
                                    </div>
                                    <br>
                                              <div class="row">
                                        <div class="col-xl-12">
                                            <div class="single-box">
                                                <input type="text" name="price" placeholder="budget" required="required">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xl-12">
                                            <div class="single-box">
                                                <button class="btn-one" type="submit">Submit Here<span class="flaticon-next"></span></button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>


        
                </div>
            </div>
        </section>
      
      <%
				}

				} catch (Exception e) {
					e.printStackTrace();
				}
			%>
		</div>
      

				
	<!--End latest blog area-->

	<!--Start Brand area-->

	<!--End Brand area-->

	<!--Start footer area-->

	<!--End footer area-->

	<!--Start footer bottom area-->
	<section class="footer-bottom-area">
		<div class="container">
			<div class="row">
				<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
					<div class="footer-bottom-content flex-box-two">
						<div class="copyright-text">
							<p>
								<a href="https://www.templateshub.net" target="_blank">LifeStyle</a>
							</p>
						</div>
						<div class="footer-social-links float-right">
							<span>We are On:</span>
							<ul class="sociallinks-style-one">
								<li class="wow slideInUp" data-wow-delay="0ms"
									data-wow-duration="1200ms"><a href="#"><i
										class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li class="wow slideInUp" data-wow-delay="100ms"
									data-wow-duration="1500ms"><a href="#"><i
										class="fa fa-twitter" aria-hidden="true"></i></a></li>
								<li class="wow slideInUp" data-wow-delay="300ms"
									data-wow-duration="1500ms"><a href="#"><i
										class="fa fa-skype" aria-hidden="true"></i></a></li>
								<li class="wow slideInUp" data-wow-delay="400ms"
									data-wow-duration="1500ms"><a href="#"><i
										class="fa fa-linkedin" aria-hidden="true"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--End footer bottom area-->


		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">User Profile</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>

					<div class="modal-body">


						<div id="profile-details">
							<table class="table">
								<%
									try {
										Class.forName("com.mysql.jdbc.Driver");
										Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "");
										Statement smt = con.createStatement();
										String user1 = (String) session.getAttribute("user");
										String s1 = "select * from userdetail where name='" + user1 + "'";
										ResultSet rs = smt.executeQuery(s1);
										if (rs.next()) {
								%>


								<tbody>
									<tr>
										<th scope="row">ID :<%
											out.println(rs.getString(1));
										%></th>
										<td></td>

									</tr>
									<tr>
										<th scope="row">name :<%
											out.println(rs.getString(2));
										%>
										</th>
										<td></td>

									</tr>
									<tr>
										<th scope="row">password :<%
											out.println(rs.getString(3));
										%></th>
										<td></td>

									</tr>
									<tr>
										<th scope="row">email :<%
											out.println(rs.getString(4));
										%></th>
										<td></td>

									</tr>
									<tr>
										<th scope="row">Phone No :<%
											out.println(rs.getString(5));
										%></th>
										<td></td>

									</tr>
								</tbody>


							</table>
						</div>
						
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						
					</div>
				</div>
			</div>
			<%
				}

				} catch (Exception e) {
					e.printStackTrace();
				}
			%>
		</div>
	</div>
	
		<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Complain Here</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>

					<div class="modal-body">


						<div id="profile-details">
						        <form action="complain.jsp" method="post">
						     <div class="form-group"><input class="form-control" type="text" name="name" placeholder="Name"></div>
            <div class="form-group"><select name="category" class="form-control">
            <option value="carpenter">carpenter</option>
            <option value="painter">painter</option>
            <option value="Designer">Designer</option>
            <option value="Election">Election</option>
            <option value="Plumber">Plumber</option>
            <option value="Renovation">Renovation</option>
            <option value=""></option></select></div>
            <div class="form-group"><input class="form-control" type="text" name="person" placeholder="Person Name"></div>
            
            <div
                class="form-group"><textarea class="form-control" name="message" placeholder="Message" rows="14"></textarea></div>
    <div class="form-group"><input class="btn btn-primary" type="submit" value="Complain here"></div>
    </form>
					


						</div>
						
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						
					</div>
				</div>
			</div>
		
		</div>
	</div>


	<div class="scroll-to-top-style2 scroll-to-target" data-target="html">
		<span class="fa fa-angle-up"></span>
	</div>



	<script src="js/jquery.js"></script>
	<script src="js/appear.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
	<script src="js/bootstrap-select.min.js"></script>
	<script src="js/isotope.js"></script>
	<script src="js/jquery.bootstrap-touchspin.js"></script>
	<script src="js/jquery.countTo.js"></script>
	<script src="js/jquery.easing.min.js"></script>
	<script src="js/jquery.enllax.min.js"></script>
	<script src="js/jquery.fancybox.js"></script>
	<script src="js/jquery.mixitup.min.js"></script>
	<script src="js/jquery.paroller.min.js"></script>
	<script src="js/owl.js"></script>
	<script src="js/validation.js"></script>
	<script src="js/wow.js"></script>

	<!---
<script src="js/gmaps.js"></script>
<script src="http://maps.google.com/maps/api/js?key=AIzaSyB2uu6KHbLc_y7fyAVA4dpqSVM4w9ZnnUw"></script>
<script src="js/mapapi.js"></script> 
--->
	<script src="js/map-helper.js"></script>

	<script
		src="assets/language-switcher/jquery.polyglot.language.switcher.js"></script>
	<script src="assets/timepicker/timePicker.js"></script>
	<script src="assets/html5lightbox/html5lightbox.js"></script>

	<!--Revolution Slider-->
	<script src="plugins/revolution/js/jquery.themepunch.revolution.min.js"></script>
	<script src="plugins/revolution/js/jquery.themepunch.tools.min.js"></script>
	<script
		src="plugins/revolution/js/extensions/revolution.extension.actions.min.js"></script>
	<script
		src="plugins/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
	<script
		src="plugins/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
	<script
		src="plugins/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script
		src="plugins/revolution/js/extensions/revolution.extension.migration.min.js"></script>
	<script
		src="plugins/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
	<script
		src="plugins/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
	<script
		src="plugins/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
	<script
		src="plugins/revolution/js/extensions/revolution.extension.video.min.js"></script>
	<script src="js/main-slider-script.js"></script>

	<!-- thm custom script -->
	<script src="js/custom.js"></script>



</body>


<!-- index 06:41:43 GMT -->
</html>