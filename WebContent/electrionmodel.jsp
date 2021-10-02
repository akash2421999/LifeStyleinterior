
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


<!-- 404-page 06:47:00 GMT -->
<head>
    <meta charset="UTF-8">
    <title>Electrion Model</title>

    <!-- responsive meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- For IE -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- master stylesheet -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive stylesheet -->
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" type="text/css"
    href="jss/DataTables/datatables.min.css" />
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
           	<%@include file="header3.jsp"%>
           
        </header>
        <!-- End Top Bar style2 -->

        <!--Start Main Header-->
      
        <!--End Main Header-->

        <!--Start breadcrumb area-->
        <section class="section">
                        <div class="container-fluid">



                            <div class="row">
                                <div class="col-md-12">

                                    <div class="panel">
                                        <div class="panel-heading">
                                            <div class="panel-title">
                                                <h5>electPage</h5>
                                            </div>
                                        </div>


                                        <div class="panel-body p-20">

                                            <table id="example"
                                                class="display table table-striped table-bordered"
                                                cellspacing="0" width="100%">
                                                <thead>
                                                    <tr>
                                                        <th>User Name</th>
                                                        <th>User Email</th>
                                                        <th>phone</th>
                                                        <th>Address</th>
                                                        <th>Meeting Date</th>
                                                        <th>design</th>
                                                        <th>Status</th>
                                                        <th>Accept</th>
                                                        <th>Reject</th>

                                                    </tr>
                                                </thead>
                                               	<%
													try {
														String email=(String) session.getAttribute("user");
														connection = DriverManager.getConnection(connectionUrl + database, userid, password);
														statement = connection.createStatement();
														String sql = "select * from bookelect where electemail = '"+ email +"'";
														resultSet = statement.executeQuery(sql);
														while (resultSet.next()) {
												%>
												<tr>
													<td><%=resultSet.getString("name")%></td>
													<td><%=resultSet.getString("uemail")%></td>
													<td><%=resultSet.getString("phone")%><a
														href="https://api.whatsapp.com/send?phone=91<%=resultSet.getString("phone")%>"
														class="btn btn-primary"> WhatsApp</a></td>
													</td>
													<td><%=resultSet.getString("address")%></td>

													<td><%=resultSet.getString("date")%></td>
													<td><%=resultSet.getString("status")%></td>




													<td><a class="btn btn-primary"
														href="electacceptmail.jsp?value=<%=resultSet.getString("uemail") %>,<%=resultSet.getString("name") %>,<%=resultSet.getString("electname") %>">Accept</a></td>
														<td><a class="btn btn-primary"
														href="electrejectmail.jsp?value=<%=resultSet.getString("uemail") %>,<%=resultSet.getString("name") %>,<%=resultSet.getString("electname") %>,<%=resultSet.getString("electemail") %>">Reject</a></td>
												<%
													}
														connection.close();
													} catch (Exception e) {
														e.printStackTrace();
													}
												%>
                                                    <tfoot>
                                                    <tr>
                                                        <th>User Name</th>
                                                        <th>User Email</th>
                                                        <th>phone</th>
                                                        <th>Address</th>
                                                        <th>Meeting Date</th>
                                                        <th>design</th>
                                                        <th>Status</th>
                                                        <th>Accept</th>
                                                        <th>Reject</th>

                                                    </tr>
                                                </tfoot>
                                                <tbody>



                                                </tbody>
                                            </table>


                                            <!-- /.col-md-12 -->
                                        </div>
                                    </div>
                                </div>
                                <!-- /.col-md-6 -->


                            </div>
                            <!-- /.col-md-12 -->
                        </div>
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-md-6 -->

        </div>
        <!-- /.row -->

    </div>
    <!-- /.container-fluid -->
    </section>
        <!--End breadcrumb area-->

        <!--Start Error Page Area-->
   
        <!--End Error Page  wow slideInUp" data-wow-delay="0ms" data-wow-duration="1500ms" Area-->

        <!--Start footer area Style4-->
     
        <!--End Footer Contact Info Area-->

        <!--Start footer bottom area-->
        <section class="footer-bottom-area style3">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                        <div class="copyright-text text-center">
                            <p><a href="https://www.templateshub.net" target="_blank">Lifestyle</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--End footer bottom area-->

    </div>


  
    <script src="jss/DataTables/datatables.min.js"></script>

    <!-- ========== THEME JS ========== -->
  


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

    <!--Revolution Slider-->
    <script src="plugins/revolution/js/jquery.themepunch.revolution.min.js"></script>
    <script src="plugins/revolution/js/jquery.themepunch.tools.min.js"></script>
    <script src="plugins/revolution/js/extensions/revolution.extension.actions.min.js"></script>
    <script src="plugins/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
    <script src="plugins/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
    <script src="plugins/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
    <script src="plugins/revolution/js/extensions/revolution.extension.migration.min.js"></script>
    <script src="plugins/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
    <script src="plugins/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
    <script src="plugins/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
    <script src="plugins/revolution/js/extensions/revolution.extension.video.min.js"></script>
    <script src="js/main-slider-script.js"></script>

    <!-- thm custom script -->
    <script src="js/custom.js"></script>



</body>


<!-- 404-page 06:47:00 GMT -->
</html>