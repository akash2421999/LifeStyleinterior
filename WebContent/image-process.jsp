<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="com.ibm.demo.servlets.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"&gt;
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name=frm method="post" action="InsertImage">
<table>
<tr><TD ><B>Upload Image</B></TD>
<td><input type="file" name="Image" size="20" value=""></TD>
</tr>
<tr>
<td><input type="submit" height="30" width="62" > </td>
</tr>
<tr>
<TD><b>ClickImage</b>
<%
GetImage udet = new GetImage();
Vector V_ids=new Vector();
V_ids=udet.ImageList();
for(int i=0;i<V_ids.size();i++)
{

String temp[] = new String[2];
int j=i+1;
temp=(String[])V_ids.get(i);

%>
</TD>
<td><a target='_blank' href='<%=response.encodeURL("RetrieveImage?Image_id="+temp[0])%>' onmouseover='ScrollStatus("Click here for view", 1);' onmouseout='_StopScrollStatus();' onblur='_StopScrollStatus();' >
<b><%=temp[1]%></b>
</a></TD>


<%

}

%></TR>
</table>

</form>
</body>
</html>