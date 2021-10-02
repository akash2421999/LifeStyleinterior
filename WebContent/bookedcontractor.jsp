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


<!-- project 06:47:55 GMT -->
<head>
    <meta charset="UTF-8">
    <title>Contractor </title>

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
       	<%@include file="header2.jsp"%>
       
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
                                <span>User Page</span>
                                <h1>Contractor Booking</h1>
                            </div>
                            <div class="breadcrumb-menu float-left">
                                <ul class="clearfix">
                                    <li><a href="index-2.html">Home</a></li>
                                    <li><a href="project.html">Contractor</a></li>
                                    <li class="active">Contractor book</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--End breadcrumb area-->

        <!--Start Main project area-->
        <section class="main-project-area">
            <div class="container">
           
                <div class="row filter-layout masonary-layout">
                    <!--Start single project item-->
                    		<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="SELECT * FROM other_register where category='contractor'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
                    <div class="col-xl-4 col-lg-6 col-md-12 col-sm-12 filter-item contem ret">
                        <div class="single-project-style4">
                            <div class="img-holder">
                                <div class="inner">
                                    <img src="images/projects/v1-1.jpg" alt="Awesome Image">
                                    <div class="overlay-box">
                                        <div class="box">
                                            <div class="link">
                                                <a href="userbookcont.jsp?id=<%=resultSet.getString("email")%>"><span class="icon-out"></span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="overlay-content">
                                    <div class="title">
                                        <span>Phone:<%=resultSet.getString("phone") %>
                                        </span>
                                        <h3><a href="">Name:<%=resultSet.getString("name") %></a></h3>
                                                                                <h3><a href="project-single.html">Exprience:<%=resultSet.getString("exp") %></a></h3>

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
        <!--End Main project area-->
       	<%@include file="footer1.jsp"%>

        <!--Start footer area Style4-->
      
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


<!-- project 06:48:42 GMT -->
</html>