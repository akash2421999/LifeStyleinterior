<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String value = request.getParameter("id");
String mail[] = value.trim().split(",");
String email = mail[0];
String name = mail[1];



try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("delete from other_register where email='"+email+"'");
response.sendRedirect("adminrejectmail.jsp?value="+email+","+name+"");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}

%>