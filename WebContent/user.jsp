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
		//String emaill=(String)session.getAttribute("email");
		//session.setAttribute("emaill",emaill);
		//System.out.println(emaill);
		%>
		
	
	</div>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<div class="content">
	
	<table width="803" height="413">
	<tr><td height="38"><font size="2"><b><a href="index.html"><b>Home</b></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="login.jsp"><b>Login</b></a></b></font>
	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="ca.jsp"><b>Request_CA</b></a></b></font>
	
	</td></tr>
	
	  <tr align="center"> 
        <td><table><tr align="center"><td colspan="2"><font size="3" color="#CC0099"><b>Data User</b></font> </td></tr>
		<tr align="center"><td ><font size="2" color="#000099"><b>Wlcome:</b></font><font size="2" color="#000000"><b><%=name%></b></font></td></tr>
		<tr><td><table><tr><td><img src="images/search1.png"></td>
		<td><div id="search" >
					<form method="get" action="user1.jsp">
						  <div> 
                            <input type="text" name="search" id="search-text" value="" />
                            <input type="submit" id="search-submit" value="" />
						</div>
					</form>
					</div></td>
		
		</tr></table></td></table></td></tr>
		
		</table> </td>
    </tr></table>
	
	 </div>
	
	 
	
	</div>
	<!-- end #page -->
</div>
	
	<!-- end #footer -->
</body>
</html>
