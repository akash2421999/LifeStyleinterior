<%@page import="java.sql.DriverManager"%>
					<%@page import="java.sql.ResultSet"%>
					<%@page import="java.sql.Statement"%>
					<%@page import="java.sql.Connection"%>
					<%
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


<!-- project-v2 06:48:42 GMT -->
<head>
    <meta charset="UTF-8">
    <title>Projects Classic View V2 || crystalo || Responsive HTML 5 Template</title>

    <!-- responsive meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- For IE -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- master stylesheet -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive stylesheet -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="images/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" href="images/favicon/favicon-32x32.png" sizes="32x32">
    <link rel="icon" type="image/png" href="images/favicon/favicon-16x16.png" sizes="16x16">

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
        <section class="top-bar-style2">
            <div class="top-style2 clearfix">
                <div class="top-style2-left">
                    <p><span class="icon-music"></span>We have Answers</p>
                    <ul>
                        <li>+324 123 45 978</li>
                        <li>abc@yourdomain.com</li>
                        <li>Mon - Sat: 9am to 6pm</li>
                    </ul>
                </div>
                <div class="top-style2-right">
                    <ul class="top-right-menu">
                        <li><a href="#">Partners</a></li>
                        <li><a href="#">Media</a></li>
                        <li><a href="#">360O View</a></li>
                        <li><a href="#">FAQ</a></li>
                    </ul>
                    <ul class="topbar-social-links">
                        <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-skype" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                    </ul>
                </div>
            </div>
        </section>
        <!-- End Top Bar style2 -->

        <!--Start Main Header-->
        <header class="main-header header-style2 stricky">
           	<%@include file="header.jsp"%>
           
        </header>
        <!--End Main Header-->

        <!--Start breadcrumb area-->
        <section class="breadcrumb-area style2" style="background-image: url(images/resources/breadcrumb-bg-2.jpg);">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="inner-content-box clearfix">
                            <div class="title-s2 text-center">
                                <span>Our Projects</span>
                                <h1>More than 2300 Projects</h1>
                            </div>
                            <div class="breadcrumb-menu float-left">
                                <ul class="clearfix">
                                    <li><a href="index-2.html">Home</a></li>
                                    <li><a href="project.html">Projects</a></li>
                                    <li class="active">Classic View V2</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--This is for Contractor Booking-->
        <form action="painterassign.jsp" method="post">
          <%
													try {
														String id = request.getParameter("id");														
														connection = DriverManager.getConnection(connectionUrl + database, userid, password);
														statement = connection.createStatement();
														String sql = "select * from painter where id = '"+id+"' ";
														resultSet = statement.executeQuery(sql);
														while (resultSet.next()) {

												%>
							<h3>User Details</h3><br/>
							Customer name: -							
							<input type="text" name="cname" value="<%out.println(resultSet.getString(2));%>" readonly="readonly"><br/>
							Customer Emial: -
							<input type="text" name="cemail" value="<%out.println(resultSet.getString(3));%>" readonly="readonly"><br/>
							Brand needed: -
							<input type="text" value="<%out.println(resultSet.getString(4));%>" readonly="readonly"><br/>
							Painting for: -
							<input type="text" value="<%out.println(resultSet.getString(5));%>" readonly="readonly"><br/>
							Budget: -
							<input type="text" value="<%out.println(resultSet.getString(6));%>" readonly="readonly"><br/>
							Date: -
							<input type="text" name="date" value="<%out.println(resultSet.getString(7));%>" readonly="readonly"><br/>
							Address: -
							<textarea readonly="readonly"><%out.println(resultSet.getString(8));%></textarea><br/><br/>
							
	<%
															}
														
														connection.close();
													} catch (Exception e) {
														e.printStackTrace();
													}
												%>
		 <!--Select Painter-->	
		 <h3>Select Painter</h3><br/>
		     <%
													try {
														String id = request.getParameter("id");
														connection = DriverManager.getConnection(connectionUrl + database, userid, password);
														statement = connection.createStatement();
														String sql = "select * from other_register where category = 'painter' ";
														resultSet = statement.executeQuery(sql);
														%>
																	
			<select name="painter" >
			<%
			while (resultSet.next()) {%>
			<option value="<%=resultSet.getString("email")%>"><%=resultSet.getString("name")%></option>
			 <%}%>
			</select>
			<br/>
			
			
			<button type="submit" onclikck="fun()">Submit</button>
			<!-- <a class="btn btn-primary" href="painterassign.jsp">Delete</a>!-->
		
																	
	<%
												
														connection.close();
	
													} catch (Exception e) {
														e.printStackTrace();
													}
		     
												%>
												</form>
        <!--End Main project area style2-->
		
        <!--Start footer area Style4-->
        <footer class="footer-area style4">
            <div class="container">
                <div class="row">
                    <!--Start single footer widget-->
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12">
                        <div class="single-footer-widget marbtm50-s4">
                            <div class="our-info-box">
                                <div class="footer-logo">
                                    <a href="index.jsp">
                                        <img src="images/footer/footer-logo.png" alt="Awesome Logo">
                                    </a>
                                </div>
                                <div class="text">
                                    <p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the blinded by desiremoment.</p>
                                </div>
                                <div class="follow-us-social-links clearfix">
                                    <span>Follw Us On:</span>
                                    <ul>
                                        <li><a href="#">Facebook</a></li>
                                        <li><a href="#">Twitter</a></li>
                                        <li><a href="#">Instagram</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End single footer widget-->
                    <!--Start single footer widget-->
                    <div class="col-xl-4 col-lg-5 col-md-6 col-sm-12">
                        <div class="single-footer-widget s4">
                            <div class="title-style2">
                                <h3>Usefull Links</h3>
                            </div>
                            <div class="usefull-links">
                                <ul class="float-left">
                                    <li><a href="#">Company</a></li>
                                    <li><a href="#">Services</a></li>
                                    <li><a href="#">Team</a></li>
                                    <li><a href="#">Projects</a></li>
                                    <li><a href="#">Get a Quote</a></li>
                                </ul>
                                <ul class="float-left borders-left">
                                    <li><a href="#">News</a></li>
                                    <li><a href="#">Testimonials</a></li>
                                    <li><a href="#">Partners</a></li>
                                    <li><a href="#">Privacy Policy</a></li>
                                    <li><a href="#">Contact Us</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--End single footer widget-->
                    <!--Start single footer widget-->
                    <div class="col-xl-4 col-lg-3 col-md-12 col-sm-12">
                        <div class="single-footer-widget pdtop50-s4">
                            <div class="title-style2">
                                <h3>Subscribe Us</h3>
                            </div>
                            <div class="subscribe-box">
                                <form class="subscribe-form" action="#">
                                    <input type="email" name="email" placeholder="Your Email">
                                    <button class="btn-one" type="submit">Subscribe<span class="flaticon-next"></span></button>
                                </form>
                                <div class="text">
                                    <p><span>*</span>Subscribe us and get latest news and updates</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End single footer widget-->
                </div>
            </div>
        </footer>
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
                                            <p>#21, killari road, near abhinaya theatre Bangaluru<br> 560053, Karnataka</p>
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
                                            <p>9008057179<br> <span>Mon - Friday:</span> 9.00am to 6.00pm</p>
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
                                            <p>abc@yourdomain.com<br> lifestyleinteriors2021@gmail.com</p>
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
                            <p><a href="https://www.templateshub.net" target="_blank"></a></p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--End footer bottom area-->

    </div>
           	<%@include file="call.jsp"%>


    <div class="scroll-to-top scroll-to-target" data-target="html"><span class="fa fa-angle-up"></span></div>



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

    <script src="assets/language-switcher/jquery.polyglot.language.switcher.js"></script>
    <script src="assets/timepicker/timePicker.js"></script>
    <script src="assets/html5lightbox/html5lightbox.js"></script>

    <!-- thm custom script -->
    <script src="js/custom.js"></script>



</body>


<!-- project-v2 06:49:15 GMT -->
</html>