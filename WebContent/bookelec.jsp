
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
	String electemail = request.getParameter("electemail");
	String electname = request.getParameter("electname");
	String name = request.getParameter("name");
	String email = request.getParameter("uemail");

	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String state = request.getParameter("state");
	String date = request.getParameter("date");
	String design = request.getParameter("design");
	String status = request.getParameter("status");

	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "");
		Statement st = conn.createStatement();

		int i = st.executeUpdate(
				"insert into bookelect(electemail,electname,name,uemail,phone,address,date,status)values('" + electemail
						+ "','" + electname + "','" + name + "','" + email + "','" + phone + "','" + address + "','" + date
						+ "','" + status + "')");
		if (i == 1) {
       
 RequestDispatcher rd = request.getRequestDispatcher("bookedelectrion.jsp");
 rd.forward(request, response);

		} else {
			response.sendRedirect("userplumber.jsp");
		}
	} catch (Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
%>