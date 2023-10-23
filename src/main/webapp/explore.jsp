<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="assets/css/explore.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer">
</head>

<body>

	<%@ include file="header.jsp"%>

	<!-- background_image -->
	<div class="ani">
		<h3>
			Shop our original product in <br> Our <br> Website
		</h3>
		<h3>this is hsfnskfj jnvfv vcjknfvejgklvbj kjbfdvkjbvbvf</h3>
		<h3>cvbkngbdbkbmtfevdcv kmbvfgkbt kmbrdfglkbv</h3>
	</div>
	<script>
    // Get all the h3 elements and store them in an array
const headings = document.querySelectorAll('.ani h3');

function showHeading(index) {
    // Add the "visible" class to the heading at the given index after a delay
    setTimeout(() => {
        headings[index].classList.add('visible');
    }, index * 3000); // Multiply index by 3000 milliseconds (3 seconds) for the delay
}

// Loop through each heading and show them one by one
headings.forEach((heading, index) => {
    showHeading(index);
});
</script>



	<div class="whole_c">
		<img src="https://iili.io/JKYL38B.jpg" width="1500px" alt=""> <img
			src="assets\images\explorehome2.jpg" width="1500px" alt=""> <img
			src="assets\images\exploreho3.jpg" width="1500px" alt="">
	</div>

	<script>
  // Get all the images and store them in an array
     const images = document.querySelectorAll('.whole_c img');
     let currentIndex = 0;

     function showImage(index) {
         // Hide all images
         images.forEach(img => img.style.display = 'none');
         // Show the image at the given index
         images[index].style.display = 'block';
     }

     function startSlideShow() {
         showImage(currentIndex);
         // Increment the index for the next image
         currentIndex++;
         // Reset the index if it exceeds the number of images
         if (currentIndex >= images.length) {
             currentIndex = 0;
         }
         // Call the function recursively after a specific interval (e.g., 2000 milliseconds or 2 seconds)
         setTimeout(startSlideShow, 3000); // Change 2000 to the desired interval in milliseconds
     }

     // Start the slideshow when the window loads
     window.onload = startSlideShow;

     </script>


	<!-- comment for header down background -->
	<div class="headerdown">

		<div class="headerdowndiv1">
			<h1>
				Shop museum grade art prints <br> from amazing artists.
			</h1>
			<br> <br>
			<p>
				Our artists create and upload their incredible artwork. You find the
				perfect piece. <br> We print on premium paper, custom frame
				using high quality materials, carefully <br> package and ship
				it to you. Everybody's happy.
			</p>
		</div>

		<div class="headerdowndiv2">

			<img src="assets/images/explorebackground.jpg" alt="">
		</div>
	</div>

	<!-- commenting for scroll side option -->

	<div class="slidesilder">

		<div class="slider">
			<a data-id="illustration"> <img src="assets/images/explore1.png"
				alt="">
			</a>
			<p>illustration</p>
		</div>

		<div class="slider">
			<a data-id="painting"> <img src="assets/images/explore2.jpg"
				alt="">
			</a>
			<p>painting</p>
		</div>

		<div class="slider">
			<a data-id="photography"> <img src="assets/images/explore3.jpg"
				alt="">
			</a>
			<p>Photography</p>
		</div>



		<div class="slider">
			<a data-id="Digital"> <img src="assets/images/explore5.jpg"
				width="220px" height="300px" alt="">
			</a>
			<p>Digital</p>
		</div>

		<div class="slider">
			<a data-id="realism"> <img
				src="assets/images/explore_realism.jpg" width="220px" height="300px"
				alt="">
			</a>
			<p>Realism</p>
		</div>

		<div class="slider">
			<a data-id="Photorealism"> <img
				src="assets/images/explore_photoreal.jpg" width="220px"
				height="300px" alt="">
			</a>
			<p>Photorealism</p>
		</div>

		<div class="slider">
			<a data-id="Pop art illustration"> <img
				src="assets/images/explore_pop.jpg" width="220px" height="300px"
				alt="">
			</a>
			<p>Pop art</p>
		</div>

		<div class="slider">
			<a data-id="ModernPainting"> <img
				src="assets/images/explore_modern.jpg" width="220px" height="300px"
				alt="">
			</a>
			<p>Modern Painting</p>
		</div>

		<div class="slider">
			<a data-id="Canva"> <img
				src="https://i.pinimg.com/564x/e8/0c/ff/e80cff424d67da306d40b2be8ee35f60.jpg"
				width="220px" height="300px" alt="">
			</a>
			<p>Canva</p>
		</div>


		<div class="slider">
			<a data-id="Oilpainting"> <img
				src="assets/images/explore_oil.jpg" width="220px" height="300px"
				alt="">
			</a>
			<p>Oil painting</p>
		</div>

		<div class="slider">
			<a data-id="sketch"> <img src="assets/images/exploresketch.jpg"
				width="250px" height="300px" alt="">
			</a>
			<p>Sketch</p>
		</div>

		<div class="slider">
			<a data-id="HyperRealism"> <img
				src="assets/images/explore_hyper.jpg" width="300px" height="300px"
				alt="">
			</a>
			<p>Hyper Realism</p>
		</div>

		<div class="slider">
			<a data-id="Sculpture"> <img src="assets/images/explore_scl.jpg"
				width="220px" height="300px" alt="">
			</a>
			<p>Sculpture</p>
		</div>


		<div class="slider">
			<a data-id="Watercolour"> <img
				src="https://i.pinimg.com/564x/92/c1/e4/92c1e4855a593e1b60645e9c8fa6e669.jpg"
				width="220px" height="300px" alt="">
			</a>
			<p>Water colour</p>
		</div>
	</div>

	<!--not  -->
	<div class="not1">
		<img src="assets/images/icons/sell.svg" alt=""> <br> <br>
		<h1>Interested In Selling Your Art?</h1>
		<br>
		<p>Opening a shop is free, fun and fast.</p>
		<br> <br> <a href="">Learn more</a>
	</div>


	<!-- not ends -->

	<!-- footer start-->

	<footer>
		<hr>
		<div class="foot">
			<div class="footer_one">
				<img src="assets/images/new_logo plain.png" width="130px"
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

	<!-- footer ends -->

	<script>
        //?name=dataset.id
        const a_tag = document.querySelectorAll(".slidesilder a")
        a_tag.forEach((obj) => {
        	let categoryName=obj.getAttribute("data-id").toUpperCase();
            obj.setAttribute("href", "ProductsByCategory?categoryName="+categoryName);
            console.log(obj.getAttribute("data-id"));

        })


         //search
         const search = document.getElementById("search1");
        search.addEventListener("keyup", (e) => {
            const words = e.target.value.toLowerCase();
            const letter = document.querySelectorAll(".slidesilder");
            letter.forEach((element) => {
                const content = element.children[1].textContent.toLowerCase();
                if (content.includes(words)) {
                    element.style.display = "block";
                } else {
                    element.style.display = "none";
                }
            });
        });
    </script>

</body>

</html>