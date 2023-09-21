<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.fssa.zanarts.model.*"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="assets/css/artist_pro.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer">
</head>

<body>
      <%@ include file="commonSession.jsp" %>
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
			<li><a href="/pages/home.jsp">Home |</a></li>
			<li><a href="/pages/categories.jsp">Products |</a></li>
			<li><a href="findservice.jsp">Find Service </a></li>

		</ul>
	</div>
	<span id="hr2"> <br>
		<hr>
	</span>

	<!-- background_image -->

	<!-- main tag for whole content -->
	<div class="container">
		<h2>Your Uploaded art</h2>

		<ul class="cards">
			<%
			List<Product> productList = (List<Product>) request.getAttribute("userProductList");
			if (productList != null) {
				for (Product ele : productList) {
			%>

			<li class="card">
				<div>
					<a href="productDetails.jsp?id=<%=ele.getId()%>"> <img
						class="round" src="<%=ele.getImageurl()%>" width="300px"
						alt="user" />
					</a>
					<h3 class="card-title" id="card-title">isac</h3>
					<div class="card-content">
						<p>
							"<%=ele.getProductDescription()%>"
						</p>
					</div>
				</div>
				<div class="buttons">
					<button id="openPopupBtn">

						<form id="do" method="post"
							action="DeleteProduct?id=<%=ele.getId()%>">
							<a href="#" class="open" data-id="<%=ele.getId()%>"
								data-productname="<%=ele.getname()%>"
								data-productDes="<%=ele.getProductDescription()%>"
								data-url="<%=ele.getImageurl()%>"
								data-artistname="<%=ele.getArtistname()%>"
								data-catg="<%=ele.getCategory()%>" data-pr="<%=ele.getPrice()%>"
								data-Width="<%=ele.getSize().getWidth()%>"
								data-Heigth="<%=ele.getSize().getHeight()%>">Edit </a>
					</button>
					<button id="sub_but" type="submit">Delete</button>
				</div>
			</li>
			</form>
			<%
			}
			} else {
			%>
			<h2>Not yet upload any arts!!!</h2>
			<%
			}
			%>
		</ul>
	</div>

	<!-- pop up  -->
	<div id="popup" class="popup">
		<div class="popup-content">
			<span class="close" id="closePopupBtn">&times;</span>


			<form id="UpdateProduct" action="UpdateProduct" method="post">
				<label for="productId"> <input type=text id="productId"
					name="productid1" style="display: none;"></label> <br> <label
					for="productName">
					<h3>Name:</h3>
				</label> <input type="text" id="productName" name="productName1" required>
				<br> <label for="productDescription">
					<h3>Description:</h3>
				</label> <input type="text" id="productDescription"
					name="productDescription1" required> <br> <label
					for="productPrice">
					<h3>Price:</h3>
				</label> <input type="number" id="productPrice" name="productPrice1"
					min="0.01" step="0.01" required> <br> <label
					for="productWidth"><h3>Width:</h3></label> <input type="number"
					id="productWidth" name="productWidth1" min="1" required> <br>
				<label for="productHeight">
					<h3>Height:</h3>
				</label> <input type="number" id="productHeight" name="productHeight1"
					min="1" required> <br> <label for="artistName"><h3>Artist
						Name:</h3></label> <input type="text" id="artistName" name="artistName1"
					required> <br>
				<h3>Category:</h3>
				<label for="Category"><input type="text" id="Ctry"
					name="Category1"></label> <br>
				<h3>Url:</h3>
				<label for="url"><input type="text" id="url"
					name="producturl"></label> <br>


				<button type="submit" id="update_but">Update Product</button>
			</form>
		</div>
	</div>

	<script src="assets/js/product.js"></script>

	<script>
	
	function update(productObj){
		
		 document.getElementById("productName").value=productObj.name;
		 document.getElementById("productDescription").value=productObj.Des;
		 document.getElementById("productPrice").value=productObj.price;
		 document.getElementById("productWidth").value=productObj.Width;
		 document.getElementById("productHeight").value=productObj.Heigth;
		 document.getElementById("artistName").value=productObj.Artistname;
		 document.getElementById("Ctry").value=productObj.catg;
		 document.getElementById("url").value=productObj.Url;
		 document.getElementById("productId").value=productObj.id;
		 
	}
	
	
	const updateProduct= document.querySelectorAll(".open");
	updateProduct.forEach(product => {
		product.addEventListener("click", () =>{
			
			const productObj={
					id: product.getAttribute("data-id"),
					name: product.getAttribute("data-productname"),
					Des: product.getAttribute("data-productDes"),
					price :product.getAttribute("data-pr"),
					Width :product.getAttribute("data-Width"),
					Heigth :product.getAttribute("data-Heigth"),
					Artistname:product.getAttribute("data-artistname"),
					catg :product.getAttribute("data-catg"),
					Url :product.getAttribute("data-url")
			 
			}
			console.log(product.getAttribute("data-id"))
			console.log(product.getAttribute("data-url"))
			console.log(product.getAttribute("data-Heigth"))
			update(productObj);
		})
	});
	</script>


</body>

</html>