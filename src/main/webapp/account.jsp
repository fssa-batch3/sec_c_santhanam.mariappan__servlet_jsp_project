<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.fssa.zanarts.dao.UserDao"%>

<%@page import="com.fssa.zanarts.logger.Logger"%>
<%@ page import="com.fssa.zanarts.model.User"%>
<!DOCTYPE html>
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



</head>

<body>
	<%@ include file="commonSession.jsp"%>
	<%
	String email = (String) request.getSession(false).getAttribute("User");

	System.out.println(email + "locate");
	User user = UserDao.getUserByEmail(email);
	System.out.println(user + "locate");
	%>

	<!-- header -->
	<%@ include file="header.jsp"%>



	<!-- hr line  -->




	<!-- main -->

	<!--  display flex div  -->
	<div class="about">
		<%
		String name = (String) request.getSession(false).getAttribute("userName");
		String role = (String) request.getSession(false).getAttribute("role");

		if (role.equals("ARTIST")) {
		%>

		<div class="dic1">



			<a href="artist1.jsp"> <img src="assets/images/order_logo.png"
				width="80px" alt="">
			</a>
		</div>

		<div class="dic2">

			<a href="<%=request.getContextPath()%>/ArtistProduct"> <img
				src="assets/images/art_lo.png" width="80px" alt="">
			</a>
		</div>

	</div>
	<%
	} else {
	%>
	<h2>Empty</h2>
	<%
	}
	%>


	<div class="container">

		<div class="front_whole">
			<div class="profile_pic_all">
				<img src="https://iili.io/JJ5QKtR.png" width="300px">
			</div>


			<div class="butn_dis">
				<button id="edit_id">
					<i class="fa fa-pencil-square-o" style="font-size: 32px"></i>
					<h5 class="h5">Edit</h5>
				</button>


				<form action="<%=request.getContextPath()%>/LogoutServlet"
					method="get">
					<button id="edit_id">
						<i class="fa fa-sign-out" style="font-size: 36px"></i>
						<h5 class="h5">Logout</h5>
					</button>
			</div>
			</form>
		</div>



		<div classs="whole_two">

			<form id="forms" action="./ProfileUpdate" method="post">

				<button id="update_buttton" type="submit">update</button>
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
					title="This contain have Number only" disabled> <br> <br>

				<h3>Role</h3>
				<input type="role" name="role" id="role" disabled required
					value="<%=user.getRole().getValue().toString()%>"
					title="This contain have Number only">

			</form>
		</div>




		<script src="<%=request.getContextPath()%>/assets/js/profile.js"></script>
</body>

</html>