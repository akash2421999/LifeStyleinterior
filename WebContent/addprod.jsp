<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>LifeStyle | Admin</title>
<link rel="stylesheet" href="csss/bootstrap.min.css" media="screen">
<link rel="stylesheet" href="csss/font-awesome.min.css" media="screen">
<link rel="stylesheet" href="csss/animate-css/animate.min.css"
	media="screen">
<link rel="stylesheet" href="csss/lobipanel/lobipanel.min.css"
	media="screen">
<link rel="stylesheet" href="csss/prism/prism.css" media="screen">
<link rel="stylesheet" href="csss/select2/select2.min.css">
<link rel="stylesheet" href="csss/main.css" media="screen">
<script src="jss/modernizr/modernizr.min.js"></script>
</head>
<body class="top-navbar-fixed">
	<div class="main-wrapper">

		<!-- ========== TOP NAVBAR ========== -->
		<!-- ========== WRAPPER FOR BOTH SIDEBARS & MAIN CONTENT ========== -->
		<div class="content-wrapper">
			<div class="content-container">

				<!-- ========== LEFT SIDEBAR ========== -->
				<!-- /.left-sidebar -->

				<div class="main-page">

					<div class="container-fluid">
						<div class="row page-title-div">
							<div class="col-md-6">
								<h2 class="title">Add Product</h2>

							</div>

							<!-- /.col-md-6 text-right -->
						</div>
						<!-- /.row -->
						<div class="row breadcrumb-div">
							<div class="col-md-6">
								<ul class="breadcrumb">
									<li><a href="admin.jsp"><i class="fa fa-home"></i>
											Home</a></li>

									<li class="active">Add Product</li>
								</ul>
							</div>

						</div>
						<!-- /.row -->
					</div>
					<div class="container-fluid">

						<div class="row">
							<div class="col-md-12">
								<div class="panel">
									<div class="panel-heading">
										<div class="panel-title">
											<h5></h5>
										</div>
									</div>

									<form class="form-horizontal" action="AddProd"
										enctype="multipart/form-data" method="post">

										<div class="form-group">
											<label for="default" class="col-sm-2 control-label">Product
												Name</label>
											<div class="col-sm-10">
												<input type="text" name="name" class="form-control"
													id="fullanme" required="required" autocomplete="off"
													autofocus>
											</div>
										</div>

										<div class="form-group">
											<label for="default" class="col-sm-2 control-label">Price</label>
											<div class="col-sm-10">
												<input type="text" name="price" class="form-control"
													id="rollid" maxlength="5" required="required"
													autocomplete="off">
											</div>
										</div>

										<div class="form-group">
											<label for="default" class="col-sm-2 control-label">Category</label>
											<div class="col-sm-10">
												<input type="text" name="category" class="form-control"
													id="email" required="required" autocomplete="off">
											</div>
										</div>



										<div class="form-group">
											<label for="default" class="col-sm-2 control-label">feature</label>
											<div class="col-sm-10">
												<input type="text" name="featured" required="required">
											</div>
										</div>

										<div class="form-group">
											<label for="date" class="col-sm-2 control-label">Select
												an image to upload</label>
											<div class="col-sm-10">
												<input type="file" name="filename" class="form-control"
													id="date">
											</div>
										</div>
<%-- 										<%
											String name1 = request.getParameter("name");
											String price = request.getParameter("price");
											String category = request.getParameter("category");

											String featured = request.getParameter("featured");
											String image = request.getParameter("file");

											try {
												Class.forName("com.mysql.jdbc.Driver");
												Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root",
														"");
												Statement st = (Statement) conn.createStatement();

												st.executeUpdate("insert into product(name,price,category,featured,image)values('" + name1 + "','"
														+ price + "','" + category + "','" + featured + "','" + image + "')");

											} catch (Exception e) {
												System.out.print(e);
												e.printStackTrace();
											}
										%> --%>


										<div class="form-group">
											<div class="col-sm-offset-2 col-sm-10">
												<button type="submit" name="submit" class="btn btn-primary">Add</button>
											</div>
										</div>
									</form>

								</div>
							</div>
						</div>
						<!-- /.col-md-12 -->
					</div>
				</div>
			</div>
			<!-- /.content-container -->
		</div>
		<!-- /.content-wrapper -->
	</div>
	<!-- /.main-wrapper -->
	<script src="jss/jquery/jquery-2.2.4.min.js"></script>
	<script src="jss/bootstrap/bootstrap.min.js"></script>
	<script src="jss/pace/pace.min.js"></script>
	<script src="jss/lobipanel/lobipanel.min.js"></script>
	<script src="jss/iscroll/iscroll.js"></script>
	<script src="jss/prism/prism.js"></script>
	<script src="jss/select2/select2.min.js"></script>
	<script src="jss/main.js"></script>
	<script>
		$(function($) {
			$(".js-states").select2();
			$(".js-states-limit").select2({
				maximumSelectionLength : 2
			});
			$(".js-states-hide").select2({
				minimumResultsForSearch : Infinity
			});
		});
	</script>
</body>
</html>

