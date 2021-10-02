<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/demo";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String id = request.getParameter("id");
String status="accepted";

if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update bookcont set id=?,status=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1, id);

ps.setString(2, status);

int i = ps.executeUpdate();
if(i > 0)
{
	response.sendRedirect("contractormodel.jsp");
}
else
{
	response.sendRedirect("contupdate.jsp");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>