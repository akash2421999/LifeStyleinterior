
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
<!DOCTYPE html>
<html lang="en">


<!-- ser-concept-designs 06:47:24 GMT -->
<head>
<meta charset="UTF-8">
<title>Package</title>

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

		<!-- Start Top Bar style2 -->
	<%@include file="header2.jsp"%>
		<!-- End Top Bar style2 -->

		<!--Start Main Header-->
		    <header class="main-header header-style2 stricky">
           	<%@include file="header.jsp"%>
           
        </header>
		<!--End Main Header-->

		<!--Start breadcrumb area-->
		<section class="breadcrumb-area style2"
			style="background-image: url(images/resources/breadcrumb-bg-2.jpg);">
			<div class="container">
				<div class="row">
					<div class="col-xl-12">
						<div class="inner-content-box clearfix">
							<div class="title-s2 text-center">
								<span>Single Service</span>
								<h1>PACKAGES</h1>
							</div>
							<div class="breadcrumb-menu float-left">
								<ul class="clearfix">
									<li><a href="index-2.html">Home</a></li>
									<li><a href="services.html">user</a></li>
									<li class="active">Package</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--End breadcrumb area-->

		<!--Start Single Service Area-->
		<section class="single-service-area">
			<form action="process.jsp" method="post">
				<div class="container">
					<div class="row">

						<!--End Single sidebar-->

						<!--End Single sidebar-->



