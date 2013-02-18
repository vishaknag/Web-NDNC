<%@ page import="java.io.*,java.sql.*" %>
<jsp:useBean id="db" class="classes.DBAccess"/>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
</head>

<body>
<%
db.DBCon();
String t=request.getParameter("D1");
String u=request.getParameter("T1");
String p=request.getParameter("T2");


String str="select * from logintable where usertype='"+t+"' and userid='"+u+"' and password='"+p+"'";
ResultSet rs=db.Fetch(str);
	if(rs.next())
		{
 			String Usertype=rs.getString(1);
 			if(Usertype.equals("TRAI"))

			{
%>
			<jsp:include page="trai.jsp"/>
<%
			}

			else if(Usertype.equals("Tele Caller"))
			{
%>

			<jsp:include page="telecaller.jsp"/>

<%
			}
			else if(Usertype.equals("Call Verifier"))
			{
%>

			<jsp:include page="callverifier.jsp"/>

<%
			}
		}
		else
		{
%>

<script>alert("Login failed. Try again!!!")</script>

<%
}
%>

</body>

</html>
