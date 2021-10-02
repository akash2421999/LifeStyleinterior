<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String brand = request.getParameter("brand");
	String painting = request.getParameter("painting");
	String price = request.getParameter("price");
	String date = request.getParameter("date");
	String address = request.getParameter("address");

	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "");
		Statement st = conn.createStatement();

		int i = st.executeUpdate("insert into painter(name,uemail,brand,painting,price,date,address)values('" + name
				+ "','" + email + "','" + brand + "','" + painting + "','" + price + "','" + date + "','" + address + "')");
		if (i == 1) {
			RequestDispatcher rd = request.getRequestDispatcher("paintermail.jsp?value=" + email + "," + name + "");
			rd.forward(request, response);

		} else {
			response.sendRedirect("error.jsp");
		}

	} catch (Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
%>