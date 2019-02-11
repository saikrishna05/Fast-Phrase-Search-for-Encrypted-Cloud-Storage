<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<html>
<head>
<title> Scientific Workflow</title>

</head>

<body>

<%


FileInputStream fis;
String a=request.getParameter("name");

String b=request.getParameter("pass");

String c=request.getParameter("email");
String e=request.getParameter("mobile");
String f=request.getParameter("log");

String f1="\\apache-tomcat-6.0.18";
String f2="\\webapps";
String f3="\\Advance User Management on Social Website";
String f4="\\images\\";
String z = "E:\\"+f1+f2+f3+f4;
int aaa=(int) (Math.random() * 100);
int bbb=aaa*5;
File image=new File(z);

java.util.Date now = new java.util.Date();

//Date date = new SimpleDateFormat("dd-MM-yyyy").parse(j);
//String a2= new SimpleDateFormat("yyyy-MM-dd").format(date);
PreparedStatement ps = null;

	ResultSet rs = null;
		
	try
	{
		
		Connection con = databasecon.getconnection();

		ps = con.prepareStatement("insert into register(id,name,password,email,mobile,log) values('"+aaa+"',?,?,?,?,?)");
		ps.setString(1,a); 
ps.setString(2,b);
ps.setString(3,c);

ps.setString(4,e);

ps.setString(5,f);



ps.executeUpdate();

response.sendRedirect("login.jsp?success");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>
</body>
</html>
