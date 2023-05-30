<%@page import="packag.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@ include file="AdminHeader.jsp" %>
<%@ include  file="../footer.jsp" %>


<!DOCTYPE html>
<html>
<head>

<link rel="Stylesheet" href="../CSS/addNewProduct-style.css">
<title>Add New Product</title>
</head>

<body>
<%
String msg=request.getParameter("msg");

if("done".equals(msg))
{%>
    <h3 class="alert">Product Add Successfully!</h3>

<%}%>
<%
 if("wrong".equals(msg))
		 {%>
		 <h3 class="alert">Something Went Wrong!! Try Again</h3>
<%}%>
<%
int id=1;
try
{
	Connection con=ConnectionProvider.getCon();
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("select  max(id) from product");
	while(rs.next())
	{
		id=rs.getInt(1);
		id=id+1;
	}
}

 catch(Exception e)
{
	 
}
%>
<h3 style="color:yellow;">Product ID: <%out.println(id); %></h3>
<form action="addNewProductAction.jsp" method="post" >
<input type="hidden" name="id" value="<%out.println(id); %>">

<div class="left-div">
 <h3>Enter Name</h3>
 <input class="input-style" type="text" name="name" placeholder="Enter product name" required="required">
<hr>
</div>


<div class="right-div">
 <h3>Enter Category</h3>
 <input class="input-style" type="text"  name="category"  placeholder="Enter category" required="required">
<hr>
</div>


<div class="left-div">
 <h3>Enter Price</h3>
 <input class="input-style" type="number"  name="price" placeholder="Enetr price" required="required">
<hr>
</div>



<div class="right-div">
<h3>Active</h3>
<select class="input-style" name="active">
  <option value="yes">yes</option>
  <option value="no">no</option>
</select>
<hr>
</div>



<button class="button">Save<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</body>


</html>