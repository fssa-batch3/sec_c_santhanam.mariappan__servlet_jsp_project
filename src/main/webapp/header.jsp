
<link
	href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300&display=swap"
	rel="stylesheet">
<header>


	<img src=https://iili.io/HyXnQpf.png width="150px" alt="no error">


	<!-- hr line  -->
	<div id="class_div">
		<a id="a_tag" href="home.jsp"> <i class="fa fa-home"
			style="font-size: 25px"></i>
		<h3 id="fa_icon">Home</h3>
		</a>
		
		 <a id="a_tag" href= "account.jsp"> <i class='fa fa-address-card'
			style='font-size: 25px'></i>
		<h3 id="fa_icon">Profile</h3></a> 
		
		
		<a id="a_tag" href="Check"><i
			class="fa fa-shopping-cart" style="font-size: 25px"></i>
		<h3 id="fa_icon">Buynow</h3></a>
		
		 <a id="a_tag" href="explore.jsp"><i
			class="fa fa-cart-plus" style="font-size: 25px"></i>
		<h3 id="fa_icon">Explore</h3></a>
		
		<a id="a_tag" href="OrderHistroy"> <i class="fa fa-bell-o" style="font-size:25px"></i>
		<h3 id="fa_icon">Orders</h3></a>
		
	 
		<button id="none" value="submit">
			<i class="fa fa-power-off" style="font-size: 25px"></i>
			<h3 id="fa_icon">Logout</h3>
		</button>
	 
	</div>
</header>


<div id="con_popup">

	<div id="popup_cont">

		<h3>Thanks for vist our website!!!</h3>
		<img src="https://iili.io/Jd7kLnR.png" width="300px" alt="">
		<h4>Are you really want to logout?</h4>		 
	 <a href="LogoutServlet"><button>Yes!</button></a>  
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

