<%@ page import="java.sql.*,databaseconnection.*" errorPage=""%>

<%
	Integer ee=(Integer)session.getAttribute("id");
		String name=(String)session.getAttribute("name");
		String email=(String)session.getAttribute("email");
	String term=(String)session.getAttribute("term");

	String status="top_key request";
	try
{
Connection con1 = databasecon.getconnection();
PreparedStatement ps1=con1.prepareStatement("insert into topkey(fname,uid,uname,uemail,status) values('"+term+"','"+ee+"','"+name+"','"+email+"','"+status+"')");
ps1.executeUpdate();
    
	     response.sendRedirect("success.jsp");	
	
		  
}

		catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
		
				
			

	
	
	
	
	%>