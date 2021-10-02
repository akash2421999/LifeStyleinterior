<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "");
Statement st=conn.createStatement();
String id = request.getParameter("id");
int i=st.executeUpdate("DELETE FROM bookcont WHERE id='"+id+"'");
if (i==1)
response.sendRedirect("upload_result.jsp");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>