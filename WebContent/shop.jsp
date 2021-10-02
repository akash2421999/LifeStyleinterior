
<!DOCTYPE html>
<html lang="en">


<!-- shop 06:55:56 GMT -->
<head>
    <meta charset="UTF-8">
    <title>Shop</title>

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
                                <span>Our Products</span>
                                <h1>Buy product</h1>
                            </div>
                            <div class="breadcrumb-menu float-left">
                                <ul class="clearfix">
                                    <li><a href="index-2.html">Home</a></li>
                                    <li><a href="shop.html">Shop</a></li>
                                    <li class="active">Products</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--End breadcrumb area-->

        <!--Start Shop area-->
        <section id="shop-area" class="main-shop-area">
            <div class="container">
                <div class="row">
                    <div class="col-xl-9 col-lg-8 col-md-12 col-sm-12 float-right">
                        <div class="shop-content">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="showing-result-shorting">
                                        <div class="shorting">
                                            <select class="selectmenu">
                                        <option selected="selected">Default Sorting</option>
                                        <option>Default Sorting one</option>
                                        <option>Default Sorting Two</option>
                                        <option>Default Sorting Three</option>
                                    </select>
                                        </div>
                                        <div class="showing">
                                            <p>Showing 1-9 of 35 results</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                            	<%@page import="java.sql.DriverManager"%>
					<%@page import="java.sql.ResultSet"%>
					<%@page import="java.sql.Statement"%>
					<%@page import="java.sql.Connection"%>
					<%
						String id = request.getParameter("userid");
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
													connection = DriverManager.getConnection(connectionUrl + database, userid, password);
													statement = connection.createStatement();
													String sql = "select * from product";
													resultSet = statement.executeQuery(sql);
													while (resultSet.next()) {
											%>
                                <!--Start single product item-->
                                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12">
                                    <div class="single-product-item text-center">
                                        <div class="img-holder">
                                            <img src="D:/project1/Lifestyle3/WebContent/images/<%=resultSet.getString(6)%>" alt="Awesome Product Image" width="100" height="200">
                                        </div>
                                        <div class="title-holder text-center">
                                            <div class="static-content">
                                                <h3 class="title text-center"><a href=""><%=resultSet.getString("name")%></a></h3>
                                                <span>Rs <%=resultSet.getString("price")%> </span>
                                            </div>
                                            <div class="overlay-content">
                                                <ul class="clearfix">
                                                    <li>
                                                    <div class="toltip-content">
                                                         <div class="col-6"><a class="btn btn-light" href="buyproduct.jsp?id=<%=resultSet.getString("id")%>">Buy Now!</a></div>
                                                    </div>
                                                
                                                    </li>
                                                   
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                	<%
				}

				} catch (Exception e) {
					e.printStackTrace();
				}
			%>
			
                                <!--End single product item-->
                                <!--Start single product item-->
                             
                                <!--End single product item-->
                                <!--Start single product item-->
                               
                                <!--End single product item-->

                                <!--Start single product item-->
                               
                                <!--End single product item-->
                                <!--Start single product item-->
                               
                                <!--End single product item-->
                                <!--Start single product item-->
                               
                                <!--End single product item-->
                            </div>
                            <!--Start post pagination-->
                            <div class="row">
                                <div class="col-md-12">
                                    <ul class="post-pagination text-center">
                                        <li><a href="#"><i class="fa fa-angle-left" aria-hidden="true"></i></a></li>
                                        <li class="active"><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <!--End post pagination-->
                        </div>
                    </div>

                    <!--Start sidebar Wrapper-->
                    <div class="col-xl-3 col-lg-4 col-md-8 col-sm-12 float-left">
                        <div class="shop-sidebar-wrapper">
                            <!--Start single sidebar-->
                            <div class="single-sidebar-box">
                                <form class="search-form" action="#">
                                    <input placeholder="Search..." type="text">
                                    <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                                </form>
                            </div>
                            <!--End single sidebar-->
                            <!--Start single sidebar-->
                            <div class="single-sidebar-box pdbtm">
                                <div class="shop-sidebar-title">
                                    <h3>Categories</h3>
                                </div>
                                <ul class="categories clearfix">
                                    <li><a href="#">Furnitures</a></li>
                                    <li><a href="#">Wall Posters</a></li>
                                    <li><a href="#">Kitchen</a></li>
                                    <li><a href="#">Living Room</a></li>
                                </ul>
                            </div>
                            <!--End single sidebar-->
                            <!--Start single sidebar-->
                        
                            <!--End single sidebar-->
                            <!--Start single sidebar-->
                           
                            <!--End single sidebar-->
                        </div>
                    </div>
                    <!--End Sidebar Wrapper-->

                </div>
            </div>
        </section>
        <!--End Shop area-->

        <!--Start footer area Style4-->
       
                    <!--End single footer widget-->
                    <!--Start single footer widget-->
                                    
                    <!--End single footer widget-->
                    <!--Start single footer widget-->
       
        <!--End footer area style4-->

        <!--Start Footer Contact Info Area-->
                                     
                                       
        <!--End Footer Contact Info Area-->
	<%@include file="footer1.jsp"%>

        <!--Start footer bottom area-->
       
        <!--End footer bottom area-->

    
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
    <script src="js/jquery.bootstrap-touchspin.js"></script>

    <script src="assets/language-switcher/jquery.polyglot.language.switcher.js"></script>
    <script src="assets/timepicker/timePicker.js"></script>
    <script src="assets/html5lightbox/html5lightbox.js"></script>

    <script src="assets/bootstrap-sl-1.12.1/bootstrap-select.js"></script>
    <script src="assets/jquery-ui-1.11.4/jquery-ui.js"></script>

    <!-- thm custom script -->
    <script src="js/custom.js"></script>



</body>


<!-- shop 06:57:08 GMT -->
</html>