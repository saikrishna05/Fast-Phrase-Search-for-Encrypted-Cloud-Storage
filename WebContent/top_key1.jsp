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
	<tr><td height="38"><font size="2"><b><a href="index.html"><b>Home</b></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="login.jsp"><b>Login</b></a></b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="cloud.jsp"><b>Back</b></a></b></font></td></tr>
	
	  <tr align="center"> 
        <td> <table width="532" height="133" border="1">
            <tr>
              <td colspan="6" align="center"><p><font size="2" color="#009966"><b>Releted 
                  Files</b></font></p></td>
            </tr>
            <tr> 
              <td><font  color="#CC0099" size="2"><b>User_Id</b></font></td>
              <td><font  color="#CC0099" size="2"><b>User_Name</b></font></td>
              <td><font  color="#CC0099" size="2"><b>Email</b></font></td>
              <td><font  color="#CC0099" size="2"><b>File_Name</b></font></td>
              <td><font  color="#CC0099" size="2"><b>Request</b></font></td>
            </tr>
            <%
	   
		  
		String a=request.getParameter("iid");
		String b=request.getParameter("ffname");
		//String ee=(String)session.getAttribute("rname");

Integer ee=(Integer)session.getAttribute("id");
		String name=(String)session.getAttribute("name");
		String email=(String)session.getAttribute("email");
	String term=(String)session.getAttribute("term");

		  %>
            <tr> 
              <td> <font color="#000000">
                <%=ee%>
                </font> </td>
              <td> <font color="#000000">
                <%=name%>
                </font> </td>
              <td> <font color="#000000">
                <%=email%>
                </font> </td>
              <td> <font color="#000000">
                <%=term%>
                </font> </td>
              <td> <font color="#000000"><a  href="aa.jsp"><b>Request_TopKey*</b></a></font> 
              </td>
            </tr>
          </table></td>
    </tr></table>
	
	
	
	 </div>
	
	 
	
	</div>
	<!-- end #page -->
</div>
	
	<!-- end #footer -->
</body>
</html>
