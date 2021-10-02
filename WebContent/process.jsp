<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String name=request.getParameter("name");
String packname=request.getParameter("packname");
String packprice=request.getParameter("packprice");

String holdername=request.getParameter("holdername");
String cnum=request.getParameter("cnum");
String cc_exp_mo=request.getParameter("cc_exp_mo");
String cc_exp_yr=request.getParameter("cc_exp_yr");
String cvv=request.getParameter("cvv");
String amount=request.getParameter("amount");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into package(name,packname,packprice,holdername,cnum,cc_exp_mo,cc_exp_yr,cvv,amount)values('"+name+"','"+packname+"','"+packprice+"','"+holdername+"','"+cnum+"','"+cc_exp_mo+"','"+cc_exp_yr+"','"+cvv+"','"+amount+"')");
if (i == 1) {
	out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
	out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
	out.println("<script>");
	out.println("$(document).ready(function(){");
	out.println("swal({");
	out.println("title:'Are you sure?'',");
	 out.println("text: 'You Want to Move Head TOo Process Payment!'',");
     out.println("icon: 'warning',");
 out.println("buttons: true,");
 out.println("dangerMode: true,");
 out.println("})");
 out.println(".then((willDelete) => {");    out.println("if (willDelete) {");
 out.println("swal('PAYMENT IS COMPLETED!'', {");
 out.println("icon: 'success',");
 out.println("});");
 out.println("} else {");
 out.println("swal('Your imaginary file is safe!'');");
out.println("}");
 out.println("});");
 out.println("}");
	out.println("</script>");
RequestDispatcher rd = request.getRequestDispatcher("package.jsp");
rd.forward(request, response);
} else {
	response.sendRedirect("package.jsp");
}
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>