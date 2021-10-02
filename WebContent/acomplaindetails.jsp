
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>LifeStyle | Complaints</title>
<link rel="stylesheet" href="csss/bootstrap.min.css" media="screen">
<link rel="stylesheet" href="csss/font-awesome.min.css" media="screen">
<link rel="stylesheet" href="csss/animate-css/animate.min.css"
	media="screen">
<link rel="stylesheet" href="csss/lobipanel/lobipanel.min.css"
	media="screen">
<link rel="stylesheet" href="csss/prism/prism.css" media="screen">
<!-- USED FOR DEMO HELP - YOU CAN REMOVE IT -->
<link rel="stylesheet" type="text/css"
	href="jss/DataTables/datatables.min.css" />
<link rel="stylesheet" href="csss/main.css" media="screen">
<script src="jss/modernizr/modernizr.min.js"></script>
<style>
.errorWrap {
	padding: 10px;
	margin: 0 0 20px 0;
	background: #fff;
	border-left: 4px solid #dd3d36;
	-webkit-box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
	box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
}

.succWrap {
	padding: 10px;
	margin: 0 0 20px 0;
	background: #fff;
	border-left: 4px solid #5cb85c;
	-webkit-box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
	box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
}
</style>
</head>
<body class="top-navbar-fixed">
	<div class="main-wrapper">

		<!-- ========== TOP NAVBAR ========== -->
		<%@include file="includes/topbar.jsp"%>
		<!-- ========== WRAPPER FOR BOTH SIDEBARS & MAIN CONTENT ========== -->
		<div class="content-wrapper">
			<div class="content-container">
				<%@include file="includes/leftbar.jsp"%>

				<div class="main-page">
					<div class="container-fluid">
						<div class="row page-title-div">
							<div class="col-md-6">
								<h2 class="title">Complain Details</h2>

							</div>

							<!-- /.col-md-6 text-right -->
						</div>
						<!-- /.row -->
						<div class="row breadcrumb-div">
							<div class="col-md-6">
								<ul class="breadcrumb">
									<li><a href="dashboard.php"><i class="fa fa-home"></i>
											Home</a></li>

								</ul>
							</div>

						</div>
						<!-- /.row -->
					</div>
					<!-- /.container-fluid -->
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
					<section class="section">
					<div class="container-fluid">



						<div class="row">
							<div class="col-md-12">

								<div class="panel">
									<div class="panel-heading">
										<div class="panel-title">
											<h5>Complain</h5>
										</div>
									</div>


									<div class="panel-body p-20">

										<table id="example"
											class="display table table-striped table-bordered"
											cellspacing="0" width="100%">
											<thead>
												<tr>

													<th>FULL Name</th>
													<th>Category</th>
													<th>Person Name</th>
													<th>Message</th>
													<th>Action</th>
												</tr>
											</thead>
	<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from complain";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>

<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("category") %></td>

<td><%=resultSet.getString("person") %></td>
<td><%=resultSet.getString("message") %></td>
												<td><a class="btn btn-primary"
													onclick="return confirm('are your sure you want to delete?')"
													href="complaindelete.jsp?id=<%=resultSet.getString("id") %>">Delete</a></td>
											</tr>
											<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

											<tfoot>
												<tr>

													<th>FULL Name</th>
													<th>Category</th>
													<th>Person Name</th>
													<th>Message</th>
													<th>Action</th>
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
	<!-- /.section -->

	</div>
	<!-- /.main-page -->



	</div>
	<!-- /.content-container -->
	</div>
	<!-- /.content-wrapper -->

	</div>
	<!-- /.main-wrapper -->

	<!-- ========== COMMON JS FILES ========== -->
	<script src="jss/jquery/jquery-2.2.4.min.js"></script>
	<script src="jss/bootstrap/bootstrap.min.js"></script>
	<script src="jss/pace/pace.min.js"></script>
	<script src="jss/lobipanel/lobipanel.min.js"></script>
	<script src="jss/iscroll/iscroll.js"></script>

	<!-- ========== PAGE JS FILES ========== -->
	<script src="jss/prism/prism.js"></script>
	<script src="jss/DataTables/datatables.min.js"></script>

	<!-- ========== THEME JS ========== -->
	<script src="jss/main.js"></script>
	<script>
		$(function($) {
			$('#example').DataTable();

			$('#example2').DataTable({
				"scrollY" : "300px",
				"scrollCollapse" : true,
				"paging" : false
			});

			$('#example3').DataTable();
		});
	</script>
</body>
</html>
<?php } ?>

