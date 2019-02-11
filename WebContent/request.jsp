<%@ page import="java.sql.*,databaseconnection.*" errorPage=""%>


<%
String s=null,s1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null;
int aaa=(int) (Math.random() * 10000);
int id=0;
String id1=null;
String fid=(String)session.getAttribute("s");


String a="Access request";


try
{
Connection con1 = databasecon.getconnection();
PreparedStatement ps1=con1.prepareStatement("update up set ca=? where fid='"+fid+"'");
ps1.setString(1,a);
ps1.executeUpdate();

         
		  
}

		
		catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
		
				
			
				


response.sendRedirect("success.jsp");
%>
<%

try
{
Connection con1 = databasecon.getconnection();
PreparedStatement ps1=con1.prepareStatement("update CA set permission=? where fid='"+fid+"'");
ps1.setString(1,a);
ps1.executeUpdate();

         
		  
}

		
		catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
		
				
			
				




%>