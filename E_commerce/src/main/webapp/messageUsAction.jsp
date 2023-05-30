<%@page import="packag.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String email=session.getAttribute("email").toString();
String  subjec=request.getParameter("subjec");
String body=request.getParameter("body");
try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into message(email,subjec,body)values(?,?,?)");
	ps.setString(1, email);
	ps.setString(2, subjec);
	ps.setString(3, body);
	ps.executeUpdate();
	response.sendRedirect("messageUs.jsp?msg=valid");
   }
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("messageUs.jsp?msg=invalid");
}
%>