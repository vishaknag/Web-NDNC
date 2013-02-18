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
String n=request.getParameter("T1");
String m=request.getParameter("T2");
String e=request.getParameter("T3");
String u=request.getParameter("T4");
String p=request.getParameter("pass");
String abc="insert into customer values('"+n+"','"+m+"','"+e+"','"+u+"','"+p+"','new','')";
int i=db.DBUpdate(abc);
if(i>0)
{
%>
<script>alert("Your Mobile Number has been successfully registered for DO Not Call");
window.close();
</script>
<%
}
else
{
%>
<script>alert("Registration Failed. Try Again !!!");
</script>
<jsp:include page="register.jsp"/>
<%
}
%>
</body>

</html>
