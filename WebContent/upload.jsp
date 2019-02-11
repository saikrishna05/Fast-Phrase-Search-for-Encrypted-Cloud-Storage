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
	
	
	<table width="803" height="413">
	<tr><td height="38"><font size="2"><b><a href="index.html"><b>Home</b></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="login.jsp"><b>Login</b></a></b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="owner.jsp"><b>Back</b></a></b></font></td></tr>
	
	<tr>
        
		<td><table align="center" width="719" height="284">
		<tr align="center"><td colspan="2"> <font size="4" color="#000000"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Upload the File</b></font>
			</td></tr>
		<tr>
              <td  width="281">
			   <img   src="images/upload2.png" width="233" height="233" />
			  </td>
		      <td  width="373"> <form name="s" action="upload1.jsp" method="get" onSubmit="return valid()">
			   		  <table   bgcolor="#CC6699" width="419" height="152">
			  <tr><td width="188"><font size="3" color="#FFFFFF"><b>File_Id</b></font></td>
			  <td width="219"><input type="text" name="fid" value="<%= (int) (Math.random() * 1000) %>"></td>
			  </tr>
			  <tr><td><font size="3" color="#FFFFFF"><b>File_Name</b></font></td>
			  <td><input type="text" name="fname"  class="b1"></td>
			  </tr>
			 
			  <tr><td></td>
			  <td><input type="submit" value="Continue"  class="b1">
			  &nbsp;&nbsp;&nbsp;&nbsp; 
                <input type="reset" name="r" value="clear">
			  </td>
			  </tr>
			  </table></form>
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
