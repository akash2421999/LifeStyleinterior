<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String currentPassword=request.getParameter("current");
String Newpass=request.getParameter("new");
String conpass=request.getParameter("confirm");
String connurl = "jdbc:mysql://localhost:3306/demo";
Connection con=null;
String pass="";
int id=0;
try{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(connurl, "root", "");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from admin where pass='"+currentPassword+"'");
while(rs.next()){
id=rs.getInt(1);
pass=rs.getString(3);
} System.out.println(id+ " "+pass);
if(pass.equals(currentPassword)){
Statement st1=con.createStatement();
int i=st1.executeUpdate("update admin set pass='"+Newpass+"' where id='"+id+"'");
response.sendRedirect("change-password.jsp");
st1.close();
con.close();
}
else{
	response.sendRedirect("change-password.jsp");
}
}
catch(Exception e){
out.println(e);
}
%>