<!DOCTYPE html>
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

	<%
      User user=(User) session.getAttribute("User"); 
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
	<form id="forms" action="ProfileUpdate" method="post">
	<div class="back_ground">

		<div class="back_ground2">

			 

				<div class="display2">
					<!-- <i class="fa-solid fa-plus" style="color: aliceblue;"></i>/ -->

					<h2>Profile</h2>
					<br> <img src="assets/images/profile.png" alt="no error"
						id="image_profile" width="300px"> <br>

					<!-- <input type="file" name="file" id="file"> -->

					<br> <br>

					<div class="btn">

						<button id="save">Save</button>
						<br> <br>
						<button id="edit">Edit</button>
					</div>
					<div class="log">
						<!-- <button  >Logout</button> -->
						<i class="fa-solid fa-right-from-bracket" onclick="logout()"
							style="color: #ffffff;"></i>
					</div>


				</div>
		</div>

		<div class="display">


			<div class="none">
				<div class="display1">

					<h3>User name:</h3>
					<input type="text" name="firstname" id="username"
						value="<%=user.getUserName()%>" disabled
						pattern="^[A-Za-z0-9_]{1,32}$"
						title="This contain have (Upper case && Lowercase)"> <br>
					<br> <br>
					<h3>Email</h3>
					<input type="email" name="email" id="email"
						value="<%=user.getEmail()%>" disabled> <br> <br>
					<br>

					<h3>Phone number</h3>

					<input type="tel" name="phone" id="phone" disabled required
						pattern="[0-9]{10}" value="<%=user.getPhoneNumber()%>"
						title="This contain have Number only"> <br> <br>
					<br>

					<h3>Role</h3>
					<input type="role" name="role" id="role" disabled required
						pattern="[0-9]{10}"
						value="<%=user.getRole().getValue().toString()%>"
						title="This contain have Number only">

					</form>

					<!-- <h3>Zip-code</h3> <input type="text" name="zip-code" id="zip-code" pattern="{0-6}" disabled -->

					<br> <br> <br>


				</div>

				<div class="about">
					<%
					String name = (String) session.getAttribute("User");
					String role = (String) session.getAttribute("role");

					out.print("Hello " + name);
					if (name != null && role.equals("ARTIST")) {
					%>
					<div class="dic">

						<div class="dic1">
							<!-- <a href="asset/css/artist1.html"><h1>Orders</h1></a> -->
							<h2 id="hi_or">Orders</h2>
							<a href="artist1.jsp"> <img
								src="assets/images/order_logo.png" width="80px" alt="">
							</a>
						</div>
						<!-- <button id="your_art"> <a href="/asset/css/Rewardsandarts.html"> Your Uploaded arts</a> -->
						<div class="dic2">
							<h2>Your Arts</h2>
							<a href="Rewardsandarts.jsp"> <img
								src="assets/images/art_lo.png" width="80px" alt="">
							</a>
						</div>
					</div>
					<!-- </button> -->

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

	<script>
        const form = document.getElementById("save")
        form.addEventListener("click", function (e) {
            e.preventDefault();
            save();
        })

        let arr = JSON.parse(localStorage.getItem("profile"));

        document.getElementById("username").value = arr["user"];
        document.getElementById("email").value = arr["email"];
        document.getElementById("phone").value = arr["mobile"];
        document.getElementById("gender").value = arr["gender"];
        document.getElementById("des").value = arr["about"];
        document.getElementById("country").value = arr["country"]

        let Edit = document.getElementById("edit")
        console.log(Edit)
        Edit.addEventListener("click", (e) => {
            e.preventDefault();
            // alert("djidjid")
            console.log("clicked")
            document.getElementById("username").removeAttribute("disabled");
            document.getElementById("gender").removeAttribute("disabled");
            document.getElementById("phone").removeAttribute("disabled");
            document.getElementById("country").removeAttribute("disabled");
            document.getElementById("des").removeAttribute("disabled");

        })

        function save() {

            document.getElementById("username").setAttribute("disabled", "");
            document.getElementById("gender").setAttribute("disabled", "");
            document.getElementById("phone").setAttribute("disabled", "");
            document.getElementById("country").setAttribute("disabled", "");
            document.getElementById("des").setAttribute("disabled", "");

            let newdata = JSON.parse(localStorage.getItem("users"));

            const useremail = document.getElementById("email").value;
            const phone = document.getElementById("phone").value;
            let username = document.getElementById("username").value
            let gender = document.getElementById("gender").value
            let country = document.getElementById("country").value
            let about = document.getElementById("des").value

            newdata.find(userobj => {
                if (userobj["email"] == useremail) {
                    userobj["user"] = username;
                    userobj["mobile"] = phone;
                    userobj["about"] = about;
                    userobj["gender"] = gender;
                    userobj["country"] = country

                    console.log(userobj["country"])

                    localStorage.setItem("users", JSON.stringify(newdata))
                    localStorage.setItem("profile", JSON.stringify(userobj))

                }

            })

        }

        function logout() {
            let del = JSON.parse(localStorage.getItem("profile"));

            let dele = delete del
            localStorage.setItem("profile", JSON.stringify(dele))
            window.location.href = "index.jsp"


        let fi = document.getElementById("file")

        let img = document.getElementById("image_profile")

        //this function for change profile picture
        file.addEventListener('change', function () {
            const choosedFile = this.files[0];
            if (choosedFile) {
                const reader = new FileReader();
                reader.addEventListener('load', function () {
                    img.setAttribute('src', reader.result);
                    //setting image src in localstorage
                    const profile = JSON.parse(localStorage.getItem("profile"))
                    profile["profile_picture"] = reader.result
                    localStorage.setItem("profile", JSON.stringify(profile))

                });
                reader.readAsDataURL(choosedFile);

            }
            const profile = JSON.parse(localStorage.getItem("profile"))
            img.setAttribute("src", profile["profile_picture"])

        })

    </script>

</body>

</html>