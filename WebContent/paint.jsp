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

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Paint</title>
<title></title>

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
								<span>User Page</span>
								<h1>Painter</h1>
							</div>
							<div class="breadcrumb-menu float-left">
								<ul class="clearfix">
									
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--End breadcrumb area-->


		<!--Start Checkout area-->
		<section class="checkout-area">
			<div class="container">


				<div class="row">
					<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
						<div class="form billing-info">
							<div class="shop-page-title">
								<div class="title">
									painter <span></span>
								</div>
							</div>
		
					<form action="paintprocess.jsp" method="post">
								<div class="row">

									<div class="col-md-12">
										<div class="field-label">First Name*</div>
										<div class="field-input">
											<input type="text"  placeholder="" name="name"
								value="<%out.println(rs.getString(2));%>"  readonly>
										</div>
									</div>
									<div class="col-md-12">
										<div class="field-label">email*</div>
										<div class="field-input">
											<input type="text"  placeholder="" name="email"
								value="<%out.println(rs.getString(4));%>" readonly>
										</div>
									</div>

									<div class="col-md-12">
										<div class="field-label">Select Brand *</div>
										<div class="field-input">
											<div class="single-box">
												<select class="selectpicker" name="brand" data-width="100%">
													<option value="Asian Paints">Asian Paints</option>
								<option value="Berger Paints">Berger Paints</option>
								<option value="Mysore Paints">Mysore Paints</option>
												</select>
											</div>
										</div>
									</div>
								</div>
								<br>
								<div class="col-md-12">
									<div class="field-label">Where do you want PainTing *</div>

									<div class="field-input">
										<input type="radio" name="painting" value="full_house" placeholder="">
										<label
								class="form-check-label" for="formCheck-1">Full House</label>
								<br>
								<input type="radio" name="painting" value="few_rooms" placeholder="">
										<label
								class="form-check-label" for="formCheck-1">Few rooms </label>
								<br>
								<input type="radio" name="painting" value="few_walls" placeholder="">
										<label
								class="form-check-label" for="formCheck-1">Few_walls</label>
								<br>
								<input type="radio" name="painting" value="other" placeholder="">
										<label
								class="form-check-label" for="formCheck-1">Other</label>
								<br>
								
								
									</div>
								</div>
								
								<div class="col-md-12">
									<div class="field-label">budget</div>
									<div class="field-input">
<input
										class="form-control" type="text" name="price" min="0" max="10"
										onkeypress="return /[0-9]/i.test(event.key)"
										autocomplete="off" placeholder="Ex:- 20000-100000"
										style="margin-top: 4px;">									</div>
								</div>
								<div class="col-md-12">
									<div class="field-label">Meeting date *</div>

									<div class="field-input">
										<input type="Date" name="date" placeholder=""
											class="form-control">
									</div>
									<br>
								</div>
								<div class="col-md-12">
									<div class="field-label">Address</div>
									<div class="field-input">
										<input type="text"  placeholder="" name="address"
								value="<%out.println(rs.getString(5));%>" readonly>
									</div>
								</div>
								<div class="col-md-12">
									<div class="create-acc">
										<div class="checkbox">
											<label> <input type="submit" class="form-control" value="submit">
												<br>
											</label>
										</div>
									</div>
								</div>
						</div>
						</form>
					</div>
				</div>



			</div>

	</div>
</section>
	<!--End Checkout area-->
<%
				}
					connection.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			%>
	<!--Start footer area Style4-->
	
	<!--End footer area style4-->

	<!--Start Footer Contact Info Area-->
           	

	<!--End Footer Contact Info Area-->

	<!--Start footer bottom area-->

	<!--End footer bottom area-->

	</div>

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
	<script src="js/jquery.bootstrap-touchspin.js"></script>

	<script
		src="assets/language-switcher/jquery.polyglot.language.switcher.js"></script>
	<script src="assets/timepicker/timePicker.js"></script>
	<script src="assets/html5lightbox/html5lightbox.js"></script>

	<script src="assets/bootstrap-sl-1.12.1/bootstrap-select.js"></script>
	<script src="assets/jquery-ui-1.11.4/jquery-ui.js"></script>

	<!-- thm custom script -->
	<script src="js/custom.js"></script>


</body>
</html>