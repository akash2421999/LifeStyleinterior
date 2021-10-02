<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String value = request.getParameter("id");
String mail[] = value.trim().split(",");
String email = mail[0];
String name = mail[1];
String pass = mail[2];


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("update other_register set status='accepted' where email='"+email+"'");
response.sendRedirect("mail.jsp?value="+email+","+name+","+pass+"");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}

%>