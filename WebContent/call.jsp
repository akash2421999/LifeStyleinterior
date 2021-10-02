<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
            
            
		<div class="modal fade" id="myprofile" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">User Profile</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>

					<div class="modal-body">


						<div id="profile-details">
							<table class="table">
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


								<tbody>
									<tr>
										<th scope="row">ID :<%
											out.println(rs.getString(1));
										%></th>
										<td></td>

									</tr>
									<tr>
										<th scope="row">name :<%
											out.println(rs.getString(2));
										%>
										</th>
										<td></td>

									</tr>
									<tr>
										<th scope="row">password :<%
											out.println(rs.getString(3));
										%></th>
										<td></td>

									</tr>
									<tr>
										<th scope="row">email :<%
											out.println(rs.getString(4));
										%></th>
										<td></td>

									</tr>
									<tr>
										<th scope="row">Phone No :<%
											out.println(rs.getString(5));
										%></th>
										<td></td>

									</tr>
								</tbody>


							</table>
						</div>
						
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						
					</div>
				</div>
			</div>
			<%
				}

				} catch (Exception e) {
					e.printStackTrace();
				}
			%>
		</div>
	
	
		<div class="modal fade" id="complain" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Complain Here</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>

					<div class="modal-body">


						<div id="profile-details">
						        <form action="ComplainServlet" method="post">
						     <div class="form-group"><input class="form-control" type="text" name="name" placeholder="Name"></div>
            <div class="form-group"><select name="category" class="form-control">
            <option value="carpenter">carpenter</option>
            <option value="painter">painter</option>
            <option value="Designer">Designer</option>
            <option value="Election">Election</option>
            <option value="Plumber">Plumber</option>
            <option value="Renovation">Renovation</option>
            <option value=""></option></select></div>
            <div class="form-group"><input class="form-control" type="text" name="person" placeholder="Person Name"></div>
            
            <div
                class="form-group"><textarea class="form-control" name="message" placeholder="Message" rows="14"></textarea></div>
    <div class="form-group"><input class="btn btn-primary" type="submit" value="Complain here"></div>
    </form>
					


						</div>
						
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						
					</div>
				</div>
			</div>
		
		</div>
	</div>
            
