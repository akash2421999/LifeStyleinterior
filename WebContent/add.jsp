<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String name=request.getParameter("name");
String price=request.getParameter("price");
String category=request.getParameter("category");

String featured=request.getParameter("featured");
String image=request.getParameter("file");



try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into product(name,price,category,featured,image)values('"+name+"','"+price+"','"+category+"','"+featured+"','"+image+"')");
if (i == 1) {
	response.sendRedirect("addprod.jsp");
} else {
	response.sendRedirect("akshs.jsp");
}
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>