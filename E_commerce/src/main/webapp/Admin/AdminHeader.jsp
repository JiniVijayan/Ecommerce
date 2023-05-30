
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../CSS/home-style.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/font-awesome.min.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>

<br>
<div class="topnav sticky">
<%String email=session.getAttribute("email").toString();
%>
<center><h2>Online Shopping</h2></center>
<a href="addNewProduct.jsp">Add New Product<i class='fas fa-plus-square'></i></a>
<a href="allProductEditProduct.jsp">All product & Edit Product<i class='fab fa-elementor'></i></a>
<a href="messagesReceived.jsp">Messages Received<i class='fas fa-comment-alt'></i></a>
<a href="ordersReceived.jsp">Order Recived<i class='fas fa-archive'></i></a>
<a href="cancelOrders.jsp">Cancel Order<i class='fas fa-wondow-close'></i></a>
<a href="deliveredOrder.jsp">Delivered Order<i class='fas fa-dolly'></i></a>
<a href="../logout.jsp">Logout<i class='fas fa-share-square'></i></a>
</div>
<body>

</body>
</html>