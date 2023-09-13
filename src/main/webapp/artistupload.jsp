<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="assets/css/artistupload.css">
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
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Courgette&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@700&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="assets/css/notify.css">
<script
	src="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.js">
	
</script>
</head>

<body>

	<!-- Add product Alert -->

	<%
	String addProductSuccess = (String) request.getAttribute("addTaskSuccess");
	String addProductError = (String) request.getAttribute("addTaskError");
	%>


	<%
	if (addProductError != null) {
	%>
	<script>
		    let addTaskError = "<%=addProductError%>";
		    Notify.error(addTaskError);
		</script>
	<%
	}
	%>

	<%
	if (addProductSuccess != null) {
	%>
	<script>
	    	let addProductSuccess = "<%=addProductSuccess%>";
			Notify.success(addProductSuccess);
		</script>
	<%
	}
	%>
	</script>

	<header>

		<div class="logo">
			<img src="https://iili.io/J9n1EPe.png" width="150px" alt="no error">
		</div>

		<div class="input">
			<input type="text" name="search_bar" id="search"
				placeholder="What do you like today???"> <i
				class="fa fa-search"></i>
			</button>
		</div>

		<div class="side_nav">
			<ul>
				<!-- <li><a href="">Become a seller</a></li> -->
				<li><a href="../pages/home.html">Home</a></li>
				<span>
					<button>
						<a href="../pages/categories.html">Shop our product</a>
					</button>
				</span>
				<li><a href="../account.html"> <img
						src="https://iili.io/J9nMvi7.png" width="30px" alt="no error">
				</a></li>

			</ul>

		</div>

	</header>

	<!-- main -->
	<p>Home &#62; &#62; Artist Login &#62;&#62; Upload your Arts</p>
	<div class="fullbox">
		<form id="addProductForm" action="./AddProductServlet" method="post">

			<h3 id="headig">Art Work Detail</h3>

			<p>
				Select Art Work to Upload [Crop image so only the art shows (no
				frame, mat, other objects)] <i id="star"
					class="fa-solid fa-star-of-life"></i>
			</p>
			<br>

			<hr>

			<div class="dis">

				<div class="main">
					<img src="https://iili.io/J9nMQWB.png" width="500px" alt="">

				</div>
				<div class="was">
					<div class="main1">

						<label>Enter URL <input type="url" name="producturl"
							id="url" value="https://iili.io/J9M544e.jpg" required> <!-- fileimg -->
						</label> <br> <img id="display"> <br> Product Description:</label>
						<input type="text" id="ptDescription" name="productDescription"
							value="Eyes are the beatiful things">
					</div>

					<div class="empty">

						<div class="content0">

							<div class="content1">
								<p>
									Title <i id="star" class="fa-solid fa-star-of-life"></i>
								</p>
								<input id="ptName" name="productName" value="BirdEye"  required>
								<!-- name-->
								<p>
									Sold by<i id="star" class="fa-solid fa-star-of-life"></i>
								</p>
								<input type="text" id="arttName" value="Santhubliss" name="artistName">
								<!-- sold -->

								<div class="content2">

									<p>
										Width x height(mm) <i id="star"
											class="fa-solid fa-star-of-life"></i>
									</p>
									<input type="text" id="ptWidth" name="producttWidth"> <input
										type="text" id="ptHeight" name="producttHeight">

								</div>

							</div>
						</div>

						<div class="empty1">

							<div class="content1">
								<p>
									Art Work<i id="star" class="fa-solid fa-star-of-life"></i>
								</p>
								<!-- <select name="Art" id="Ctry" name="Category" required> 

                                    <option>Canvas</option>
                                    <option>Water colour</option>
                                    <option>Realism</option>
                                    <option> Hyper Realism</option>
                                    <option>3D Arts</option>
                                    <option>mandana</option>
                                </select> -->

								<input id="Ctry" name="Category" value="realism">




							</div>

						</div>

					</div>

					<div class="bottom0">

						<div class="bottom">

							<div class="bottom1">
								<p>Show this artwork with my picture profile on artist
									listing page:</p>

							</div>

							<div class="bottom2">
								<input type="checkbox" id="show_art">

							</div>
						</div>

						<p id="perc">
							Price (in &#x20b9; ) <i id="star"
								class="fa-solid fa-star-of-life"></i>
						</p>
						<input type=" text" id="ptPrice" name="producttPrice"
							placeholder="&#x20b9;" pattern="[0-9]{4}">

					</div>
				</div>
			</div>

			<div class="atlast">

				<div class="atlast2">
					<button type="submit">UPLOAD</button>
				</div>

			</div>

		</form>
	</div>

	<script>
        //click=101;submit=105;change=103
        const img_file = document.querySelector("#file_img");
        const display_img = document.querySelector("#display");

        // let arr;

        function upload() {
            // let img_details = JSON.parse(localStorage.getItem("upload"));
            // console.log(img_details)

            const name_check = JSON.parse(localStorage.getItem("upload"))
            const titles = document.getElementById("title").value;
            let check = 0;
            if (JSON.parse(localStorage.getItem("upload"))) {

                name_check.find(e => {
                    if (e.title_name == titles) {
                        alert(`${titles  } already exist`)
                        check = 1
                    }

                })
            }

            if (check === 0) {
                const obb_product = {}

                const product = JSON.parse(localStorage.getItem("upload")) ?? []
                const active_user = JSON.parse(localStorage.getItem("profile"))
                active_user.email
                const get_email = active_user.email

                const arr = document.getElementById("file_img").value;
                const title = document.getElementById("title").value;
                const sold = document.getElementById("sold").value;
                const size = document.getElementById("size").value;
                const des = document.getElementById("des").value;
                const prize = document.getElementById("price").value
                const Art_title = document.getElementById("Art_title").value;
                const show_art = document.getElementById("show_art").checked;

                obb_product.status = true
                obb_product.img = arr,
                    obb_product.title_name = title,
                    obb_product.artist_name = sold,
                    obb_product.size_by = size,
                    obb_product.descr = des,
                    obb_product.pr = prize,
                    obb_product.Art_title = Art_title,
                    obb_product.user_email = get_email,
                    obb_product.name="category"

                console.log(obb_product.user_email = get_email)

                if (show_art) {
                    // alert("loading");

                    product.push(obb_product)
                    localStorage.setItem("upload", JSON.stringify(product));
                    // window.location.href = "../pages/categories.html"
                    window.location.href = "../pages/upload.html"
                }
                else {
                    alert("input button click hack you")
                }
            }

        }

 

        const form_conrol = document.getElementById("form_control");
        form_conrol.addEventListener("submit", e => {
            upload()
            e.preventDefault()
        })
        


</body>

</html>