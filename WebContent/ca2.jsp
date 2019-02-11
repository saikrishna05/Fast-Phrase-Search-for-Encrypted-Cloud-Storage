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
	
	  <tr align="center"> 
        <td>
		
		
		
		<table width="532" height="133" border="1">
	  <tr><td colspan="6" align="center"><p><font size="2" color="#009966"><b>Releted Files</b></font></p>
                        </td></tr>
          <tr> 
           
            <td><font  color="#CC0099" size="2"><b>File_Id</b></font></td>
			   <td><font  color="#CC0099" size="2"><b>File_Name</b></font></td>
			    <td><font  color="#CC0099" size="2"><b>Data_Ownername</b></font></td>
				<td><font  color="#CC0099" size="2"><b>User_Name</b></font></td>
				<td><font  color="#CC0099" size="2"><b>User_Email</b></font></td>
				 <td><font  color="#CC0099" size="2"><b>Request</b></font></td> 
			
			  
			  
          </tr>
           <%
		  
		String a=request.getParameter("iid");
		String b=request.getParameter("ffname");
		//String ee=(String)session.getAttribute("rname");

String ee=(String)session.getAttribute("name");
		String ee1=(String)session.getAttribute("email");

		//String ee1=(String)session.getAttribute("emaill");
		  
String s=null,s1=null,s2=null,s3=null,s4=null,s5=null,s6=null;
String x="waiting";
int id=0;
String id1=null;
try
{
Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select fid,fname,uid,uname,email from up where fid='"+a+"' ");
ResultSet rs=ps.executeQuery();


while(rs.next())
 {
 s=rs.getString(1);
 session.setAttribute("s",s);
 s1=rs.getString(2);
 s2=rs.getString(3);
 s3=rs.getString(4);
 s4=rs.getString(5);
 System.out.println("s4");
 

	

 %>
          <tr> 
            <td> 
              <font color="#000000"><%=s%></font>
            </td>
            <td> 
              <font color="#000000"><%=s1%></font>
            </td>
			<td> 
              <font color="#000000"><%=s3%></font>
            </td>
			<td> 
              <font color="#000000"><%=ee%></font>
            </td>
			<td> 
              <font color="#000000"><%=ee1%></font>
            </td>
			<td> 
              <font color="#000000"><a href="request.jsp?<%=s%>"><b>CA*</b></a></font>
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
	
	
	<%
	String name=(String)session.getAttribute("name");
	String email=(String)session.getAttribute("email");
	System.out.println(email);
	
	try
{
Connection con1 = databasecon.getconnection();
PreparedStatement ps1=con1.prepareStatement("insert into CA (fid,fname,uid,rname,remail,uname) values('"+s+"','"+s1+"','"+s2+"','"+s3+"','"+email+"','"+name+"')");
ps1.executeUpdate();
    
	     
		  
}

		
		catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
		
				
			

	
	
	
	
	%>
	
	
	
	
	
	
	
	
	 </div>
	
	 
	
	</div>
	<!-- end #page -->
</div>
	
	<!-- end #footer -->
</body>
</html>
