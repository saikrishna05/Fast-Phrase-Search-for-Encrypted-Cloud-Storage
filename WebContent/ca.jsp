<%@ page import="java.sql.*,databaseconnection.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Vivid Orange  
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20120126

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Vividorange by FCT</title>
<link href="http://fonts.googleapis.com/css?family=Arvo" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<div id="wrapper"> 
  <!-- end #menu -->
  <p>&nbsp;</p><div id="header">
		
		<%
		String name=(String)session.getAttribute("name");
		session.setAttribute("rname",name);
		%>
		
	
	</div>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<div class="content">
	
	<table width="803" height="413">
	<tr><td height="38"><font size="2"><b><a href="index.html"><b>Home</b></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="login.jsp"><b>Login</b></a></b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="cloud.jsp"><b>Back</b></a></b></font>
	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="ca.jsp"><b>authorized</b></a></b></font>
	
	</td></tr>
	
	  <tr align="center"> 
        <td><table><tr align="center"><td colspan="2"><font size="3" color="#CC0099"><b>Data User</b></font> </td></tr>
		<tr align="center"><td ><font size="2" color="#000099"><b>Wlcome:</b></font><font size="2" color="#000000"><b><%=name%></b></font></td></tr>
		<tr><td><table><tr><td><img  src="images/ca.jpg" width="204" height="134"></td>
		<td><form action="ca2.jsp" method="get">
		<table><tr><td>File_Id</td>
		<td><input type="text" name="iid"></td>
		</tr>
		<tr>
		<td>File_Name</td>
		<td><input  type="text" name="ffname"></td></tr>
		<tr><td></td>
		<td><input type="submit" value="Get authority"></td>
		</tr>
		
		
		</table></form>
		
		</td>
		
		</tr></table></td></table></td></tr>
		
		</table> </td>
    </tr></table>
	
	 </div>
	
	 
	
	</div>
	
</div>
	
	</body>
</html>
