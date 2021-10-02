e
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import=" java.sql.ResultSet"%>
<%@page import=" java.sql.Statement"%>
<%@page import=" java.util.ArrayList"%>
<%@page import=" com.common.db.DBConnection"%>

<%	
	String cname=request.getParameter("cname");
	String cemail=request.getParameter("cemail");
	String date=request.getParameter("date");
	String painter=request.getParameter("painter");
	String paint=request.getParameter("paint");
	System.out.println(painter);
	System.out.println(paint);

	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "");
		Statement st = conn.createStatement();

		int i = st.executeUpdate("insert into painter_assigned(cname,cemail,date,painter)values('"+ cname + "','" + cemail + "','" + date + "','" + painter + "')");
		if (i == 1) {
			RequestDispatcher rd = request.getRequestDispatcher("apaintdetails.jsp");
			rd.forward(request, response);


		} else {
			response.sendRedirect("error.jsp");
		}
	} catch (Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
%>