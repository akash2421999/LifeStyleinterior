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
<title>Electrician\Process</title>

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



		<!-- Start Top Bar style2 -->
	<div class="preloader"></div>

        <!-- Start Top Bar style2 -->
               	<%@include file="header1.jsp"%>
        
        <!-- End Top Bar style2 -->

        <!--Start Main Header-->
        <header class="main-header header-style2 stricky">
           	<%@include file="header.jsp"%>
           
        </header>
		<!--End Main Header-->

		<!--Main Slider-->
		<%
			try {
				connection = DriverManager.getConnection(connectionUrl + database, userid, password);
				statement = connection.createStatement();
				String sql = "select * from other_register where email='" + id + "'";
				resultSet = statement.executeQuery(sql);
				while (resultSet.next()) {
		%>
		<!--End Main Slider-->
		<form action="bookelec.jsp" method="post">

			<input type="hidden" class="form-control" id="validationDefault01"
				name="electemail" value="<%=resultSet.getString("email")%>" readonly>
			<input type="hidden" class="form-control" id="validationDefault01"
				name="electname" value="<%=resultSet.getString("name")%>" readonly>
			<input type="hidden" class="form-control" id="validationDefault01"
				name="" value="<%=resultSet.getString("phone")%>" readonly>
			<input type="hidden" class="form-control" id="validationDefault01"
				name="" value="<%=resultSet.getString("city")%>" readonly>
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

			<!--End Working Process Style2 Area-->

			<!--Start Testimonial Style2 Area-->

			<!--End Testimonial Style2 Area-->
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
													<div class="col-xl-12">
														<div class="single-box">
															<input type="email" class="form-control" name="uemail"
																value="<%out.println(rs.getString(4));%>" readonly>
														</div>
													</div>
											</div>
											<div class="col-xl-12">
												<div class="single-box">
													<label>Meeting date</label> <input type="date" name="date"
														value="" class="form-control" required="">
												</div>
											</div>
											<br>
											
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
		</form>
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
	</form>
	<!--End Contact details Area-->

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
											Bangalore 560002<br>South end circle
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
											+91 9741765401<br> <span>Mon - Friday:</span>
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
											Lifestyle@gmail.com
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
							<a href="https://www.templateshub.net" target="_blank">Lifestyle
								Hub</a>
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