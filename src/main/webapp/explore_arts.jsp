<!DOCTYPE html>
<%@page import="com.fssa.zanarts.model.Product"%>
<%@page import="java.util.List"%>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="assets/css/explore_arts.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@800&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300&display=swap"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300&display=swap"
	rel="stylesheet">

</head>

<body>
	<!-- header -->
	<%
	List<Product> productList = (List<Product>) request.getAttribute("productList");
	%>  
<header>

	 
		<img src=https://iili.io/HyXnQpf.png width="150px" alt="no error">
 
 
<!-- hr line  -->
<div id="class_div"> 
 <a id="a_tag" href=""> <i class="fa fa-home" style="font-size:25px" ></i><h3 id="fa_icon">Home</h3> </a>
 <a  id="a_tag"href=""> <i class='fa fa-address-card' style='font-size:25px'></i><h3 id="fa_icon">Profile</h3></a>
 <a id="a_tag" href=""><i class="fa fa-shopping-cart" style="font-size:25px"></i><h3 id="fa_icon">Buynow</h3></a>
 <a  id="a_tag"href=""><i class="fa fa-cart-plus" style="font-size:25px"></i><h3 id="fa_icon">Explore</h3></a>
 <button id="none" value="submit"> <i class="fa fa-power-off" style="font-size:25px"></i><h3 id="fa_icon">Logout</h3></button>
</div>
</header>


<div id="con_popup">
 
<div id="popup_cont">
    
	<h3>Thanks for vist our website!!!</h3>
	<img src="https://iili.io/Jd7kLnR.png" width="300px" alt="">
	<h4>Are you really want to logout?</h4>
	<button>Yes!</button>
	<button id="stay">Stay here</button>

</div>

</div>


<script>


	// Function to open the popup

	let openPopUpBtns = document.getElementById('none');
    openPopUpBtns.addEventListener('click', function() {
        // Show the popup when the button is clicked
	 
        document.getElementById('con_popup').style.display = 'block';
		document.body.classList.add('blur-background');
        console.log("success");
    });
 
   //close

 let close = document.getElementById('stay');

 close.addEventListener('click', function() {
        // Show the popup when the button is clicked
        document.getElementById('con_popup').style.display = 'none';
        console.log("success1");
    });
 
</script>

	<!-- desgin for header -->

	<div class="lader">

		<div class="font">
			<h1>
				Sell art <br> from your <br> collection
			</h1>

			<h3>
				With our global reach and art market expertise, <br> our
				specialists will find the right buyer for your work.
			</h3>
			<br>
			<button>
				<a href="artist.jsp">Start selling</a>
			</button>
		</div>

		<div class="img_div">
			<img src="assets/images/5218-removebg-preview.png" alt="">
		</div>
	</div>

	<hr id="hr_tag">
	<br>
	<h1 id="hello">Painting</h1>

	<div class="top2">

		<%
		for (Product product : productList) {
		%>
		<div class="main1">
			<div class="content">
				<!-- a tag -->
				<a href="./productDetails.jsp?id=<%=product.getId()%>"> <!-- image placed in a tag -->
					<img src="<%=product.getImageurl()%>" alt="noerror">
				</a>

				<!-- content1 div -->
				<div class="content1">
					<!-- content2 -->
					<div class="content2">
						<!-- h2 tag -->
						<h2><%=product.getname()%></h2>
						<!-- p tag -->
						<h3>
							By
							<%=product.getArtistname()%></h3>
					</div>

					<!-- content3 -->
					<div class="content3">
						<!-- img -->
						<img src="assets/images/likw-removebg-preview.png" width="30px"
							alt="no error">
					</div>
				</div>
			</div>
		</div>
		<%
		}
		%>
	</div>

</body>

</html>