<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>login</title>
<link rel="stylesheet" href="assets/css/login.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>

	<!-- setting background image -->

	<img src="assets/images/gif1.gif" id="img" width="150px" alt="">

	<div class="main">

		<div class="side_img">
			<img src="assets/images/Zan-removebg-preview.png" width="450px"
				height="300px" alt="">
		</div>

		<div class="backgrond_image">

			<div class="form_class">

				<div class="but_box">

					<div id="butn"></div>
					<button class="butn_1" type="button" id="butn_1">Register</button>
					<button class="butn_1" type="button" id="butn_2">Login</button>

				</div>

				<div class="icons">
					<img src="assets/images/gp.png" alt=""> <img
						src="assets/images/tw.png" alt=""> <img
						src="assets/images/insta.png" alt="">

				</div>



				<form id="login" class="input_group" method="post"
					action="<%=request.getContextPath()%>/RegisterServlet">
					<h4 id="space">
						Are you a Artist? <input type="radio" id="Artist" value="ARTIST"
							name="fav_language"> Are you a Buyer? <input type="radio"
							id="Buyer" value="BUYER" name="fav_language">

					</h4>
					<br> <input type="text" class="input_field" id="user_id"
						placeholder=" Create your User Name" name="user_id"
						pattern="[A-Za-z]{4,24}"
						title="usernmae  contain minimum 1 and maximum 24 character">

					<input type="email" class="input_field" id="email"
						placeholder="Enter your email" name="email" required> <input
						type="password" class="input_field" id="password"
						placeholder="Create your password" name="password" required
						pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n\s])(?=.*[A-Z])(?=.*[a-z]).*$"
						title="Your password must be at least 8 characters long, contain at least one digit or special character, one uppercase letter, and one lowercase letter, and must not contain dots or newline characters and white space character">


					<input type="password" class="input_field" id="password1"
						placeholder="Enter your password"
						pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n\s])(?=.*[A-Z])(?=.*[a-z]).*$"
						title="Your password must be at least 8 characters long, contain at least one digit or special character, one uppercase letter, and one lowercase letter, and must not contain dots or newline characters and white space character"
						required> <input type="tel" class="input_field"
						id="mobilenumber" placeholder="Enter your mobile number"
						pattern="[0-9]{10}" name="mobilenumber"
						title=" This box only have numbers" required> <br> �
					<br> <br>

					<button type="submit" class="submit_butn">Register</button>

				</form>

				<form id="register" class="input_group" action="LoginServlet"
					method="get">

					<input type="email" class="input_field" id="log_mail"
						name="log_mail" placeholder="User mail" required> <input
						type="password" class="input_field" name="passcode" id="passcode"
						placeholder="Enter password" required>

					<button class="submitbut" id="login_submit">
						login</a>
					</button>

				</form>

			</div>

		</div>
	</div>
	<script src="assets/js/main.js"></script>
	<script>
	
	
	
        const red = document.getElementById("login")
        const yellow = document.getElementById("register")
        const orange = document.getElementById("butn")
        const butn1 = document.getElementById("butn_1")
        const butn2 = document.getElementById("butn_2")

        butn2.addEventListener("click", (register) => {

            console.log("hbfjhbr")
            red.style.left = "-400px"
            yellow.style.left = "50px"
            orange.style.left = "110px"

            butn2.style.color = "white"
            butn1.style.color = "black"
        }
        )
        const butnlogin = document.getElementById("butn_1")
        butnlogin.addEventListener("click", () => {
            login();
        })

        function login() {
            console.log("hh")
            red.style.left = "50px"
            yellow.style.left = "450px"
            orange.style.left = "0px"
            butn1.style.color = "white"
            butn2.style.color = "black"

        }

        const formButton = document.getElementById("login")
        formButton.addEventListener("submit", (e) => {

            field();
         

        })
        // register page to create new account
        function field() {

            const user = document.getElementById("user_id").value;
            const email = document.getElementById("email").value;
            const pass = document.getElementById("password").value;
            const enterpass = document.getElementById("password1").value;

            const mobile = document.getElementById("mobilenumber").value;
         //   alert message for email or account created sucessfully
            const ret = {};

            ret.user = user,
                ret.email = email,
                ret.pass = pass,
                ret.enterpass = enterpass,
                ret.mobile = mobile,
                ret.about = "",
                ret.country = "",
                ret.gender = ""

            const command = JSON.parse(localStorage.getItem("users")) ?? [];
            let j = 0;

            for (let i = 0; i < command.length; i++) {
                if (command[i].email == email) {
                    j = 1;
                    break;

                }
            }

            if (j == 1) {
                alert("Email id already exists")
                // ret.preventDefault()
            }

            else if (pass !== enterpass) {
                alert("Your passcode is not matched")
            }
        
                command.push(ret);
                      
                red.style.left = "-400px"
                yellow.style.left = "50px"
                orange.style.left = "110px"
                butn2.style.color = "white"
                butn1.style.color = "black"

            

        }

        const submit_butn = document.getElementById("login_submit")
        const test = document.getElementById("test");

        // Declaring a function for login
      const formBtn = document.getElementById("register")
      formBtn.addEventListener("submit", (e) => {   
         done();
     })  

        function done() {
            const log_mail = document.getElementById("log_mail").value;
            const passcode = document.getElementById("passcode").value;

            
        }
    </script>

</body>

</html>