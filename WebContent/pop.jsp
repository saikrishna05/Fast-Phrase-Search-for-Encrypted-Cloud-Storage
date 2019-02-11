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

	java.util.Date now = new java.util.Date();
	String date=now.toString();
	 String DATE_FORMAT = "yyyy-MM-dd";
	 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     String strDateNew = sdf.format(now) ;


//status="ondatabase";


String saveFile="";
//String contentType1=request.getAttribute("file");
String contentType = request.getContentType();




if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0)){
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while(totalBytesRead < formDataLength){
byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}


int ch;
    StringBuffer strContent = new StringBuffer("");
    FileInputStream fin = null;
	
	
String file = new String(dataBytes);
saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
File ff = new File(saveFile);
FileOutputStream fileOut = new FileOutputStream(ff);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();


fin = new FileInputStream(ff);
      while ((ch = fin.read()) != -1)
        strContent.append((char) ch);
      fin.close();
	  String ss=(strContent.toString());

StringBuffer buffer=new StringBuffer();
 key = KeyGenerator.getInstance(algorithm).generateKey();
            cipher = Cipher.getInstance(algorithm);
            String input = ss;
           // System.out.println("Entered: " + input);
            byte[] encryptionBytes = encrypt(input);
            String passw=new String(encryptionBytes);



//out.print(passw);
String aa=(decrypt(passw.getBytes()));
//out.print(aa);





%>






    <%
	
	Integer uid=(Integer)session.getAttribute("id");
String uname=(String)session.getAttribute("name");

System.out.println(uname);
String email=(String)session.getAttribute("email");
	
	
String c=null;
String a=(String)session.getAttribute("fid");
session.setAttribute("fid",a);
System.out.println(c);
String b=(String)session.getAttribute("fname");
session.setAttribute("fname",b);
//c=request.getParameter("file");
FileInputStream fis;
PreparedStatement ps = null;
try{

Connection con = databasecon.getconnection();

		ps = con.prepareStatement("insert into up(uid,uname,email,fid,fname,file,date,ff)values(?,?,?,?,?,?,?,?)");
			fis = new FileInputStream(ff);
			double size=ff.length();
		  double  size1=size/1024;
		  double size2=Math.round(size1*100.0)/100.0;
		  String size3=Double.toString(size2);
		  session.setAttribute("filesize",size3);
		  
			//File f = new File(saveFile);
			ps.setInt(1,uid);
			
			
				ps.setString(2,uname);
				
                ps.setString(3,email);
                ps.setString(4,a);
				
				 ps.setString(5,b);
				 
				 //session.setAttribute("fname",fname);
 ps.setString(6,passw);
 
 session.setAttribute("passw",passw);
 ps.setString(8,aa);
 // ps.setBinaryStream(6, (InputStream)fis, (int)(ff.length()));
        System.out.println(passw);
            
ps.setString(7,strDateNew);



//session.setAttribute("passw",passw);
//session.setAttribute("aa",aa);

ps.executeUpdate();
			
		
		
				
		} 
		
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
		
//out.print(ss);
	}
	
	response.sendRedirect("encrypt.jsp");			
	
						
%>
