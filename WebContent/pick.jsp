<%@ page import="java.sql.*,databaseconnection.*" errorPage=""%>
 
        
          <%
		  String fname=(String)session.getAttribute("fname");
		  String aaa=(String)session.getAttribute("emaill");
		  System.out.println(aaa);
String s=null,s1=null,s2=null,s3=null,s4=null,s5=null,s6=null;

int id=0;
String id1=null;
try
{
Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select  score from score where fname='"+fname+"'");
ResultSet rs=ps.executeQuery();
	
while(rs.next())
 {
 s=rs.getString(1);
 session.setAttribute("s",s);
 System.out.println(s);
  

}
}
 catch(Exception e1)
{
out.println(e1.getMessage());

}
%>
        <%



String fid=(String)session.getAttribute("sa");


String b="top_key granted";


try
{
Connection con1 = databasecon.getconnection();
PreparedStatement ps1=con1.prepareStatement("update topkey set status=? where fname='"+fname+"'");
ps1.setString(1,b);
ps1.executeUpdate();

         
response.sendRedirect("smail1.jsp");
		  
}

		
		catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
		
				
			
				


%>