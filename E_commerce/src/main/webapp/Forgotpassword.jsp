<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="CSS/signup-style.css">
<meta charset="ISO-8859-1">
<title>ForgotPassword</title>
</head>
<body>
<div id="container">
  <div class="Signup">
     <form action="ForgotpasswordAction.jsp" method="post">
     
<input type="email" name="email" placeholder="Enter Email" required="required">
<input type="number" name="mobileNumber" placeholder="Enter Moblie Number"required="required">
<select name="securityQuestion">
<option value="What was your first car">What was your first car</option>
<option value="What is the name of your first pet">What is the name of your first pet</option>
<option value="What elementry school did you attend">What elementry school did you attend</option>
<option value="What is the name of the town where you born">What is the name of the town where you born</option>
   </select>
   <input type="text" name="answer" placeholder="Enter Answer"required="required">
<input  type="password" name="newpassword"placeholder="Enter new Password to set"required="required">
<input type="submit" value="Save">
     </form>
    <h2><a href="Login.jsp">Login</a></h2> 
  

  </div>
<div class='whyforgotPassword'>
<%
String msg=request.getParameter("msg");

if("done".equals(msg))
{
	%>	
	<h1>Password changed successfully!</h1>
<%} %>
<%
 if("invalid".equals(msg))
 {
%>
<h1>Something went wrong! Try again</h1>
<%} %>
<h2>Online Shopping</h2>
<p>The Online Shopping system is the application that allows the user to purchase without going to shops.</p>
</div>
</div>
</body>
</html>