<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "");
Statement st=conn.createStatement();
String value = request.getParameter("id");
String mail[] = value.trim().split(",");
String uemail = mail[0];
String cemail = mail[1];
System.out.print(uemail);
System.out.print(cemail);
int i=st.executeUpdate("DELETE FROM other_register WHERE email='"+id+"'");
if (i==1)
response.sendRedirect("upload_result.jsp");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>