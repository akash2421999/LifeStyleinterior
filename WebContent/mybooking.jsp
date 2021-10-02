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
    <title>User Booking</title>

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
              	<%@include file="header1.jsp"%>
   
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
                                <span>UserPage</span>
                                <h1>My Booking</h1>
                            </div>
                            <div class="breadcrumb-menu float-left">
                                <ul class="clearfix">
                                    <li><a href="index-2.html">Home</a></li>
                                    <li><a href="project.html">user</a></li>
                                    <li class="active">my Booking</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <h3><center>My Bookings</center></h3>
        <!--End breadcrumb area-->
<table class="table">
  <thead class="thead-dark">   <tr>
     
      <th scope="col">contractor name</th>
      <th scope="col">contractor email</th>
    
    </tr></thead>
        <!--Start Main project area style2-->
        <!--This is for Contractor Booking-->
          <%
													try {
														String email=(String) session.getAttribute("email");
														System.out.print(email);
														connection = DriverManager.getConnection(connectionUrl + database, userid, password);
														statement = connection.createStatement();
														String sql = "select * from bookcont where uemail = '"+ email +"'";
														resultSet = statement.executeQuery(sql);
														while (resultSet.next()) {

													
												%>
												
 
  
  <tbody>
    <tr>
 
      <td><%out.println(resultSet.getString(3));%></td>
      <td><%out.println(resultSet.getString(2));%></td>
     
    </tr>
  
  </tbody>

												
												
      
	<%
													}
														connection.close();
													} catch (Exception e) {
														e.printStackTrace();
													}
												%>
												</table>
												<table class="table">
  <thead class="thead-dark">   <tr>
     
      <th scope="col">plumber name</th>
      <th scope="col">Plumber email</th>
    
    </tr></thead>
		 <!--This is for Plumber Booking-->
		 
          <%
													try {
														String email=(String) session.getAttribute("email");
														System.out.print(email);
														connection = DriverManager.getConnection(connectionUrl + database, userid, password);
														statement = connection.createStatement();
														String sql = "select * from bookplum where uemail = '"+ email +"'";
														resultSet = statement.executeQuery(sql);
														while (resultSet.next()) {

													
												%>
       <tbody>
    <tr>
 
      <td><%out.println(resultSet.getString(3));%></td>
      <td><%out.println(resultSet.getString(2));%></td>
     
    </tr>
  
  </tbody>
      
	<%
													}
														connection.close();
													} catch (Exception e) {
														e.printStackTrace();
													}
												%>
																								</table>
																								<table class="table">
  <thead class="thead-dark">   <tr>
     
      <th scope="col">electric name</th>
      <th scope="col">electric email</th>
    
    </tr></thead>
												
												
		<!--This is for Electrician Booking-->		
		
		      <%
													try {
														String email=(String) session.getAttribute("email");
														System.out.print(email);
														connection = DriverManager.getConnection(connectionUrl + database, userid, password);
														statement = connection.createStatement();
														String sql = "select * from bookelect where uemail = '"+ email +"'";
														resultSet = statement.executeQuery(sql);
														while (resultSet.next()) {

													
												%>
        <tbody>
    <tr>
 
      <td><%out.println(resultSet.getString(3));%></td>
      <td><%out.println(resultSet.getString(2));%></td>
     
    </tr>
  
  </tbody>
       
	<%
													}
														connection.close();
													} catch (Exception e) {
														e.printStackTrace();
													}
												%>
																																				</table>
												
															
        <!--End Main project area style2-->

        <!--Start footer area Style4-->
        
        <!--End footer area style4-->

        <!--Start Footer Contact Info Area-->
      
        <!--End Footer Contact Info Area-->

        <!--Start footer bottom area-->
        <section class="footer-bottom-area style3">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                        <div class="copyright-text text-center">
                            <p><a href="https://www.templateshub.net" target="_blank"></a>Lifestyle</p>
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