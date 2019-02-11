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
		String fid=(String)session.getAttribute("fid");
		String fname=(String)session.getAttribute("fname");
		%>
	
	</div>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<div class="content">
	
	<table width="803" height="413">
	<tr><td height="38"><font size="2"><b><a href="index.html"><b>Home</b></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="login.jsp"><b>Login</b></a></b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="owner.jsp"><b>Back</b></a></b></font></td></tr>
	
	  <tr align="center"> 
        <td><form action="keyword1.jsp" method="get"  >
<table bgcolor="#FFFFFF"width="410" height="182" >
		
		<tr><td height="53" colspan="2" align="center"><font size="3" color="#CC0099"><b>Upload the Search keyword for cloud</b></font></td></tr>
		
		<tr><td><font size="2" color="#000000"><b>File_Id</b></font></td>
		<td><input type="text" name="fid" value="<%=fid%>"></td>
		</tr>
		<tr><td><font size="2" color="#000000"><b>File_Name</b></font></td>
		<td><input type="text" name="fname" value="<%=fname%>"></td>
		</tr>
		<tr><td><font size="2" color="#000000"><b>Keyword</b></font></td>
	<td><input  type="password" name="keyword" > </td>	
		</tr>
		<tr><td></td>
		<td><input type="submit"  value="Send"></td>
		</tr>
		
		</table></td></form>
    </tr></table>
	
	 </div>
	
	 
	
	</div>
	<!-- end #page -->
</div>
	
	<!-- end #footer -->
</body>
</html>
