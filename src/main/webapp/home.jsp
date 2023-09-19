<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
<link rel="stylesheet" type="text/css" href="./assets/css/homepage.css">
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
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@800&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Raleway&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer">
<link
	href="https://fonts.googleapis.com/css2?family=Castoro+Titling&display=swap"
	rel="stylesheet">

</head>
<body>


	<div class="hero">
		<video autoplay muted loop id="myVideo">
			<source src=./assets/videos/blue.mp4>
		</video>
		<h1>THE SECRET TO CREATIVITY</h1>
		<p>
			<a href="#dummy">Here</a> <span>&darr;</span>
		</p>
	</div>
	<!-- end video -->

	<!-- top of the website  -->
	<!-- start top divsion -->
	<div class="top">

		<div class="head1">
			<img src=https://iili.io/HyWWlUu.png width="200px" alt="">

		</div>
		
		
		<h3 id="emailid" style="color: white"><%=session.getAttribute("userEmail") %></h3>
		
	</div>

	<div class="nav">

		<div class="nav1">
			<ul>
				<li><a href="explore.jsp">Explore</a></li>

				<li><a href="<%=request.getContextPath()%>/account.jsp">Profile</a></li>

				<form action="Check" method="GET">
					<button type="submit" id="but_ion" value="submit">Get All
						Products</button>
				</form>
				<li><a href="findservice.jsp">Find service</a></li>

			</ul>

		</div>
	</div>


	<!-- new division starts -->
	<div class="new">
		<!-- <h1>What's New</h1> -->
	</div>
	<!-- new divsion end   -->
	<br>
	<br>

	<!-- dummy -->
	<div id="dummy">
		<!-- product display -->
		<div class="user"></div>

		<!-- upload arts -->

		<div class="upload">
			<div class="upload_text">
				<h1>
					Upload your first <span>art </span> here!
				</h1>
				<br> <br> <a href="artistupload.jsp"> <img
					src="https://iili.io/J9nlAsn.png" width="100px"
					alt="">
				</a> <br> <br>

			</div>

			<div class="upload_vid">
				<video autoplay muted loop id="my_upload">
					<source src="./assets/videos/home@2.mp4" type="video/mp4">
				</video>
			</div>
		</div>

		<hr>

		<!-- working  content  -->
		<div class="after">
			<h1>How it Works?</h1>
			<hr>
			<br>
			<p>Empowering Artists & Creative Industry</p>
		</div>

		<div class="work">

			<div class="division">

				<h3>
					SIGN UP FOR FREE <br> ENRICH YOUR PROFILE
				</h3>
				<p>
					Register or Sign up for free with us. <br> Publish creative
					art, craft, writings <br> and other creatives to get
					visibility of<br>art enthusiast across the world.
				</p>
			</div>

			<div class="division">
				<img src="https://iili.io/J9nlbLX.png" width="500px" alt="">
			</div>

		</div>

		<!-- card -->
		<div class="container">
			<div class="card card0">
				<div class="border">
					<h3>Al Pacino</h3>
					<p>hi im santhanam</p>

				</div>
			</div>
			<div class="card card1">
				<div class="border">
					<h3>Ben Stiller</h3>

				</div>
			</div>
			<div class="card card2">
				<div class="border">
					<h3>Patrick Stewart</h3>

				</div>
			</div>
		</div>


		<!-- about us content  -->
		<main class="main-grid">
			<div class="head">
				<h1 class="page-title">About us</h1>
				<p class="subtitle">We are specialsts in Art. Creativity and fun
					are our ingredients for awesome work.</p>
			</div>
			<img class="main-image" src="https://iili.io/J9n1EPe.png">

			<div class="main-text">
				<h2 class="section-title">We're really great guys</h2>
				<p>F Arts and Desgin is a professional network built for the
					creative industry that empowers individual artists, institutes and
					businesses to showcase their creative portfolio, buy / sell
					creative products through marketplace, offer custom trainings or
					services, look for jobs or hire creative professionals, participate
					in contests and earn through royalty / rewards.</p>
				<br>
				<p>As an art enthusiast you can socialize with and appreciate
					creative artists, buy creative products or art supplies, find
					trainers near you, get custom services or custom printed home
					merchandise and read creative writings.</p>

				<div class="last_div">
					<h2 class="section-title sub">We can do all sorts of great
						stuff</h2>
					<p>
						Our vision is to bring in all creative personas and art
						enthusiasts to one <br> platform where we facilitate them to
						socialize and grow with name, fame & revenue.
					</p>
					<br>
					<p>If you are a creative persona or an art lover, download our
						mobile app and sign up .</p>
				</div>
			</div>

		</main>

		<!-- End of abot us content -->

		<footer>
			<hr>
			<div class="foot">
				<div class="footer_one">
					<img src=https://iili.io/J9n1EPe.png width="130px"
						alt="no error">
					<p>Privacy | Terms of Service</p>
					<p>Zanarts international Ltd 2023</p>
				</div>

				<div class="footer_zone2">
					<br> <i class="fa-brands fa-facebook-f"></i> <i
						class="fa-brands fa-twitter"></i> <i class="fa-brands fa-slack"></i>
					<i class="fa-brands fa-pinterest"></i> <i
						class="fa-brands fa-google"></i>
				</div>
			</div>
		</footer>
</body>
</html>