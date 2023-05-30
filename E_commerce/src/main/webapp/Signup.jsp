<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="CSS/signup-style.css">
<meta charset="ISO-8859-1">
<title>Signup</title>
</head>
<body>
<div id='container'>
<div class='Signup'>

<form action="SignupAction.jsp" method="post">
<input type="text" name="name" placeholder="Enter name"required>
<input type="email" name="email" placeholder="Enter email id"required>
<input type="number" name="number" placeholder="Enter moblie number"required>
<select name="SecurityQuestion">
<option value="What was your first car">What was your first car</option>
<option value="What is the name of your first pet">What is the name of your first pet</option>
<option value="What elementry school did you attend">What elementry school did you attend</option>

<option value="What is the name of the town where you born">What is the nam eof the town where you born</option>
</select>
<input type="text" name="answer" placeholder="Eneter Answer"required>
<input  type="password" name="password"placeholder="Enter Password"required>
<input type="submit" value="signup">
</form>
<h2><a href="Login.jsp">Login</a></h2>
</div>
<div class='Why signup'>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{%>
  <h1>Successful registration</h1>
	
<%}%>

<% if("Invalid".equals(msg))
	{
	%>
	<h1>Something went wrong ! Try again</h1>
	<%} %>
	<h2>Online Shopping</h2>
	<p>The Online shopping system is the application that allows the users to shop online without going to shop to buy them.</p>
</div>
</div>
</body>
</html>