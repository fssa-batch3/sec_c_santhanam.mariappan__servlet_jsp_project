<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.fssa.zanarts.model.Product"%>
<%@ page import="com.fssa.zanarts.service.ProductService"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ProductDetails</title>
<link rel="stylesheet" type="text/css"
	href="assets/css/productDetails.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<%@ include file="commonSession.jsp"%>
	<!-- header section -->
 	<%@ include file="header.jsp"%>
 	
 	<hr>

	<%
	int id = Integer.parseInt(request.getParameter("id"));
	Product product = ProductService.readProduct(id);
	%>


	<div class="content">
		<main>
			<span> <img src="<%=product.getImageurl()%>" width="400px"
				alt=""></span> <img src="<%=product.getImageurl()%>" width="120px"
				alt=""> <img src="<%=product.getImageurl()%>" width="120px"
				alt="">

		</main>
		<div class="product_txt">
			<span id="top"><%=product.getname()%></span> <br> <span
				id="parrot"><%=product.getProductDescription()%> </span> <br>

			<p>
				 <br> <span id="yellow">Sold by: <%=product.getArtistname()%></span>
			</p>
			<br>
			<h3>
				&#8377;
				<%=product.getPrice()%></h3>

			<p>
				<img src="../asset/images/free.png" alt=""> <span id="hello">
					Free Shipping</span>
			</p>

			<span id="star">Only 1 items available!</span>

			<%
			String name = (String) request.getSession(false).getAttribute("userName");
			String role = (String) request.getSession(false).getAttribute("role");

			if (role.equals("ARTIST")) {
			%>
			<%
			} else {
			%>
			<div class="material">
				<a
					href="cart.jsp?productName=<%=product.getname()%>&productid=<%=product.getId()%>&productPrice=<%=product.getPrice()%>">Buy
					Now</a>

			</div>
			<%
			}
			%>


			<br>
			<div class="hr">
				<h3>Product Detail</h3>
				<span id="lol">
					<p>Reference: <%=product.getSize().getHeight()%>mm && <%=product.getSize().getWidth()%>mm</p>
				</span>
				<hr>
				<h3>Exchange & Returns</h3>
				<p>
					We do not accept returns unless product is damaged. <br>
					Request to share unboxing video incase of damage and write to us
					within 5 days of product receipt.
				</p>
				<hr>
				<h3>Shipping Info</h3>
				<p>Products are shipped within 10 working days of order
					confirmation.</p>
				<hr>
				<h3>Care Instructions</h3>
				<p>Gently wipe with a dry cloth.</p>
				<hr>
				<p>
					Category: Paintings,Sub Category: <span id="red">Non-framed</span>
				</p>
			</div>

		</div>
	</div>

	<div class="relate">
		<div class="rev1">
			<img src=https://iili.io/HyXCdP9.jpg width="400px" alt="">
			<p>Joker-color</p>
			<h3>&#8377; 1400</h3>

		</div>

		<div class="rev1">
			<img src=https://iili.io/HyXC4Hb.jpg alt="">
			<p>Spider-man</p>
			<h3>&#8377; 1400</h3>

		</div>

		<div class="rev1">
			<img src=https://iili.io/HyXCDf1.jpg alt="">
			<p>Venom</p>
			<h3>&#8377; 1400</h3>

		</div>

		<div class="rev1">
			<img src=https://iili.io/HyXnHOv.jpg alt="">
			<p>Wild-man</p>
			<h3>&#8377; 1400</h3>

		</div>
	</div>

	<div class="foot">
		<img src=https://iili.io/HyXnYge.jpg alt="">
		<p>While drawing I discover what I really want to say</p>
	</div>

</body>
</html>