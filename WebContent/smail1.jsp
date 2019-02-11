 <%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%


Integer uid=(Integer)session.getAttribute("id");

System.out.println(uid);
String email=(String)session.getAttribute("emaill");


System.out.println(email);
//int a=(int) (Math.random() * 100000);
//session.setAttribute("aa",a);
String c=(String)session.getAttribute("s");
//out.println(sb);
//String password2=a.toString();
//String c =Integer.toString(a);
session.setAttribute("qq",c);
String host="", user="", pass="";

host ="smtp.gmail.com"; //"smtp.gmail.com";

user ="sampledemoprojects@gmail.com"; //"YourEmailId@gmail.com" // email id to send the emails

pass ="RPondy###000"; //Your gmail password

String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";

String to =email; // out going email id

String from ="sampledemoprojects@gmail.com"; //Email id of the recipient
String subject="hi";
//String subject ="welcome";

String messageText ="<b>"+email+"</b><br>your Top_key search keyword:=<b>"+c+"</b>";

//session.setAttribute("userid",userid);
//session.setAttribute("password",c);
session.setAttribute("email",email);
boolean sessionDebug = true;

Properties props = System.getProperties();
props.put("mail.host", host);
props.put("mail.transport.protocol.", "smtp");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.", "true");
props.put("mail.smtp.port", "465");
props.put("mail.smtp.socketFactory.fallback", "false");
props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
Session mailSession = Session.getDefaultInstance(props, null);
mailSession.setDebug(sessionDebug);
Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = {new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
msg.setContent(messageText, "text/html"); // use setText if you want to send text
Transport transport = mailSession.getTransport("smtp");
transport.connect(host, user, pass);
try {
transport.sendMessage(msg, msg.getAllRecipients());
//out.println("message successfully sended"); // assume it was sent

}
catch (Exception err) {

out.println("message not successfully sended"); // assume it’s a fail
}
transport.close();

response.sendRedirect("success.jsp");



%>

