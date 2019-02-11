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
		
		
		
	
	</div>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<div class="content">
	<%
	String a=(String)session.getAttribute("name");
	
	%>
	<table width="803" height="413">
	<tr><td height="38"><font size="2"><b><a href="index.html"><b>Home</b></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="login.jsp"><b>Login</b></a></b></font></td></tr>
	
	<tr>
        
		<td><table  bgcolor="#0099CC"align="center" width="666" height="284">
		<tr align="center"><td colspan="2"> <font size="4" color="#000000"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Welcome Data_Owner:<font color="#FFCC00"><%=a%></font></b></font>
			</td></tr>
		<tr>
              <td  width="282">
			   <img  src="images/owner1.png" width="233" height="233" />
			  </td>
		      <td width="372"><table bgcolor="#FFFFFF" width="277" height="95">
			  <tr><td><font size="3" color="#FFFFFF"><a href="upload.jsp"> Upload datas in Encrypted Format</a></font></td></tr>
			  <tr><td><font size="3" color="#FFFFFF"><a href="keyword.jsp"> Upload Search index in Encrypted format</a></font></td></tr>
			    <tr><td><font size="3" color="#FFFFFF"><a href="paccess.jsp"> View Request Permission for access the file</a></font></td></tr>
			  </table></td>
		
		
		
		</tr></table></td>
    </tr></table>
	 </div>
	
	 
	
	</div>
	<!-- end #page -->
</div>
	
	<!-- end #footer -->
</body>
</html>
