<!DOCTYPE html>
<%@page import="com.fssa.zanarts.dao.UserDao"%>
<%@page import="com.fssa.zanarts.service.UserService"%>
<%@page import="com.fssa.zanarts.logger.Logger"%>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Account page</title>
<link rel="stylesheet" href="assets/css/account.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jost&display=swap"
	rel="stylesheet">
<%@ page import="com.fssa.zanarts.model.*"%>

 
</head>

<body>
      <%@ include file="commonSession.jsp" %>
	<%
	String email = (String) request.getSession(false).getAttribute("User");
	User user = UserDao.getUserByEmail(email);
	System.out.println(user);
	%>

	<!-- header -->

	<header>



		<div class="logo">
			<img src="assets/images/new_logo plain.png" width="100px"
				alt="no error">
		</div>



		<div class="input">
			<input type="text" name="search_bar" id="search"
				placeholder="What do you like today???">
			</button>
		</div>



		<div class="side1_nav">
			<ul>
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
			<li><a href="home.jsp">Home |</a></li>
			<li><a href="categories.jsp">Products |</a></li>
			<li><a href="findservice.jsp">Find Service </a></li>

		</ul>
	</div>
	<span id="hr2">
		<hr>
	</span>

	<!-- main -->

	<!--  display flex div  -->

	<div class="back_ground">

		<div class="back_ground2">



			<div class="display2">


				<h2>Profile</h2>
				<br> <img src="assets/images/profile.png" alt="no error"
					id="image_profile" width="300px"> <br> <br> <br>

				<div class="btn">

					<br> <br>
					<button id="edit_id">Edit</button>
				</div>
				<div class="log">
					<form action="<%=request.getContextPath()%>/LogoutServlet"
						method="get">
						<button>Logout</button>
					</form>
				</div>


			</div>
		</div>



		<div class="display">


			<div class="none">

				<form id="forms" action="ProfileUpdate" method="post">
					<button id="update_buttton">update</button>
					<div class="display1">

						<h3>User name:</h3>
						<input type="text" name="firstname" id="username"
							value="<%=user.getUserName()%>" pattern="^[A-Za-z0-9_]{1,32}$"
							title="This contain have (Upper case && Lowercase)" disabled>
						<br> <br> <br>
						<h3>Email</h3>
						<input type="email" name="email" id="email"
							value="<%=user.getEmail()%>" disabled> <br> <br>
						<br>

						<h3>Phone number</h3>

						<input type="tel" name="phone" id="phone" required
							pattern="[0-9]{10}" value="<%=user.getPhoneNumber()%>"
							title="This contain have Number only" disabled> <br>
						<br> <br>

						<h3>Role</h3>
						<input type="role" name="role" id="role" disabled required
							pattern="[0-9]{10}"
							value="<%=user.getRole().getValue().toString()%>"
							title="This contain have Number only">
				</form>
				<br> <br> <br>



				<div class="about">
					<%
					String name = (String) request.getSession(false).getAttribute("userName");
					String role = (String) request.getSession(false).getAttribute("role");

					if (role.equals("ARTIST")) {
					%>
					<div class="dic">
						<div class="dic1">

							<h2 id="hi_or">Orders</h2>
							<a href="artist1.jsp"> <img
								src="assets/images/order_logo.png" width="80px" alt="">
							</a>
						</div>

						<div class="dic2">
							<h2>Your Arts</h2>
							<a href="<%=request.getContextPath()%>/ArtistProduct"> <img
								src="assets/images/art_lo.png" width="80px" alt="">
							</a>
						</div>
					</div>
				</div>
				<%
				} else {
				%>
				<h2>Empty</h2>
				<%
				}
				%>
			</div>
		</div>

	</div>

	<div class="con_dev">

		<div class="con_dev1">
			<img src="assets/images/pro_bg.png" width="300px" alt="">
		</div>

		<div class="text">
			<h3>
				Publish creative art, craft, writings and other creatives to get
				visibility ofart enthusiast <br> across the worldWe are
				specialsts in Art. Creativity and fun are our ingredients for
				awesome work
			</h3>
		</div>
	</div>

	<script src="<%=request.getContextPath()%>/assets/js/profile.js"></script>
</body>

</html>