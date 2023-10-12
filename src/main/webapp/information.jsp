<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="assets/css/information.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap"
	rel="stylesheet">



<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
</head>

<body>
	<!-- 
    <header>
        <img src="../asset/images/logo1.png" width="150px" alt="">
        <p>Cart &#62; Information &#62; payment</p>
    </header> -->

	<!-- main -->

	<form id="form">
		<div class="full">
			<div class="half">
				<img src="https://iili.io/JJGUp87.png" width="550px" alt="">
			</div>

			<!-- <a href="../pages/buyer.html">Order Histroy </a> -->
			<div class="main">

				<div class="dummy">

					<div class="dummy1">
						<!-- <img src="../asset/images/new_logo plain.png" width="100px" alt=""> -->
						<span>
							<p>Cart &#62; Information &#62; payment</p>
						</span>

						<p>Contact Information</p>

						<!-- <input type="text" id="text" placeholder="Email">
            <br> -->
						<input type="checkbox" id="box"> Email with me new and
						offers
					</div>

					<div class="dummy2">
						<p>Shipping Address</p>
						<select name="country" id="country" value="Tirunelveli" required>


							<option value="">--Select District--</option>
							<option value="Ariyalur">Ariyalur</option>
							<option value="Chennai">Chennai</option>
							<option value="Coimbatore">Coimbatore</option>
							<option value="Cuddalore">Cuddalore</option>
							<option value="Dharmapuri">Dharmapuri</option>
							<option value="Dindigul">Dindigul</option>
							<option value="Erode">Erode</option>
							<option value="Kallakurichi">Kallakurichi</option>
							<option value="Kanchipuram">Kanchipuram</option>
							<option value="Kanyakumari">Kanyakumari</option>
							<option value="Karur">Karur</option>
							<option value="Krishnagiri">Krishnagiri</option>
							<option value="Madurai">Madurai</option>
							<option value="Mayiladuthurai">Mayiladuthurai</option>
							<option value="Nagapattinam">Nagapattinam</option>
							<option value="Namakkal">Namakkal</option>
							<option value="Nilgiris">Nilgiris</option>
							<option value="Perambalur">Perambalur</option>
							<option value="Pudukkottai">Pudukkottai</option>
							<option value="Ramanathapuram">Ramanathapuram</option>
							<option value="Salem">Salem</option>
							<option value="Sivaganga">Sivaganga</option>
							<option value="Tenkasi">Tenkasi</option>
							<option value="Thanjavur">Thanjavur</option>
							<option value="Theni">Theni</option>
							<option value="Thoothukudi">Thoothukudi</option>
							<option value="Tiruchirappalli">Tiruchirappalli</option>
							<option value="Tirunelveli">Tirunelveli</option>
							<option value="Tirupattur">Tirupattur</option>
							<option value="Tiruppur">Tiruppur</option>
							<option value="Tiruvallur">Tiruvallur</option>
							<option value="Tiruvannamalai">Tiruvannamalai</option>
							<option value="Tiruvarur">Tiruvarur</option>
							<option value="Vellore">Vellore</option>
							<option value="Viluppuram">Viluppuram</option>
							<option value="Virudhunagar">Virudhunagar</option>
						</select>


						<div class="dummy3">
							<div class="dummy4">
								<input type="text" placeholder="Frist name" id="frist_name"
									value="Isac" required pattern=^[a-zA-Z]{3,20}$
									title="the input field  should contains only alphabetic characters (both upper and lower case) and has a length between 3 and 20 characters.">
							</div>
							<div class="dummy5">
								<input type="text" placeholder="Last name" value="Deva"
									id="last_name" required pattern=^[a-zA-Z]{3,20}$
									title="the input field  should contains only alphabetic characters (both upper and lower case) and has a length between 3 and 20 characters.">
							</div>
						</div>

						<br> <input type="text" id="address"
							value="15/A P.S.V.K South street,Pettai" placeholder="Address"
							required> <br>

					</div>

					<div class="dummy6">
						<div class="dummy7">
							<!-- <input type="text" id="pink" placeholder="city" required> -->
							<select name="country" id="pink" required>
								<option>Select</option>
								<option value="">City</option>
								<option value="">Town</option>
								<option value="">Village</option>
							</select>

						</div>

						<div class="dummy8">
							<select name="state" id="state">
								<option value="0" label="select your state..."
									selected="selected">select your state</option>
								<option>Tamilnadu</option>
								<!-- <option>Delhi</option>
                            <option>Kerala</option>
                            <option>pune</option>
                            <option>Gujarat</option>
                             -->
							</select>
						</div>

						<div class="dummy9">
							<input type="text" id="pincode" placeholder="Pin code"
								value="627004" required pattern="[0-9]{6}"
								title=" This box only have numbers">
						</div>
					</div>

					<input type="text" id="ph_num" placeholder="phone"
						value="909529766" required pattern="[0-9]{10}"
						title=" This box only have numbers"> <br> <input
						type="checkbox" id="box"> Save this Information for Next
					time <br>
					<div class="tag">
						<div class="tag1">
							<a href="../pages/cart.html"> &#60; Return to Cart</a>
						</div>

						<div class="tag2">
							<button id="continue" onclick="Con()" type="submit">Place
								Order</button>
						</div>
					</div>

				</div>

			</div>
		</div>
	</form>





	<!--  -->

	<div id="whole_div">
		<section ng-app="payment" class="payment">
			<div class="card-container">
				<div class="card" ng-class="{flipped: flipped}">
					<div class="card__front">
						<span class="card__number">0000 0000 0000 0000</span> <span
							class="card__expiration-date">cardExpirationMonth 00 |00</span> <br>
						<span class="card__owner">Card Name******</span> <br> <br>
						<br> <span class="card__chip"></span>
					</div>
					<div class="card__back">
						<span class="card__verification-value"> 000</span> <span
							class="card__bar"></span>
					</div>
				</div>
			</div>
			<form class="payment__form">
				<h1 class="payment__form__title">Payment</h1>
				<p class="payment__form__description">Fill the form with your
					credit card information.</p>
				<label class="payment__form__label" for="cardNumber"> Card
					number: </label> <input class="payment__form__input" id="cardNumber"
					type="text" maxlength="16" ng-model="cardNumber" /> <label
					class="payment__form__label" for="cardOwner"> Name on card:
				</label> <input class="payment__form__input" id="cardOwner" type="text"
					ng-model="cardOwner" /> <label class="payment__form__label"
					for="cardExpirationMonth"> Expiration Date: </label> <input
					class="payment__form__input--inline" type="tel"
					id="cardExpirationMonth" ng-model="cardExpirationMonth"
					maxlength="2" /> / <input class="payment__form__input--inline"
					type="tel" id="cardExpirationYear" ng-model="cardExpirationYear"
					maxlength="2" /> <label class="payment__form__label"
					for="cardVerificationValue">CVV:</label> <input
					class="payment__form__input--inline" ng-blur="flipped=false"
					ng-focus="flipped=true" ng-model="cardVerificationValue" type="tel"
					maxlength="3">
				<div class="payment__form__button-container">

					<a class="payment__form__button" href="order.jsp">Submit</a>

				</div>
			</form>
		</section>
	</div>


	<script>
		function Con() {

			console.log("sucexs")
			whole_div.style.display = "block"
			form.style.filter = "blur(6px)"

		}
	</script>

</body>

</html>