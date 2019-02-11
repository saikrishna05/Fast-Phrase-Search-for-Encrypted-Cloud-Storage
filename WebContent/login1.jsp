<%@ page import="java.sql.*,databaseconnection.*" errorPage=""%>
<html>
    <head>
	<title>login</title>
    </head>
    <body>
	<form>
	<% 
    String log=request.getParameter("log");
	String name=request.getParameter("name");
	String pass=request.getParameter("pass");
	session.setAttribute("log",log);
	session.setAttribute("name",name);
	
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="select * from register where log='"+log+"' and name='"+name+"' and password='"+pass+"'";
	try
	{
	    con=databasecon.getconnection();
	    st=con.createStatement();
	    rs=st.executeQuery(sql);
		if(rs.next())
		{
		int id=rs.getInt(1);
		session.setAttribute("id",id);
		//String name=rs.getString(2);
		//session.setAttribute("name",name);
		String  email=rs.getString(4);
		session.setAttribute("email",email);
		System.out.println(email);
		
		//String  utype=rs.getString(7);
		
		if(log.equalsIgnoreCase("data_owner"))
		{
		 %>
 <jsp:forward page="owner.jsp"/> 
	    	<%
			}
			if(log.equalsIgnoreCase("data_user"))
		{
		%>
		<jsp:forward page="user.jsp"/> 
			<%
			}
			
			
			if(log.equalsIgnoreCase("cloud"));
			{
		%>
		<jsp:forward page="cloud.jsp"/> 
			<%
			}
			
			
				
		}
	    else
	     {
		 
		
		
	  out.println("Login Error-please check ur ID and password");
	  }
	}
	catch(SQLException e1)
	{
		
		System.out.println(e1);
	
	 }

	finally
	{
	     st.close();
	      con.close();
	}
            %>
             </form>
       </body> 	
</html>