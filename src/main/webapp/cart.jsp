<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="assets/css/cart.css">
<!-- <link rel="stylesheet" href="../asset/css/catergis.css"> -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@700&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@700&family=Rubik+Microbe&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer">
</head>

<body>
      <%@ include file="commonSession.jsp" %>

	<%
	String productName = request.getParameter("productName");
	String productPriceStr = request.getParameter("productPrice");
	// if(productPriceStr != null){
	double productPrice = Double.parseDouble(productPriceStr);
	// }
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
			</button>
		</div>

		<div class="side_nav">
			<ul>
				<!-- <li><a href="">Become a seller</a></li> -->
				<li><a href="../pages/home.html">Home</a></li>
				<span>
					<button>
						<a href="product.jsp">Shop our product</a>
					</button>
				</span>
				<li><img
					src="assets/images/profile_picture_user_icon_153847.png"
					width="30px" alt="no error"></li>

			</ul>

		</div>

	</header>
	<!-- hr line  -->
	<span id="hr1">
		<hr>
	</span>

	<div class="header_prt1">
		<ul>
			<li><a href="explore.jsp">Explore |</a></li>
			<li><a href="categories.jsp">Shop our product |</a></li>
			<li><a href="">Find Service </a></li>

		</ul>
	</div>
	<span id="hr2">
		<hr>
	</span>

	<!-- main -->
	<div class="main">
		<h2>Shopping Cart</h2>
	</div>

	<div class="main2">
		<div class="note1">
			<h4>Product</h4>
		</div>

		<div class="note">
			<h4>Price</h4>
		</div>

		<div class="note1">
			<h4>Quality</h4>
		</div>

		<div class="note1">
			<h4>Total</h4>
		</div>
	</div>
	<hr>
	
	<div class="main2">
		<div class="note1">
			<p><%=productName%></p>
		</div>

		<div class="note">
			<h4 name="totalsum" id="amt"><%=productPrice%>
			</h4>
		</div>

		<label for="quantity">Quantity (between 1 and 5): &#128722; 
		<input type="number" id="quantity" name="quantity" min="1" max="5" placeholder="1">
		</label>

		<div class="note1">
			<h4 id="totalamt"><%=productPrice%></h4>
		</div>
	</div>

	<div class="motherchild">
		<div class="mother">
			<h3>Add order Note</h3>
			<textarea rows="10" cols="50" id="product_order_note" name="comment"
				form="usrform">  How We Help you?</textarea>

		</div>

		<div class="motherchild1">
			<h2 id="sub_total">SUBTOTAL: <span id=subtotal><%=productPrice%></span></h2>
			<br> <br> <br>
			<p>Taxes, shipping and discounts codes calculated at checkout</p>
			<div class="yellow1">
				<div class="yellow2"></div>
				<div class="yellow2"></div>
			</div>

			<button type="submit" onclick="bookOrder()">Book Order</button>

		</div>
	</div>
	

	<script>
	let amountElement = document.getElementById("amt");
	let amount = parseInt(amountElement.innerText);

	console.log("amount= ", amount);
	

	document.getElementById("quantity").addEventListener("change", () => {
		
		let quantityElement = document.getElementById("quantity").value;
		let quantity = parseInt(quantityElement);
		
		console.log(quantityElement);
		console.log("quantity= ", quantity);
		
	  let newAmount = amount * quantity;
	  
	  document.getElementById("totalamt").innerText = newAmount;
	  document.getElementById("subtotal").innerText = newAmount;
	  
	});
	
	function bookOrder() {
	    let productName = document.querySelector(".note1 p").textContent;
	    let quantityElement = document.getElementById("quantity").value;
	    let quantity = parseInt(quantityElement);
	    let totalAmount = document.getElementById("totalamt").innerText;
	    
	    console.log(productName);
	    console.log(quantity);
	    console.log(amount);
	    console.log(totalAmount);
	    
	    window.location.href = "OrderServlet?productName="+productName+"&productPrice="+amount+"+&quantity="+quantity+"&totalAmount="+totalAmount;
	}


	</script>
</body>

</html>