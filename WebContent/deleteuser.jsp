<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id = request.getParameter("id");
String mail[] = id.trim().split(",");
 String id1 = mail[0];
 String email = mail[1];
try
{
	
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM userdetail WHERE id="+id1);
response.sendRedirect("admin_delete_user.jsp?email="+email+"");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>