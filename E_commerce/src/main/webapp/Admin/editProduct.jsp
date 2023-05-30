<%@page import="packag.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@ include file="AdminHeader.jsp" %>
<%@ include file="../footer.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="../CSS/addNewProduct-style.css">
<title>edit product</title>
<style>
.back
{
  color:white;
  margin-left: 2.5px;
  

}

</style>
</head>
<body>
<h2><a class="back" href="allProductEditProduct.jsp"><i class='fas fa-arrow-circle-left'></i></a></h2>
<%
try
{
	  String id=request.getParameter("id");
	  
	  Connection con=ConnectionProvider.getCon();
	  Statement stmt=con.createStatement();
	  ResultSet rs=stmt.executeQuery("select * from product where id='"+id+"'");
	  while(rs.next())
	  {
		
	%>
<form action="editProductAction.jsp" method="post">
<input type="hidden" name="id" value="<%out.print(id);%>">


<div class="left-div">
<h3> Enter name </h3>
<input class="input-style"  type="text"  name="name" value="<%=rs.getString(2)%>"required="required">
<hr>
</div>


<div class="right-div">
<h3>Enter Category</h3>
<input class="input-style" type="text" name="category" value="<%=rs.getString(3)%>"required="required">
<hr>
</div>


<div class="left-div">
<h3>Enter price</h3>
<input class="input-style" type="number" name="price" value="<%=rs.getString(4)%>"required="required">
<hr>
</div>


<div class="right-div">
<h3>Active</h3>
<select class="input-style" name="active">
<option vlaue="yes">yes</option>
<option vlaue="no">no</option>
</select>
<hr>
</div>

<button class="button">Save<i class='far fa-arrow-alt-circle-right'></i></button>
</form>

<%
	  }
}


catch(Exception e)
 {
	System.out.println(e);
 }
%>

</body>
</html>