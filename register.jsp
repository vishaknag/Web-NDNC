<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
<script>
function password()
{
var p=Math.floor(Math.random()*100000001)
document.frm.pass.value=p;
}

</script>
</head>

<body onload="return password();">

<form name="frm" method="POST" action="registercode.jsp">
<input type="hidden" name="pass">
	<fieldset style="border: 3px solid #FF0000; padding: 2px">
	<legend align="center"><b><font size="4" color="#FF0000">New Customer 
	Register Here</font></b></legend>
	<table border="1" width="100%" id="table1" style="border-width: 0px">
		<tr>
			<td width="49%" style="border-style: none; border-width: medium">&nbsp;</td>
			<td width="49%" style="border-style: none; border-width: medium">&nbsp;</td>
		</tr>
		<tr>
			<td bgcolor="#CCCCFF" align="right" width="49%" style="border-style: none; border-width: medium">
			<font face="Courier New" color="#FF0000"><b>Name&nbsp;&nbsp; </b>
			</font></td>
			<td bgcolor="#CCCCFF" width="49%" style="border-style: none; border-width: medium">&nbsp;&nbsp;
			<input type="text" name="T1" size="20" style="color: #FF0000; font-weight: bold; border: 2px solid #FF0000; background-color: #CCCCFF"></td>
		</tr>
		<tr>
			<td align="right" width="49%" style="border-style: none; border-width: medium">&nbsp;</td>
			<td width="49%" style="border-style: none; border-width: medium">&nbsp;</td>
		</tr>
		<tr>
			<td bgcolor="#CCCCFF" align="right" width="49%" style="border-style: none; border-width: medium">
			<font face="Courier New" color="#FF0000"><b>Mobile Number&nbsp;&nbsp;
			</b></font></td>
			<td bgcolor="#CCCCFF" width="49%" style="border-style: none; border-width: medium">&nbsp;&nbsp;
			<input type="text" name="T2" size="20" style="color: #FF0000; font-weight: bold; border: 2px solid #FF0000; background-color: #CCCCFF"></td>
		</tr>
		<tr>
			<td align="right" width="49%" style="border-style: none; border-width: medium">&nbsp;</td>
			<td width="49%" style="border-style: none; border-width: medium">&nbsp;</td>
		</tr>
		<tr>
			<td bgcolor="#CCCCFF" align="right" width="49%" style="border-style: none; border-width: medium">&nbsp;<b><font face="Courier New" color="#FF0000">&nbsp; 
			Email Id</font></b><font color="#FF0000">&nbsp;&nbsp;&nbsp; </font>
			</td>
			<td bgcolor="#CCCCFF" width="49%" style="border-style: none; border-width: medium">&nbsp;&nbsp;
			<input type="text" name="T3" size="20" style="color: #FF0000; font-weight: bold; border: 2px solid #FF0000; background-color: #CCCCFF"></td>
		</tr>
		<tr>
			<td align="right" width="49%" style="border-style: none; border-width: medium">&nbsp;</td>
			<td width="49%" style="border-style: none; border-width: medium">&nbsp;</td>
		</tr>
		<tr>
			<td bgcolor="#CCCCFF" align="right" width="49%" style="border-style: none; border-width: medium">
			<font face="Courier New" color="#FF0000"><b>User Id&nbsp;&nbsp; </b>
			</font></td>
			<td bgcolor="#CCCCFF" width="49%" style="border-style: none; border-width: medium">&nbsp;&nbsp;
			<input type="text" name="T4" size="20" style="color: #FF0000; font-weight: bold; border: 2px solid #FF0000; background-color: #CCCCFF"></td>
		</tr>
		<tr>
			<td width="49%" style="border-style: none; border-width: medium" height="23">&nbsp;</td>
			<td width="49%" style="border-style: none; border-width: medium" height="23">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="2" style="border-style: none; border-width: medium">
			<p align="center">
			<input type="submit" value="Register" name="B1" style="font-weight: bold; color: #FF0000; border: 2px solid #FF0000; background-color: #CCCCFF"></td>
		</tr>
	</table>
	</fieldset></form>

</body>

</html>
