<%@ page import="java.sql.*,databaseconnection.*" errorPage=""%>


<%
String s=null,s1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null;
int aaa=(int) (Math.random() * 10000);
int id=0;
String id1=null;
String fid=(String)session.getAttribute("s");



try
{
Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select  fid,uid,fname,uname,keyword1,keyword from up where fid='"+fid+"'");
ResultSet rs=ps.executeQuery();
	
while(rs.next())
 {
 s=rs.getString(1);
 session.setAttribute("s",s);
  s1=rs.getString(2);
   s2=rs.getString(3);
    s3=rs.getString(4);
	

s6=rs.getString(5);
s7=rs.getString(6);

try
{
Connection con1 = databasecon.getconnection();
PreparedStatement ps1=con1.prepareStatement("insert into score(fid,fname,uid,uname,keyword,score,keyword1) values('"+s+"','"+s2+"','"+s1+"','"+s3+"','"+s6+"','"+aaa+"','"+s7+"')");
ps1.executeUpdate();
         
		  
}

		
		catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
		
				
			
				}

}
 catch(Exception e1)
{
out.println(e1.getMessage());

}

response.sendRedirect("success.jsp");
%>