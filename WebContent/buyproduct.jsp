<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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


<!-- index-2 06:41:43 GMT -->
<head>
<meta charset="UTF-8">
<title>Home Two || Crystalo || Responsive HTML 5 Template</title>

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

		<%@include file="header1.jsp"%>
        
        <!-- End Top Bar style2 -->

        <!--Start Main Header-->
        <header class="main-header header-style2 stricky">
           	<%@include file="header.jsp"%>
           
        </header>
        	<form action="prodet.jsp" method="post">
        		
		<%
			try {
				connection = DriverManager.getConnection(connectionUrl + database, userid, password);
				statement = connection.createStatement();
				String sql = "select * from product where id=" + id;
				resultSet = statement.executeQuery(sql);
				while (resultSet.next()) {
		%>
		<!--End Main Slider-->


			<input type="hidden" name="prodid"
				value="<%=resultSet.getString("id")%>"> <input type="text"
				class="form-control" id="validationDefault01" name="prodname"
				value="<%=resultSet.getString("name")%>" readonly> <input
				type="text" class="form-control" id="validationDefault01"
				name="price" value="<%=resultSet.getString("price")%>" readonly>
			<!--Start About Style2 Area-->

			<!--End Why choose Area-->

			<!--Start Recently Project style2 Area-->
			<%
				}
					connection.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			%>

		<%
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "");
					Statement smt = con.createStatement();
					String user1 = (String) session.getAttribute("email");
					String s1 = "select * from userdetail where email='" + user1 + "'";
					ResultSet rs = smt.executeQuery(s1);
					if (rs.next()) {
			%>
			<!--Start Contact details Area-->
			<section class="contact-details-area">
				<div class="sec-title text-center">
					<p>Automatic FillIng System</p>
					<div class="title clr-white">
						Check fro the details<span>Given</span>
					</div>
				</div>
				<div class="parallax-background"
					style="background-image: url(images/parallax-background/contact-details-bg.html);"></div>
				<div class="container">
					<div class="row">
						<div class="col-xl-12">
							<div class="contact-details-content">

								<div class="row">
									<div class="col-xl-6 col-lg-6">
										<div class="content-info-box"
											style="background-image: url(images/parallax-background/contact-info-box-bg.jpg);">
											<div class="inner-content">
												<div class="inner">
													<div class="single-info-box wow fadeInDown"
														data-wow-delay="100ms" data-wow-duration="1200ms">
														<div class="icon">
															<span class="icon-global"></span>
														</div>
														<div class="text">
															<h3>Visit Our Office</h3>
															<p>Flat A, 20/7, Reynolds Neck Str, North Helenaville</p>
														</div>
													</div>
													<div class="single-info-box white-bg wow fadeInUp"
														data-wow-delay="100ms" data-wow-duration="1200ms">
														<div class="icon">
															<span class="icon-global"></span>
														</div>
														<div class="text">
															<h3>Visit Our Office</h3>
															<p>Flat A, 20/7, Reynolds Neck Str, North Helenaville</p>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-6 col-lg-6">
										<div class="contact-details-form-box">
											<div class="title-box">
												<h2>
													Request for<br> Approximate Estimation
												</h2>
											</div>
											<div class="contact-details-box">
												<form class="contact-details-form">
													<div class="row">
														<div class="col-xl-6">
															<div class="single-box">
																<input type="text" class="form-control" name="name"
																	value="<%out.println(rs.getString(2));%>" readonly>
															</div>
														</div>
														<div class="col-xl-6">
															<div class="single-box">
																<input type="text" class="form-control" name="phone"
																	value="<%out.println(rs.getString(6));%>" readonly>
															</div>
														</div>
														
													</div>
													<br>
												
											</div>
											
											
											<div class="row">
												<div class="col-xl-12">
													<div class="single-box">
														<input type="text" 
															class="form-control" name="address"
															value="<%out.println(rs.getString(5));%>" readonly>
												
													</div>
												</div>
											</div>
											<input type="hidden" class="form-control" name="status"
												value="Pending">
												<br>
											<div class="row">
												<div class="col-xl-12">
													<div class="single-box">
														<button class="btn-one" type="submit">
															Send Request<span class="flaticon-next"></span>
														</button>
													</div>
												</div>
											</div>
	
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	<%
		}
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>

	</div>
	</div>
	</section>

	<!--End Contact details Area-->
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
										maxlength="20" pattern="\d{16}" title="Credit card number">
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
											title="Three digits at back of your card" placeholder="CVV">
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
										<input type="text" class="form-control text-right" name="amt"
											id="exampleInputAmount" value="" placeholder="Amount">
										<div class="input-group-append"></div>
									</div>
								</div>
								<hr>
								<div class="form-group row">
									<div class="col-md-6">
										<button type="reset" class="btn btn-default btn-lg btn-block">Cancel</button>
									</div>
									<div class="col-md-6">
										<input type="submit" value="Submit"
											class="btn btn-success btn-lg btn-block">
									</div>
								</div>

							</div>
						</div>
					</div>

				</div>
	<!--Start latest blog area style2-->

	<!--End Instagram Area-->

	<!--Start footer area Style4-->
	
	<!--End footer area style4-->

	<!--Start Footer Contact Info Area-->
	<section class="footer-contact-info-area">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<ul class="footer-contact-info clearfix">
						<li>
							<div class="single-footer-contact-info">
								<div class="inner">
									<div class="icon">
										<span class="icon-global"></span>
									</div>
									<div class="text">
										<p>
											South end circle<br> Bangalore 560002
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="single-footer-contact-info">
								<div class="inner">
									<div class="icon">
										<span class="icon-support1"></span>
									</div>
									<div class="text">
										<p>
											+91 941765401<br> <span>Mon - Friday:</span>
											9.00am to 6.00pm
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="single-footer-contact-info">
								<div class="inner">
									<div class="icon">
										<span class="icon-shipping-and-delivery"></span>
									</div>
									<div class="text">
										<p>
											LifeStyle@gmail.com
										</p>
									</div>
								</div>
							</div>
						</li>

					</ul>
				</div>
			</div>
		</div>
	</section>
	<!--End Footer Contact Info Area-->

	<!--Start footer bottom area-->
	<section class="footer-bottom-area style3">
		<div class="container">
			<div class="row">
				<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
					<div class="copyright-text text-center">
						<p>
							<a href="https://www.templateshub.net" target="_blank">Lifestyle</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--End footer bottom area-->

	</div>


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


<!-- index-2 06:43:55 GMT -->
</html>