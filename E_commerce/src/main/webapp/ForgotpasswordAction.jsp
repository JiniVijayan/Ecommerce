<%@page import="packag.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%

String email=request.getParameter("email");
String mobileNumber=request.getParameter("mobileNumber");
String securityQuestion=request.getParameter("securityQuestion");
String answer=request.getParameter("answer");
String newpassword=request.getParameter("newpassword");

int check=0;
try
{
      Connection con=ConnectionProvider.getCon();
      Statement stmt=con.createStatement();
      ResultSet res=stmt.executeQuery("select * from users where email='"+email+"' and mobileNumber='"+mobileNumber+"'and securityQuestion='"+securityQuestion+"' and answer='"+answer+"'");
   while(res.next())
   {
	   check=1;
	   stmt.executeUpdate("update users set password='"+newpassword+"' where email='"+email+"'");
        response.sendRedirect("Forgotpassword.jsp?msg=done");
   }
   
   if(check==0)
   {
	   response.sendRedirect("Forgotpassword.jsp?msg=invalid");
   }
}
catch(Exception e)
{
  System.out.println(e);
}
      
%>    