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
String user=(String)session.getAttribute("userid");
String actno=request.getParameter("T1");
String abc="select * from customer where uid='"+user+"' and authno='"+actno+"'";
ResultSet rs=db.Fetch(abc);
if(rs.next())
{
%>
<jsp:forward page="changepass.jsp"/>
<%
}
else
{
%>
<script>alert("Please enter the correct Activation Key.");</script>
<jsp:include page="activation.jsp"/>
<%
}
%>
</body>

</html>
