<%@ page import="java.sql.*,databaseconnection.*" errorPage=""%>

          <%
		  
          String a=request.getParameter("iid");
		String b=request.getParameter("ffname");
		  
String s=null,s1=null,s2=null,s3=null,s4=null,s5=null,s6=null;
String x="waiting";
int id=0;
String id1=null;
try
{
Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select fid,fname,uname from up where fid='"+a+"' ");
ResultSet rs=ps.executeQuery();


while(rs.next())
 {
 s=rs.getString(1);
 session.setAttribute("s",s);
 s1=rs.getString(2);
 s2=rs.getString(3);

 }

}
 catch(Exception e1)
{
out.println(e1.getMessage());

}

response.sendRedirect("sendEmail");
%>
      