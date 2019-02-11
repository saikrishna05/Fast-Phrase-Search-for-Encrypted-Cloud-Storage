<%@ page import="java.sql.*,databaseconnection.*" errorPage=""%>
<html>
    <head>
	<title>login</title>
    </head>
    <body>
	<form>
	<% 
    String key=request.getParameter("key");
	System.out.println(key);
String s10=(String)session.getAttribute("id1");
 System.out.println(s10);
	
	
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="select keyword from up where fid='"+s10+"' ";
	try
	{
	    con=databasecon.getconnection();
	    st=con.createStatement();
	    rs=st.executeQuery(sql);
		if(rs.next())
		{
		
		String  s=rs.getString(1);
		System.out.println(s);
		
		
		
		
		if(key.equals(s))
		{
		response.sendRedirect("file_view1.jsp");
			}
			 else
	     {
		 
		
		
	out.println("U r Not Authorized User get the authentication from data Owner.......................");
	  }
			
			
				
		}
	   
	}
	catch(SQLException e1)
	{
		
		System.out.println(e1);
	
	 }

            %>
             </form>
       </body> 	
</html>