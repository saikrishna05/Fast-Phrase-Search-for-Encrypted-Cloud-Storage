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
	String a=(String)session.getAttribute("fid");
	String b=(String)session.getAttribute("fname");
	String c=(String)session.getAttribute("passw");
	%>
	<table width="803" height="413">
	<tr><td height="38"><font size="2"><b><a href="index.html"><b>Home</b></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="login.jsp"><b>Login</b></a></b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="owner.jsp"><b>Back</b></a></b></font></td></tr>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="ca.jsp"><b>Request_CA</b></a></b></font></td></tr>
	
	<tr>
        
		<td><table align="center" width="772" height="284">
		<tr align="center"><td colspan="2"> <font size="4" color="#000000"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Encrypt And Lock the File</b></font>
			</td></tr>
		<tr>
              <td  width="281">
			   <img   src="images/lock.png" width="233" height="233" />
			  </td>
		      <td  width="373">
			  <form action="success.jsp">
			  <table  width="464" height="152">
			  <tr><td width="188"><font size="3" color="#000000"><b>File_Id</b></font></td>
			  <td width="219"><input type="text" name="fid" value="<%=a%>"></td>
			  </tr>
			  <tr><td><font size="3" color="#000000"><b>File_Name</b></font></td>
			  <td><input type="text" name="fname" value="<%=b%>"></td>
			  </tr>
			  <tr><td><font size="3" color="#000000"><b>Choose the File to upload</b></font></td>
			  <td><textarea rows="5" cols="30"><%=c%></textarea></td></tr>
			  <tr><td></td>
			  <td><input type="submit" value="Upload"></td>
			  </tr>
			  </table>
			  </form>
			  </td>
		
		
		
		</tr></table></td>
    </tr></table>
	 </div>
	
	 
	
	</div>
	<!-- end #page -->
</div>
	
	<!-- end #footer -->
</body>
</html>
