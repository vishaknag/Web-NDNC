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
String u=request.getParameter("T1");
session.setAttribute("userid",u);
String p=request.getParameter("T2");
String act=request.getParameter("act");
String pqr="select * from customer where uid='"+u+"' and pass='"+p+"' and status='old'";
ResultSet rs1=db.Fetch(pqr);
String abc="select * from customer where uid='"+u+"' and pass='"+p+"' and status='new'";
ResultSet rs=db.Fetch(abc);
if(rs.next())
{
String def="update customer set authno='"+act+"' where uid='"+u+"' and pass='"+p+"' and status='new'";
int i=db.DBUpdate(def);
%>
<script>alert("Your Authorization Number has been sent to ur mobile.");
window.open('activation.jsp?id=','mywindow','width=450 height=300 scrollbars=no top=250 left=300');
</script>
<jsp:include page="index.html" />

<%
}
else if(rs1.next())
{
%>
<jsp:forward page="customer.jsp"/>
<%
}
else
{
%>
<script>alert("Please enter the correct User Id and Password.");</script>
<jsp:include page="index.html"/>
<%
}
%>
</body>

</html>
