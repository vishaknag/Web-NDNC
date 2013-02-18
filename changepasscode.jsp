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
String oldp=request.getParameter("T1");
String newp=request.getParameter("T2");
String abc="update customer set pass='"+newp+"',status='old' where uid='"+user+"' and pass='"+oldp+"'";
int i=db.DBUpdate(abc);
if(i>0)
{
%>
<script>alert("Your password has been changed successfully.");
window.close();
</script>
<%
}
else
{
%>
<script>alert("Unable to change password. Try Again!!!");</script>
<jsp:include page="changepass.jsp"/>
<%
}
%>
</body>

</html>
