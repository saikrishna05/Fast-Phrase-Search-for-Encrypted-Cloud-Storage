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
        <td>
		
		
		
		<table bgcolor="#CC0099" width="532" height="133" border="1">
	  <tr><td colspan="6" align="center"><p><font size="2" color="#000000"><b>View 
                  the Details for Uploaded Files</b></font></p>
                        </td></tr>
          <tr  bgcolor="#FFFFFF"> 
           
           
			<td><font  color="#CC0099" size="2"><b>User Id</b></font></td>
            <td><font  color="#CC0099" size="2"><b>User Name</b></font></td>
          <td><font  color="#CC0099" size="2"><b>Password</b></font></td>
		  <td><font  color="#CC0099" size="2"><b>Email</b></font></td>
		   <td><font  color="#CC0099" size="2"><b>Mobile</b></font></td>
		   
			
			  
			  
          </tr>
          <%
String s=null,s1=null,s2=null,s3=null,s4=null,s5=null,s6=null;

int id=0;
String id1=null;
try
{
Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select  id,name,password,email,mobile from register");
ResultSet rs=ps.executeQuery();
	
while(rs.next())
 {
 s=rs.getString(1);
 session.setAttribute("s",s);
  s1=rs.getString(2);
   s2=rs.getString(3);
    s3=rs.getString(4);
	

s6=rs.getString(5);
 %>
          <tr bgcolor="#009900"> 
            <td> 
              <font color="#000000"><%=s%></font>
            </td>
            <td> 
              <font color="#000000"><%=s1%></font>
            </td>
            <td> 
              <font color="#000000"><%=s2%></font>
            </td>
            <td> 
             <font color="#000000"><%=s3%></font>
            </td>
	<td> 
             <font color="#000000"><%=s6%></font>
            </td>
			
             </tr>
          <%
		  
}

}
 catch(Exception e1)
{
out.println(e1.getMessage());

}
%>
        </table>
		
		
		
		
		
		
		</td>
    </tr></table>
	
	 </div>
	
	 
	
	</div>
	<!-- end #page -->
</div>
	
	<!-- end #footer -->
</body>
</html>
