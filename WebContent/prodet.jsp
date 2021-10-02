<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
	String prodid = request.getParameter("prodid");

	String prodname = request.getParameter("prodname");
	String price = request.getParameter("price");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String holdername = request.getParameter("holdername");
	String cnum = request.getParameter("cnum");
	String cc_exp_mo = request.getParameter("cc_exp_mo");
	String cc_exp_yr = request.getParameter("cc_exp_yr");
	String cvv = request.getParameter("cvv");
	String amt = request.getParameter("amt");

	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "");
		Statement st = conn.createStatement();

		int i = st.executeUpdate(
				"insert into prodetails(prodid,prodname,price,name,phone,address,holdername,cnum,cc_exp_mo,cc_exp_yr,cvv,amt)values('"
						+ prodid + "','" + prodname + "','" + price + "','" + name + "','" + phone + "','"
						+ address + "','" + holdername + "','" + cnum + "','" + cc_exp_mo + "','" + cc_exp_yr
						+ "','" + cvv + "','" + amt + "')");
		if (i == 1) {
			response.sendRedirect("shop.jsp");
		} else {
			response.sendRedirect("buyproduct.jsp");
		}
	} catch (Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
%>