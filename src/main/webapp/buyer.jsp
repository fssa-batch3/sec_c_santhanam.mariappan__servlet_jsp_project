<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.fssa.zanarts.dao.OrderDao"%>
<%@page import="com.fssa.zanarts.model.Order"%>
<%@page import="com.fssa.zanarts.model.Product"%>
<%@page import="com.fssa.zanarts.dao.UserDao"%>
<%@page import="com.fssa.zanarts.dao.ProductDao"%>
<%@page import="com.fssa.zanarts.service.UserService"%>
<%@page import="com.fssa.zanarts.logger.Logger"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Buyer.jsp</title>
<link rel="stylesheet" href="assets/css/buyer.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer">
</head>

<body>
	<%
	ArrayList<Order> orderDetails = (ArrayList<Order>) request.getAttribute("orderDetails");

	System.out.print(orderDetails + "got");
	%>

	<header>

		<div class="logo">
			<img src="assets/images/new_logo plain.png" width="150px"
				alt="no error">
		</div>

		<div class="input">
			<input type="text" name="search_bar" id="search"
				placeholder="What do you like today???"> <i
				class="fa fa-search"></i>
		</div>

		<div class="side1_nav">
			<ul>

			</ul>

		</div>

	</header>
	<!-- hr line  -->
	<span id="hr1"> <br>
		<hr> <br>
	</span>

	<div class="header_prt1">
		<ul>
			<li><a href="home.jsp">Home |</a></li>
			<li><a href="product.jsp">Products |</a></li>
			<li><a href="findservice.jsp">Find Service </a></li>

		</ul>
	</div>
	<span id="hr2"> <br>
		<hr>
	</span>

	<!-- page start -->

	<h2 id="order">Order Histroy</h2>

	<div class="main"></div>
	`
	<%
	for (Order order : orderDetails)
		if (order != null) {
			{
		Product pt = ProductDao.getProductById(order.getProductId()); // Assuming product.getId() is correct
		System.out.println(order.getProductId());
	%>


	<main>
		<img src="<%=pt.getImageurl()%>" width="250px" alt="">
		<h3>
			Art:<%=pt.getname()%></h3>
		<br>
		<h4>
			Artist:<%=pt.getArtistname()%></h4>
		<br>
		<p>
			RS:<%=pt.getPrice()%></p>
		<br>
		<p><%=pt.getUploadTime()%>>
		</p>
		<br>
		<h3>
			<p>
				Quantity:<%=order.getQuantity()%></p>
			<br> <br>
			<button>Ordered</button>
	</main>
	<%
	}
	} else {
	%>
	<h2>No orders are placed</h2>
	<%
	}
	%>

</body>

</html>