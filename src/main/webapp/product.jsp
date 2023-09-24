<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.fssa.zanarts.model.*"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="./assets/css/productshow.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>All Products</title>
</head>
<body>
	<%@ include file="commonSession.jsp"%>
	<!-- header section -->
	<%@ include file="header.jsp"%>

	<div class="backimg">
		<img src=https://iili.io/Hy1nEUQ.jpg alt="">
	</div>

	<div class="tag_hr">
		<div class="tag1"></div>
		<p>Shop Our Original product</p>
	</div>


	<!-- background image -->


	<div class="top">


		<%
		List<Product> productList = (List<Product>) request.getAttribute("productList");
		if (productList != null) {
			for (Product ele : productList) {
		%>
		<div class="top2">
			<div class="main1">


				<div class="content">
					<div class="side-options">


						<div class="option"></div>



					</div>

					<a href="productDetails.jsp?id=<%=ele.getId()%>"><img
						src="<%=ele.getImageurl()%> width=" 300px" alt=""></a>

					<div class="content1">



						<div class="content2">
							<h2>
								<%=ele.getCategory()%>
							</h2>
							<p>
								By
								<%=ele.getArtistname()%>
							</p>
						</div>

						<div class="content3">
							<i class="fa fa-heart" id="heart"
								style="font-size: 25px; color: rgba(251, 186, 113, 255)"></i>
						</div>
					</div>
				</div>

			</div>

		</div>

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


		<%
		}
		} else {
		%>
		<h2>Empty</h2>
		<%
		}
		%>



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
	
    /**
	 * This script adds functionality to filter and display elements based on user input.
	 * It listens for keyup events on an input field with the id "search" and filters
	 * elements with the class "content" based on the entered search query.
	 *
	 * @param {Event} e - The event object representing the keyup event.
	 */
    const search = document.getElementById("search");
    search.addEventListener("keyup", (e) => {
          
        const words = e.target.value.toLowerCase();
        const letter = document.querySelectorAll(".content");
        
        letter.forEach((element) => {
            const content = element.children[2].textContent.toLowerCase();
            if (content.includes(words)) {
                element.style.display = "block";
              
            } else {
                element.style.display = "none";
            }
        });
    });
	</script>
</body>
</html>