<input type="text" name="name" class="form-control"
							placeholder="Name">

						<div class="concept-design-pricing-box">
							<div class="title">
								<h2>Concept Design Pricing</h2>
							</div>
								
							<div class="inner-content">
							
								<div class="row">
							
									<!--Start Single Flexible box-->
									<div class="col-xl-6 col-lg-6 col-md-6">
										<div class="single-pricing-box wow fadeInLeft"
											data-wow-delay="100ms" data-wow-duration="1500ms">
											<div class="inner">
												<div class="img-box">
													<img src="images/services/service-single/pricing-1.jpg"
														alt="Awesome Image">
												</div>
												<div class="static-content text-center">
													<div class="table-header">
														<div class="top">
															<h3>1 BHK</h3>
															<span><b>*</b>Specially planned for small business</span>
														</div>
														<div class="package">
															<h1>
																<span>$</span>2 LAKHS
															</h1>
															<p>Renovation</p>
														</div>
													</div>
													<div class="button">
														<a class="btn-one" href="#">View Services<span
															class="flaticon-next"></span></a>
													</div>
												</div>
												<div class="overlay-content">
													<ul>
														<li>Consultation</li>
														<li>Drawing</li>
														<li>Estimate Review</li>
														<li>Built Measurements</li>
														<li>Original source Files</li>
													</ul>
													<input type="hidden" name="packname" value="1BHk">
													<input type="hidden" name="packprice" value="100000">
													<button type="button" class="btn btn-primary"
														data-toggle="modal" data-target="#exampleModal"
														data-whatever="@fat">Payment</button>

												</div>
											</div>
										</div>
									</div>

									<!--End Single Flexible box-->
									<!--Start Single Flexible box-->
									<div class="col-xl-6 col-lg-6 col-md-6">
										<div class="single-pricing-box wow fadeInLeft"
											data-wow-delay="100ms" data-wow-duration="1500ms">
											<div class="inner">
												<div class="img-box">
													<img src="images/services/service-single/pricing-2.jpg"
														alt="Awesome Image">
												</div>
												<div class="static-content text-center">
													<div class="table-header">
														<div class="top">
															<h3>2 BHK</h3>
															<span><b>*</b>Specially planned for small business</span>
														</div>
														<div class="package">
															<h1>
																<span>$</span>4 LAKHS
															</h1>
															<p>New Build</p>
														</div>
													</div>
													<div class="button">
														<a class="btn-one" href="#">View Services<span
															class="flaticon-next"></span></a>
													</div>
												</div>
												<div class="overlay-content">
													<ul>
														<li>Consultation</li>
														<li>Drawing</li>
														<li>Estimate Review</li>
														<li>Built Measurements</li>
														<li>Original source Files</li>
													</ul>
													<input type="hidden" name="packname" value="2BHk">
													<input type="hidden" name="packprice" value="400000">
													<button type="button" class="btn btn-primary"
														data-toggle="modal" data-target="#exampleModal"
														data-whatever="@fat">Payment</button>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-6 col-lg-6 col-md-6">
										<div class="single-pricing-box wow fadeInLeft"
											data-wow-delay="100ms" data-wow-duration="1500ms">
											<div class="inner">
												<div class="img-box">
													<img src="images/services/service-single/pricing-2.jpg"
														alt="Awesome Image">
												</div>
												<div class="static-content text-center">
													<div class="table-header">
														<div class="top">
															<h3>3 BHK</h3>
															<span><b>*</b>Specially planned for small business</span>
														</div>
														<div class="package">
															<h1>
																<span>$</span>5 LAKHS
															</h1>
															<p>New Build</p>
														</div>
													</div>
													<div class="button">
														<a class="btn-one" href="#">View Services<span
															class="flaticon-next"></span></a>
													</div>
												</div>
												<div class="overlay-content">
													<ul>
														<li>Consultation</li>
														<li>Drawing</li>
														<li>Estimate Review</li>
														<li>Built Measurements</li>
														<li>Original source Files</li>
													</ul>
													<input type="hidden" name="packname" value="3BHk">
													<input type="hidden" name="packprice" value="500000">
													<button type="button" class="btn btn-primary"
														data-toggle="modal" data-target="#exampleModal"
														data-whatever="@fat">Payment</button>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-6 col-lg-6 col-md-6">
										<div class="single-pricing-box wow fadeInLeft"
											data-wow-delay="100ms" data-wow-duration="1500ms">
											<div class="inner">
												<div class="img-box">
													<img src="images/services/service-single/pricing-2.jpg"
														alt="Awesome Image">
												</div>
												<div class="static-content text-center">
													<div class="table-header">
														<div class="top">
															<h3>4 BHK</h3>
															<span><b>*</b>Specially planned for small business</span>
														</div>
														<div class="package">
															<h1>
																<span>$</span>7 LAKHS
															</h1>
															<p>New Build</p>
														</div>
													</div>
													<div class="button">
														<a class="btn-one" href="#">View Services<span
															class="flaticon-next"></span></a>
													</div>
												</div>
												<div class="overlay-content">
													<ul>
														<li>Consultation</li>
														<li>Drawing</li>
														<li>Estimate Review</li>
														<li>Built Measurements</li>
														<li>Original source Files</li>
													</ul>
													<input type="text" name="packname" value="4BHk">
													<input type="text" name="packprice" value="700000">
													<button type="button" class="btn btn-primary"
														data-toggle="modal" data-target="#exampleModal"
														data-whatever="@fat">Payment</button>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-6 col-lg-6 col-md-6">
										<div class="single-pricing-box wow fadeInLeft"
											data-wow-delay="100ms" data-wow-duration="1500ms">
											<div class="inner">
												<div class="img-box">
													<img src="images/services/service-single/pricing-2.jpg"
														alt="Awesome Image">
												</div>
												<div class="static-content text-center">
													<div class="table-header">
														<div class="top">
															<h3>BUNGALOW</h3>
															<span><b>*</b>Specially planned for small business</span>
														</div>
														<div class="package">
															<h1>
																<span>$</span>8 lakhs
															</h1>
															<p>New Build</p>
														</div>
													</div>
													<div class="button">
														<a class="btn-one" href="#">View Services<span
															class="flaticon-next"></span></a>
													</div>
												</div>
												<div class="overlay-content">
													<ul>
														<li>Consultation</li>
														<li>Drawing</li>
														<li>Estimate Review</li>
														<li>Built Measurements</li>
														<li>Original source Files</li>
													</ul>
													<input type="hidden" name="packname" value="BUNGALOW">
													<input type="hidden" name="packprice" value="800000">
													<button type="button" class="btn btn-primary"
														data-toggle="modal" data-target="#exampleModal"
														data-whatever="@fat">Payment</button>
												</div>
											</div>
										</div>
									</div>
									<!--End Single Flexible box-->

								</div>
							</div>
						</div>


						<div class="modal fade bd-example-modal-lg" id="exampleModal"
							tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
							aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">Payment</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">
										<div class="col-md-10 offset-md-1">
											<span class="anchor" id="formPayment"></span>
											<hr class="my-5">

											<!-- form card cc payment -->
											<div class="card card-outline-secondary">
												<div class="card-body">
													<h3 class="text-center">Credit Card Payment</h3>
													<hr>


													<div class="form-group">
														<label for="cc_name">Card Holder's Name</label> <input
															type="text" class="form-control" id="cc_name"
															name="holdername" pattern="\w+ \w+.*"
															title="First and last name" required="required">
													</div>
													<div class="form-group">
														<label>Card Number</label> <input type="text"
															class="form-control" autocomplete="off" name="cnum"
															maxlength="20" pattern="\d{16}"
															title="Credit card number" required="required">
													</div>
													<div class="form-group row">
														<label class="col-md-12">Card Exp. Date</label>
														<div class="col-md-4">
															<select class="form-control" name="cc_exp_mo" size="0">
																<option value="01">01</option>
																<option value="02">02</option>
																<option value="03">03</option>
																<option value="04">04</option>
																<option value="05">05</option>
																<option value="06">06</option>
																<option value="07">07</option>
																<option value="08">08</option>
																<option value="09">09</option>
																<option value="10">10</option>
																<option value="11">11</option>
																<option value="12">12</option>
															</select>
														</div>
														<div class="col-md-4">
															<select class="form-control" name="cc_exp_yr" size="0">
																<option value="2018">2018</option>
																<option value="2019">2019</option>
																<option value="2020">2020</option>
																<option value="2021">2021</option>
																<option value="2022">2022</option>
															</select>
														</div>
														<div class="col-md-4">
															<input type="text" class="form-control" name="cvv"
																autocomplete="off" maxlength="3" pattern="\d{3}"
																title="Three digits at back of your card"
																placeholder="CVV" required="required">
														</div>
													</div>
													<div class="row">
														<label class="col-md-12">Amount</label>
													</div>
													<div class="form-inline">
														<div class="input-group">
															<div class="input-group-prepend">
																<span class="input-group-text">$</span>
															</div>
															<input type="text" class="form-control text-right"
																name="amount" id="exampleInputAmount"
																placeholder="Amount" required="required">
															<div class="input-group-append"></div>
														</div>
													</div>
													<hr>
													<div class="form-group row">
														<div class="col-md-6">
															<button type="reset"
																class="btn btn-default btn-lg btn-block">Cancel</button>
														</div>
														<div class="col-md-6">
															<input type="submit" value="Submit"
																class="btn btn-success btn-lg btn-block" onclick="sub()">
														</div>
													</div>

												</div>
											</div>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">Close</button>
										</div>
									</div>
								</div>
							</div>

							<!--End single accordion box-->
						</div>
					</div>

				</div>
	</div>
	

	</form>
	</section>
	<!--End Single Service Area-->

	<!--Start footer area Style4-->
	

	<!--Start footer bottom area-->
           	<%@include file="footer1.jsp"%>

	<!--End footer botom area-->


           	<%@include file="call.jsp"%>

	<div class="scroll-to-top scroll-to-target" data-target="html">
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

	<script src="js/map-helper.js"></script>

	<script
		src="assets/language-switcher/jquery.polyglot.language.switcher.js"></script>
	<script src="assets/timepicker/timePicker.js"></script>
	<script src="assets/html5lightbox/html5lightbox.js"></script>

	<!-- thm custom script -->
	<script src="js/custom.js"></script>



</body>


<!-- ser-concept-designs 06:47:55 GMT -->
</html>