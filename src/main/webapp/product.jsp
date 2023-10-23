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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Kalam:wght@700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>All Products</title>

</head>

<body>

	<%@ include file="commonSession.jsp"%>


	<%@ include file="header.jsp"%>


	<div class="forgrid">

		<div class="headline">
			<h2>
				Inspire. <br> Create.. <br>Transform...
			</h2>
		</div>


		<div class="secrow">

			<div class="imgclass">
				<img src="https://iili.io/JK5zBkP.jpg" width="150px">
				<h3>Wire art</h3>
				<p>Wire art, a versatile craft, transforms wire into intricate
					sculptures, from jewelry to large installations, captivating with
					its expressive designs and skilled craftsmanship..</p>
			</div>

			<div class="imgclass">
				<img src="https://iili.io/JK5TmkN.jpg" width="150px">
				<h3>Leaf art</h3>
				<p>Leaf art, a creative pursuit, transforms leaves into
					intricate designs, ranging from delicate jewelry to detailed
					sculptures, showcasing nature's beauty through skilled
					craftsmanship.</p>
			</div>

			<div class="imgclass">
				<img src="https://iili.io/JK5AOUx.jpg" width="150px">
				<h3>Collage Art</h3>
				<p>Collage art intricately combines diverse materials like
					paper, fabric, and photographs, crafting visually captivating
					compositions that blend various textures and forms.</p>
			</div>

			<div class="imgclass">
				<img src="https://iili.io/JK5RWep.jpg" width="150px">
				<h3>Mosaic Art</h3>
				<p>Mosaic art intricately arranges small pieces of glass, tile,
					or stone to create vibrant, intricate patterns and
					images,showcasing meticulous craftsmanship and creativity.</p>
			</div>
		</div>
	</div>

	<div class="backimg">
		<img src=https://iili.io/JKRDvu1.jpg alt="">
	</div>


	<div class="test_box">

		<input type="text" id="search_bar"
			placeholder="What do you like today???"> <i
			class="fa fa-search" id="famo"></i>
		</button>

		<p id="textfil">Filter by Price</p>


		<form method="GET"
			action="<%=request.getContextPath()%>GetPriceDeatils">
			<select id="priceby" name="price">

				<option value="1000">1000</option>
				<option value="2000">2000</option>
				<option value="3000">3000</option>
				<option value="4000">4000</option>
			</select>
		</form>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>


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
		<%
		}
		} else {
		%>
		<h2>Empty</h2>
		<%
		}
		%>



	</div>

	<script>
	console.log("hjgf");
	
	let optionvalue =  document.querySelector("#priceby");
	console.log(optionvalue.value);
	optionvalue.addEventListener("change", getPriceDetails);
	
	function getPriceDetails() {
		console.log("Triggered Function");
		let value= optionvalue.value;
		console.log(value);
		const url = "GetPriceDeatils";
		console.log(url);
		
		axios.get(
				url,
				{
					params: {
						searchValue: value,
						 
					}
				}
			)
			
			.then(response => {
				appendDiv(response.data);
				console.log(response.data);
			})
			.catch(error => {
				console.log(error);
			})
	}
	
	let detailsofprice = document.querySelector(".top");
	function appendDiv(details){
		console.log(details);
		console.log("append div function");
		detailsofprice.innerHTML="";
		details.forEach(e=>{
			detailsofprice.innerHTML+=`
				<div class="top2">
				<div class="main1">


					<div class="content">

						<a href="productDetails.jsp?id=\${e["id"]}"><img
							src="\${e["imageurl"]}" width=" 300px" alt=""></a>

						<div class="content1">
							<div class="content2">
								<h2>
									\${e["category"]}
								</h2>
								<p>
									By \${e["artistname"]}
									 
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
			`
		})
	}
	
	 
	</script>

	<script>
	
	 
	
    /**
	 * This script adds functionality to filter and display elements based on user input.
	 * It listens for keyup events on an input field with the id "search" and filters
	 * elements with the class "content" based on the entered search query.
	 *
	 * @param {Event} e - The event object representing the keyup event.
	 */
	 
	 
	 /*
	 const search = document.getElementById("search");
	 // Attach a "keyup" event listener to the search input
	 search.addEventListener("keyup", (e) => {
	     // Get the input value, convert it to lowercase for case-insensitive search
	     const words = e.target.value.toLowerCase();
	     // Get all elements with class "content" and iterate through them
	     const letter = document.querySelectorAll(".content");
	     letter.forEach((element) => {
	         // Get the text content of the third child element of each ".content" element,
	         // convert it to lowercase for case-insensitive comparison
	         const content = element.children[2].textContent.toLowerCase();
	         // Check if the input words are included in the content
	         if (content.includes(words)) {
	             // If yes, display the element by setting its style to "block"
	             element.style.display = "block";
	         } else {
	             // If not, hide the element by setting its style to "none"
	             element.style.display = "none";
	         }
	     });
	 });
	 */

	</script>
</body>
</html>