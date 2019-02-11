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
 Integer s10=(Integer)session.getAttribute("s10");
	
	
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="select score from score where score='"+key+"'";
	try
	{
	    con=databasecon.getconnection();
	    st=con.createStatement();
	    rs=st.executeQuery(sql);
		if(rs.next())
		{
		
		String  s=rs.getString(1);
		//System.out.println(s);
		
		if(key.equals(s))
		{
		response.sendRedirect("file_View.jsp");
			}
			
			
			
			 else
	     {
		 
		 
		 out.println("U r searching top key is wrong........................................ ");
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