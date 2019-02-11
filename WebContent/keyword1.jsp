<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.zip.*"%>
<%@ page import="java.sql.*,databaseconnection.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>


<%@page import="java.sql.*"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>

<%!
private static String algorithm = "DESede";
        private static Key key = null;
        private static Cipher cipher = null;
 private static byte[] encrypt(String input)throws Exception {
            cipher.init(Cipher.ENCRYPT_MODE, key);
            byte[] inputBytes = input.getBytes();
            return cipher.doFinal(inputBytes);
        }
%>
<%!
        private static String decrypt(byte[] encryptionBytes)throws Exception {
            cipher.init(Cipher.DECRYPT_MODE, key);
            byte[] recoveredBytes =  cipher.doFinal(encryptionBytes);
            String recovered =  new String(recoveredBytes);
            return recovered;
          }
          %>
<%

	


//status="ondatabase";








	



String a=request.getParameter("keyword");

StringBuffer buffer=new StringBuffer();
 key = KeyGenerator.getInstance(algorithm).generateKey();
            cipher = Cipher.getInstance(algorithm);
            String input = a;
          System.out.println("Entered: " + input);
            byte[] encryptionBytes = encrypt(input);
            String passw=new String(encryptionBytes);



//out.print(passw);
String aa=(decrypt(passw.getBytes()));
//out.print(aa);





%>






    <%
	
	
	
String c=null;
String fid=(String)session.getAttribute("fid");
session.setAttribute("fid",fid);


FileInputStream fis;
PreparedStatement ps = null;
try{

Connection con = databasecon.getconnection();

		ps = con.prepareStatement("Update up set keyword='"+aa+"', keyword1='"+passw+"' where fid='"+fid+"' ");
			
			ps.executeUpdate();
			
		
		
				
		} 
		
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
		
response.sendRedirect("success.jsp");
						
%>
