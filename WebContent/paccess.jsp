﻿<%@ page import="java.sql.*,databaseconnection.*" errorPage=""%>
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
		String aa=(String)session.getAttribute("name");
		%>
		
	
	</div>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<div class="content">
	
	
	
	<table width="803" height="413">
	<tr><td height="38"><font size="2"><b><a href="index.html"><b>Home</b></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="login.jsp"><b>Login</b></a></b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="cloud.jsp"><b>Back</b></a></b></font></td></tr>
	<tr align="center"><td><font size="2" color="#000000"><b>Welcome Data_Owner:</b></font><font size="2" color="#FF0000"><b><%=aa%></b></font></td></tr>
	  <tr align="center"> 
        <td>
		
		
		
		<table bgcolor="#CC0099" width="532" height="133" border="1">
		
			  <tr><td colspan="6" align="center"><p><font size="2" color="#000000"><b>View 
                  the Details for Uploaded Files</b></font></p>
                        </td></tr>
          <tr  bgcolor="#FFFFFF"> 
           
           
			<td><font  color="#CC0099" size="2"><b>File Id</b></font></td>
            <td><font  color="#CC0099" size="2"><b>File Name</b></font></td>
        
		  <td><font  color="#CC0099" size="2"><b>Requester_Name</b></font></td>
		   <td><font  color="#CC0099" size="2"><b>Requester_email</b></font></td>
		    <td><font  color="#CC0099" size="2"><b>Permission</b></font></td>
		   
			
			  
			  
          </tr>
          <%
		  
		  
		  
		  String a=(String)session.getAttribute("name");
		Integer b=(Integer)session.getAttribute("id");
		  
String s=null,s1=null,s2=null,s3=null,s4=null,s5=null,s6=null;

int id=0;
String id1=null;
try
{
Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select  fid,fname,rname,remail from ca where rname='"+a+"'");
ResultSet rs=ps.executeQuery();
	
while(rs.next())
 {
 s=rs.getString(1);
 session.setAttribute("sa",s);
  s1=rs.getString(2);
   s2=rs.getString(3);
    s3=rs.getString(4);
	
	session.setAttribute("remail",s3);
	

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
			
	<td><font color="#FFFFCC"><a href="pgrant.jsp?<%=s%>">Permission_Granted</a></font></td>
			
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
	
	<%
		  
		  
		  
		  String aaa=(String)session.getAttribute("name");
		
try
{
Connection con1 = databasecon.getconnection();
PreparedStatement ps1=con1.prepareStatement("select  fid,keyword,keyword1 from up where uname='"+aaa+"'");
ResultSet rs1=ps1.executeQuery();
	
while(rs1.next())
 {
 s=rs1.getString(1);
 session.setAttribute("sa",s);
  s1=rs1.getString(2);
  session.setAttribute("sb",s1);
  System.out.println(s1);
   s2=rs1.getString(3);
   session.setAttribute("sc",s2);
	
	}

}
 catch(Exception e2)
{
out.println(e2.getMessage());

}
	

 %>
	
	
	
	
	 </div>
	
	 
	
	</div>
	<!-- end #page -->
</div>
	
	<!-- end #footer -->
</body>
</html>
