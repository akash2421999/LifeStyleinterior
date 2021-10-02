<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
	String name = request.getParameter("name");
	String category = request.getParameter("category");
	String person = request.getParameter("person");
	String message = request.getParameter("message");

	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "");
		Statement st = conn.createStatement();

		int i = st.executeUpdate("insert into complain(name,category,person,message)values('" + name
				+ "','" + category + "','" + person + "','" + message + "')");
		if (i == 1) {
			RequestDispatcher rd = request.getRequestDispatcher("userpage.jsp");
			rd.forward(request, response);

		} else {
			response.sendRedirect("error.jsp");
		}

	} catch (Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
%>