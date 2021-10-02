
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import=" java.sql.ResultSet"%>
<%@page import=" java.sql.Statement"%>
<%@page import=" java.util.ArrayList"%>
<%@page import=" com.common.db.DBConnection"%>

<%
	String contemail = request.getParameter("contemail");
	String contname = request.getParameter("contname");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String email = request.getParameter("uemail");

	String address = request.getParameter("address");
	String state = request.getParameter("state");
	String date = request.getParameter("date");
	String design = request.getParameter("design");
	String status = request.getParameter("status");

	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "");
		Statement st = conn.createStatement();

		int i = st.executeUpdate("insert into bookcont(contemail,contname,name,phone,uemail,address,date,design,status)values('"
				+ contemail + "','" + contname + "','" + name + "','" + phone + "','" + email + "','" + address + "','" + date + "','" + design
				+ "','" + status + "')");
		if (i == 1) {
			RequestDispatcher rd = request.getRequestDispatcher("successbooking.jsp");
			rd.forward(request, response);


		} else {
			response.sendRedirect("error.jsp");
		}
	} catch (Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
%>