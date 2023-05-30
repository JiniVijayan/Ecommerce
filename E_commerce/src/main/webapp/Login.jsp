<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="CSS/signup-style.css">
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<div id="container">
  <div class="Signup">
  <form action="LoginAction.jsp" method="post">
  <input type="email" name="email"placeholder="Enter Email"required="required">
  <input type="password" name="password" placeholder="Eneter password"required="required">
 <input type="submit"value="Login">
  </form>
  <h2><a href="Signup.jsp">SignUp</a></h2>
  <h2><a href="Forgotpassword.jsp">Forgot Password</a></h2>
  </div>
<div class="whysignLogin">
<%
 String msg=request.getParameter("msg");
 if("notexist".equals(msg))

{
%>
<h1>Incorrect Username or Password</h1>
<%} %>

<%if("Invalid".equals(msg))
{%>
<h1>something went wrong try again</h1>
<%} 

	%>
	<h2>Online Shopping</h2>
</div>
</div>
</body>
</html>