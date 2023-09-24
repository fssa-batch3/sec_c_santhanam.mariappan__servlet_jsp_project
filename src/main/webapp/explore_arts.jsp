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
</head>

<body>
	<!-- header -->
	<%
	List<Product> productList = (List<Product>) request.getAttribute("productList");
	%>
	<header>

		<div class="logo">
			<a href="../pages/home.jsp"> <img
				src="assets/images/new_logo plain.png" width="150px" alt="no error">
			</a>

		</div>

		<div class="input">
			<input type="text" name="search_bar" id="search"
				placeholder="What do you like today???"> <i
				class="fa fa-search"></i>
			</button>
		</div>

		<div class="side1_nav">
			<ul>
				<li><a href="">Upload arts</a></li>

				<li><img
					src="assets/images/profile_picture_user_icon_153847.png"
					width="30px" alt="no error"></li>

			</ul>

		</div>

	</header>

	<hr>

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
						<img src="../asset/images/likw-removebg-preview.png" width="30px"
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