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
	String a=request.getParameter("search");
	session.setAttribute("term",a);
		%>
	
	</div>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<div class="content">
	
	<table width="803" height="413">
	<tr><td height="38"><font size="2"><b><a href="index.html"><b>Home</b></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="login.jsp"><b>Login</b></a></b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="user.jsp"><b>Back</b></a></b></font></td></tr>
	
	  <tr align="center"> 
        <td>
		
		
		
		<table width="532" height="133" border="1">
	  <tr><td colspan="6" align="center"><p><font size="2" color="#009966"><b>Releted Files</b></font></p>
                        </td></tr>
          <tr> 
           
            <td width="216"><font  color="#CC0099" size="2"><b>File </b></font></td>
			
			 <td width="300"><font  color="#CC0099" size="2"><b>Download</b></font></td>
			   
			
			  
			  
          </tr>
          <%
String s=null,s1=null,s2=null,s3=null,s4=null,s5=null,s6=null;
String x="waiting";
int id=0;
String id1=null;
String bb=null;


int s10=0;
try
{
Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select fname,fid  from up where fname='"+a+"' ");
ResultSet rs=ps.executeQuery();

	
while(rs.next())
 {
 s=rs.getString(1);
 session.setAttribute("s",s);
 s1=rs.getString(2);
 session.setAttribute("id1",s1);
 
 
try
{
Connection con1 = databasecon.getconnection();
PreparedStatement ps1=con1.prepareStatement("select score  from score where fname='"+a+"' ");
ResultSet rs1=ps1.executeQuery();

	
while(rs1.next())
 {
s10=rs1.getInt(1);
 session.setAttribute("s10",s10);
 System.out.println(s10);
 
 	  

 
 
%>
          <tr> 
            <td> 
              <font color="#000000"><%=s%></font>
            </td>
			
			<td>  <font size="2" color="#000000"><a href="d.jsp?<%=s%>">download</a></font></td>
            
             </tr>
          <%
		}
		
}




 catch(Exception e1)
{
out.println(e1.getMessage());

}  
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
