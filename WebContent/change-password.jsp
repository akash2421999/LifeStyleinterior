<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Admin Other deatils</title>
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
								<h2 class="title">Change Admin Password</h2>

								<form action="changePassword.jsp" method="post">
								<div class="form-group">
										<label for="exampleInputEmail1">Current password</label> <input
											type="text" name="current" class="form-control" id="exampleInputEmail1"
											aria-describedby="emailHelp" placeholder="Enter New password">
										<small id="emailHelp" class="form-text text-muted"></small>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">New password</label> <input
											type="text" name="new" class="form-control" id="exampleInputEmail1"
											aria-describedby="emailHelp" placeholder="Enter New password">
										<small id="emailHelp" class="form-text text-muted"></small>
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">confirm Password</label> <input
											type="password" class="form-control" name="confirm"
											id="exampleInputPassword1" placeholder="Password">
									</div>
								
									<input type="submit" class="btn btn-primary" value="Change Password">
								</form>
							</div>
						</div>
						<div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>