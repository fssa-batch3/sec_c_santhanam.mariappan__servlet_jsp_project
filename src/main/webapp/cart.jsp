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
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap"
	rel="stylesheet">
 
	<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jost&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap"
	rel="stylesheet">
	
</head>

<body>
	<%@ include file="commonSession.jsp"%>

	<%
	String productName = request.getParameter("productName");
	String productId = request.getParameter("productid");
	int product_id = Integer.parseInt(productId);
	String productPriceStr = request.getParameter("productPrice");
	// if(productPriceStr != null){
	double productPrice = Double.parseDouble(productPriceStr);
	// }
	%>
	<%@ include file="header.jsp"%>

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

		<label for="quantity">Quantity (between 1 and 5): &#128722; <input
			type="number" id="quantity" name="quantity" min="1" max="5"
			placeholder="1">
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
			<h2 id="sub_total">
				SUBTOTAL: <span id=subtotal><%=productPrice%></span>
			</h2>
			<br> <br> <br>
			<p>Taxes, shipping and discounts codes calculated at checkout</p>
			<div class="yellow1">
				<div class="yellow2"></div>
				<div class="yellow2"></div>
			</div>

			<button type="submit" id="hel" onclick="bookOrder()">Book Order</button>

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
	    let product_id = document.getElementById("id").innerText;
	    
	    
	    console.log(productName);
	    console.log(quantity);
	    console.log(amount);
	    console.log(totalAmount);
	    
	    window.location.href = "OrderServlet?productName="+productName+"&productPrice="+amount+"+&quantity="+quantity+"&totalAmount="+totalAmount+"&product_id="+<%=product_id%>;
	}

//id add
	</script>
</body>

</html>