<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String address = request.getParameter("address");
	String state = request.getParameter("state");
	String date = request.getParameter("date");
	String category = request.getParameter("category");
	String price = request.getParameter("price");

	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "");
		Statement st = conn.createStatement();

		int i = st.executeUpdate("insert into renovation(name,email,address,state,date,category,price)values('" + name
				+ "','" + email + "','" + address + "','" + state + "','" + date + "','" + category + "','" + price + "')");
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