<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/css/explore_arts.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
        integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@800&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300&display=swap" rel="stylesheet">
</head>

<body>
    <!-- header -->

    <header>

        <div class="logo">
        <a href="../pages/home.jsp">
 <img src="assets/images/new_logo plain.png" width="150px" alt="no error">
</a>
             
        </div>

        <div class="input">
            <input type="text" name="search_bar" id="search" placeholder="What do you like today???">
 <i
                class="fa fa-search"></i> </button>
        </div>

        <div class="side1_nav">
            <ul>
                <li>
<a href="">Upload arts</a>
</li>

                <li>
 <img src="assets/images/profile_picture_user_icon_153847.png" width="30px" alt="no error">
</li>

            </ul>

        </div>

    </header>

    <hr>

    <!-- desgin for header -->

    <div class="lader">

        <div class="font">
            <h1>
Sell art  <br>
                from your <br>
                collection</h1>
           
            <h3>
With our global reach and art market expertise, <br>  our specialists will find the right buyer for your   work.
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

    <!-- javascript -->
    <script>
        // const done = [

        //     {
        //         sketch: "../asset/images/user/sketch1.jpg",
        //         id: "1",

        //     },
        //     {
        //         sketch: "../asset/images/user/sketch2.jpg",
        //         id: "2",
        //     },
        //     {
        //         sketch: "../asset/images/user/sketch3.jpg",
        //         id: "3",

        //     },
        //     {
        //         sketch: "../asset/images/user/sketch4.jpg",
        //         head: "",
        //         id: "4",
        //     },
        //     {
        //         sketch: "../asset/images/user/sketch5.jpg",

        //         id: "5",
        //     },
        //     {
        //         sketch: "../asset/images/user/sketch6.jpg",
        //         head: "",
        //         para: "",
        //         sold: "Sold by: Aravind ",
        //         size: "12*6 size non-Framed",
        //         id: "6",
        //     },
        //     {
        //         sketch: "../asset/images/user/sketch7.jpg",
        //         head: "",
        //         para: "",
        //         sold: "Sold by : Isac",
        //         size: "2*6 size non-Framed",
        //         id: "7",
        //     },
        //     {
        //         sketch: "../asset/images/user/sketch8.jpg",
        //         head: "",
        //         para: "",
        //         sold: "Sold by : Mega",
        //         size: "8*1 size non-Framed",
        //         id: "8",
        //     },
        //     {
        //         sketch: "../asset/images/user/sketch9.jpg",
        //         head: "",
        //         para: "",
        //         sold: "Sold by : parama",
        //         size: "2*6 size non-Framed",
        //         id: "9",
        //     },
        //     {
        //         sketch: "../asset/images/user/pro1.jpg",
        //         head: "",
        //         para: "",
        //         sold: "Sold by : Teffy",
        //         size: "8*0 size non-Framed",
        //         id: "10",
        //     },
        //     {
        //         sketch: "../asset/images/user/pro2.jpg",
        //         head: "",
        //         para: "",
        //         sold: "Sold by: Satheep",
        //         size: "4*6 size non-Framed",
        //         id: "11",
        //     },
        //     {
        //         sketch: "../asset/images/user/pro3.jpg",
        //         head: "",
        //         para: "",
        //         sold: "Sold by : Joel",
        //         size: "7*6 size non-Framed",
        //         id: "12",
        //     },
        //     {
        //         sketch: "../asset/images/user/pro4.jpg",
        //         head: "",
        //         para: "",
        //         sold: "Sold by : Kumar",
        //         size: "8*6 size non-Framed",
        //         id: "13",
        //     },
        //     {
        //         sketch: "../asset/images/user/pro5.jpg",
        //         head: "",
        //         para: "",
        //         sold: "Sold by : Muthu",
        //         size: "1*6 size non-Framed",
        //         id: "14",
        //     },
        //     {
        //         sketch: "../asset/images/user/pro6.jpg",
        //         head: "",
        //         para: "",
        //         sold: "Sold by : Akash",
        //         size: "4*6 size non-Framed",
        //         id: "15",
        //     },
        //     {
        //         sketch: "../asset/images/user/pro7.jpg",
        //         head: "",
        //         para: "",
        //         sold: "Sold by : Nithi",
        //         size: "1*6 size non-Framed",
        //         id: "16",
        //     },
        //     {
        //         sketch: "../asset/images/user/pro8.jpg",
        //         head: "",
        //         para: "",
        //         sold: "Sold by : Ramesh",
        //         size: "4*6 size non-Framed",
        //         id: "17",
        //     },
        //     {
        //         sketch: "../asset/images/user/pro9.jpg",
        //         head: "",
        //         para: "",
        //         sold: "Sold by : Ram muthu",
        //         size: "*6 size non-Framed",
        //         id: "18",
        //     },
        //     {
        //         sketch: "../asset/images/user/pro10.jpg",
        //         head: "",
        //         para: "",
        //         sold: "Sold by : Bharath",
        //         size: "*3 size non-Framed",
        //         id: "19",
        //     },
        //     {
        //         sketch: "../asset/images/user/pro11.jpg",
        //         head: "",
        //         para: "",
        //         sold: "Sold by : akil",
        //         size: "*9 size non-Framed",
        //         id: "20",
        //     },
        //     {
        //         sketch: "../asset/images/user/pro12.jpg",
        //         head: "",
        //         para: "",
        //         sold: "Sold by: Sasi",
        //         size: "*3 size non-Framed",
        //         id: "21",
        //     },
        //     {
        //         sketch: "../asset/images/user/pro13.jpg",
        //         head: "",
        //         para: "",
        //         sold: "Sold by Hema",
        //         size: "46 size non-Framed",
        //         id: "22",
        //     },
        //     {
        //         sketch: "../asset/images/user/pro14.jpg",
        //         head: "",
        //         para: "",
        //         sold: "Sold by : Lisa",
        //         size: "*16 size non-Framed",
        //         id: "23",
        //     }

        // ]

        // console.log(done)

        localStorage.setItem("typesofart", JSON.stringify([
            {
                img:
                    "https://iili.io/HUJjNZx.jpg",
                title_name:
                    "Dimitra Milan",

                artist_name:
                    "Joel",
                pr
                    :
                    "3000",
                size_by:
                    "6 x 9 ",
                descr:
                    " “I am still in galleries and plan to continue working with a few fantastic gallery owners, but I am taking the initiative to market directly and take ownership of my brand.",
                user_email: "bharuchan90@gmail.com",

                dataset: "painting"
            },
            {
                img:
                    "https://iili.io/HUJwjSt.jpg",
                title_name:
                    "Jimena Reno",

                artist_name:
                    "John",
                pr
                    :
                    "1000",
                size_by:
                    "5 x 9 ",
                descr:
                    "My favorite art",
                user_email: "bharuchan90@gmail.com",

                dataset: "painting"
            },
            {
                img:
                    "https://iili.io/HUJNMmu.jpg",
                title_name:
                    "Art sketch poses ",

                artist_name:
                    "Naresh",
                pr
                    :
                    "1000",
                size_by:
                    "8x 9 ",
                descr:
                    "Simple art drawings sketches simple drawing ideas drawing flower drawing cute drawing easy drawing art inspiration art sketch drawing poses art",

                user_email: "bharuchan90@gmail.com",

                dataset: "painting"
            },
            {
                img:
                    "https://iili.io/HUJN8kF.jpg",
                title_name:
                    "Maria",

                artist_name:
                    "Denny",
                pr
                    :
                    "9000",
                size_by:
                    "8x 9 ",
                descr:
                    "My favorite painting",

                user_email: "bharuchan90@gmail.com",

                dataset: "painting"
            },
            {
                img:
                    "https://iili.io/HUJNyQf.jpg",
                title_name:
                    "Cat Painting",

                artist_name:
                    "Gokul",
                pr
                    :
                    "1000",
                size_by:
                    "8x 9 ",
                descr:
                    "My favorite painting",

                user_email: "bharuchan90@gmail.com",

                dataset: "painting"
            },
            {
                img:
                    "https://iili.io/HUJOI4V.jpg",
                title_name:
                    "Dog Painting",

                artist_name:
                    "Gokul",
                pr
                    :
                    "1000",
                size_by:
                    "8x 9 ",
                descr:
                    "My favorite painting",

                user_email: "bharuchan90@gmail.com",

                dataset: "painting"
            },
            {
                img:
                    "https://iili.io/HUJOAYP.jpg",
                title_name:
                    "Eyesn on wall",

                artist_name:
                    "Gokul",
                pr
                    :
                    "1000",
                size_by:
                    "8x 9 ",
                descr:
                    "My favorite painting",

                user_email: "bharuchan90@gmail.com"
                ,

                dataset: "painting"
            },
            {
                img:
                    "https://iili.io/HUJOcZJ.jpg",
                title_name:
                    "Freaking girl",

                artist_name:
                    "Gokul",
                pr
                    :
                    "1000",
                size_by:
                    "8x 9 ",
                descr:
                    "My favorite painting",

                user_email: "bharuchan90@gmail.com",

                dataset: "painting"
            },
            {
                img:
                    "https://iili.io/HUJObcB.jpg",
                title_name:
                    "Hand merge",

                artist_name:
                    "Sasi",
                pr
                    :
                    "1000",
                size_by:
                    "8x 9 ",
                descr:
                    "My favorite painting",

                user_email: "bharuchan90@gmail.com",

                dataset: "painting"
            },

            // realism
            {
                img:
                    "https://iili.io/HUdwHzb.jpg",
                title_name:
                    "Figurative art",

                artist_name:
                    "James",
                pr
                    :
                    "5000",
                size_by:
                    "9x9 ",
                descr:
                    "Original Art Oil Painting, measuring: 36W x 40H x 1D cm, by: Matthew James Collins (Italy). Styles: Portraiture, Impressionism, Realism, Figurative, Fine Art",

                user_email: "bharuchan90@gmail.com",

                dataset: "realism"
            },
            {
                img:
                    "https://iili.io/HUdwcpn.jpg",
                title_name:
                    "Egg yolk",

                artist_name:
                    "James",
                pr
                    :
                    "2000",
                size_by:
                    "3x9 ",
                descr:
                    "creating the egg white and the yolk along with the shells.",

                user_email: "bharuchan90@gmail.com",

                dataset: "realism"
            },
            {
                img:
                    "https://iili.io/HUdwvQj.jpg",
                title_name:
                    "Elephant realism",

                artist_name:
                    "James",
                pr
                    :
                    "2000",
                size_by:
                    "3x9 ",
                descr:
                    "creating the egg white and the yolk along with the shells.",

                user_email: "bharuchan90@gmail.com",

                dataset: "realism"
            },
            {
                img:
                    "https://iili.io/HUdN3js.jpg",
                title_name:
                    "Tiny Lines",

                artist_name:
                    "James",
                pr
                    :
                    "5000",
                size_by:
                    "3x9 ",
                descr:
                    "Original ink and watercolor illustrations inspired by wild places and creatures",

                user_email: "bharuchan90@gmail.com",

                dataset: "realism"
            },
            {
                img:
                    "https://iili.io/HUdNI99.jpg",
                title_name:
                    "Bird Hybrids",

                artist_name:
                    "kingston",
                pr:
                    "2000",
                size_by:
                    "5x9 ",
                descr:
                    "It is difficult for us to believe that our beloved felines are merciless bird hunters.",

                user_email: "bharuchan90@gmail.com",

                dataset: "realism"
            },
            {
                img:
                    "https://iili.io/HUdNv9t.jpg",
                title_name:
                    "Weirdest Animal",

                artist_name:
                    "Joel",
                pr:
                    "1000",
                size_by:
                    "6x9 ",
                descr:
                    "Photo manipulation is the application of image editing techniques to photographs in order to create an illusion or deception through analog or digital means.",

                user_email: "bharuchan90@gmail.com",

                dataset: "realism"
            },
            {
                img:
                    "https://iili.io/HUdOCxa.jpg",
                title_name:
                    "Go away",

                artist_name:
                    "Madhu",
                pr:
                    "3000",
                size_by:
                    "6x9 ",
                descr:
                    "My favorite art",

                user_email: "bharuchan90@gmail.com",

                dataset: "realism"
            },
            {
                img:
                    "https://iili.io/HUdObdN.jpg",
                title_name:
                    "Yash Rocky",

                artist_name:
                    "Dharun",
                pr:
                    "2000",
                size_by:
                    "7x9 ",
                descr:
                    "Yash Rocky from the movie KGF Chapter 2 - Realistic Color Pencil Portrait drawing",

                user_email: "bharuchan90@gmail.com",

                dataset: "realism"
            },
            {
                img:
                    "https://iili.io/HUdexIe.jpg",
                title_name:
                    "Magic art",

                artist_name:
                    "Dharun",
                pr:
                    "2000",
                size_by:
                    "7x9 ",
                descr:
                    "My favorite art",

                user_email: "bharuchan90@gmail.com",

                dataset: "realism"
            },
            // illustation
            {
                img:
                    "https://iili.io/HUdg43b.jpg",
                title_name:
                    "Me Dream",

                artist_name:
                    "Balaji.s",
                pr:
                    "1000",
                size_by:
                    "7x9 ",
                descr:
                    "My favorite art",

                user_email: "bharuchan90@gmail.com",

                dataset: "illustration"
            },
            {
                img:
                    "https://iili.io/HUdgyFa.jpg",
                title_name:
                    "Conceptual",

                artist_name:
                    "Mark",
                pr:
                    "2000",
                size_by:
                    "7x9 ",
                descr:
                    "Mark Fredrickson is one of the finest and talented conceptual Artists from Tucson, Arizona",

                user_email: "bharuchan90@gmail.com",

                dataset: "illustration"
            },
            {
                img:
                    "https://iili.io/HUdr0Sj.jpg",
                title_name:
                    "Turma",

                artist_name:
                    "Mark",
                pr:
                    "2000",
                size_by:
                    "7x9 ",
                descr:
                    "Illustration that i did for MSP. Inspired by the Mauricio de Sousa's characters.",

                user_email: "bharuchan90@gmail.com",

                dataset: "illustration"
            },
            {
                img:
                    "https://iili.io/HUdiwIR.jpg",
                title_name:
                    "Cute girl in water",

                artist_name:
                    "Saran",
                pr:
                    "2000",
                size_by:
                    "7x9 ",
                descr:
                    "Dear you must in diet emergency",

                user_email: "bharuchan90@gmail.com",

                dataset: "illustration"
            },
            {
                img:
                    "https://iili.io/HUd4rkx.jpg",
                title_name:
                    "Cute girl",

                artist_name:
                    "Nithilan",
                pr:
                    "2000",
                size_by:
                    "7x9 ",
                descr:
                    "HD Girly Wallpaper Cute Wallpaper Girl",

                user_email: "bharuchan90@gmail.com",

                dataset: "illustration"
            },
            {
                img:
                    "https://iili.io/HUd6Lu4.jpg",
                title_name:
                    "Global Brands",

                artist_name:
                    "Santhanam",
                pr:
                    "2000",
                size_by:
                    "7x9 ",
                descr:
                    "Camel on desert",

                user_email: "bharuchan90@gmail.com",

                dataset: "illustration"
            },
            {
                img:
                    "https://iili.io/HUdPuNR.jpg",
                title_name:
                    "Inspiration feed",

                artist_name:
                    "Santhu",
                pr:
                    "1000",
                size_by:
                    "7x9 ",
                descr:
                    "Find the most inspiring illustrations, drawings, sketches, and paintings in this hand-picked collection",

                user_email: "bharuchan90@gmail.com",

                dataset: "illustration"
            },
            {
                img:
                    "https://iili.io/HUdP4WB.jpg",
                title_name:
                    "Humorous",

                artist_name:
                    "Santhu",
                pr:
                    "1000",
                size_by:
                    "7x9 ",
                descr:
                    "Find the most inspiring illustrations, drawings, sketches, and paintings in this hand-picked collection",

                user_email: "bharuchan90@gmail.com",

                dataset: "illustration"
            },
            {
                img:
                    "https://iili.io/HUdPpxp.jpg",
                title_name:
                    "Meal on board",

                artist_name:
                    "Ignacio",
                pr:
                    "4000",
                size_by:
                    "7x9 ",
                descr:
                    "This image is an interpretation in 3d of a drawing made by my friend and colleague Ignacio Güejes",

                user_email: "bharuchan90@gmail.com",

                dataset: "illustration"
            },
            // photography
            {
                img:
                    "https://iili.io/HUftw8l.jpg",
                title_name:
                    "Streets of asia",

                artist_name:
                    "Bharu",
                pr:
                    "1000",
                size_by:
                    "10x9 ",
                descr:
                    "I am a fine art photographer based in Dhaka, Bangladesh. For the past couple of months I have travelled to different streets in Bangladesh, India and Nepal. I love to explore narrow streets and back alleys in a city.",

                user_email: "bharuchan90@gmail.com",

                dataset: "photography"
            },
            {
                img:
                    "https://iili.io/HUfDxS4.jpg",
                title_name:
                    "Smoke street",

                artist_name:
                    "Sandeep",
                pr:
                    "1000",
                size_by:
                    "10x9 ",
                descr:
                    "A subreddit to share your street photography work and discuss the technique, gear and philosophies behind shooting street.",

                user_email: "bharuchan90@gmail.com",

                dataset: "photography"
            },
            {
                img:
                    "https://iili.io/HUfbaII.jpg",
                title_name:
                    "Man with pigeons",

                artist_name:
                    "Sandeep",
                pr:
                    "1000",
                size_by:
                    "10x9 ",
                descr:
                    "I love pigeons. This is photo",

                user_email: "bharuchan90@gmail.com",

                dataset: "photography"
            },
            {
                img:
                    "https://iili.io/HUfbPTB.jpg",
                title_name:
                    "Childhood joy",

                artist_name:
                    "Yogi",
                pr:
                    "1000",
                size_by:
                    "10x9 ",
                descr:
                    "The Joy of Childhood will always be a great remembrance even for the oldest of them all. Nothing to care about, so much to gather and share, arguably childhood remains the best stage of one's",

                user_email: "bharuchan90@gmail.com",

                dataset: "photography"
            },
            {
                img:
                    "https://iili.io/HUfmgPn.jpg",
                title_name:
                    "Munroe Island",

                artist_name:
                    "Prash",
                pr:
                    "500",
                size_by:
                    "10x9 ",
                descr:
                    "Munroe Island is a small island located at Kollam District in Kerala (Gods Own Country), India. It is formed by the backwaters of Ashtamudi Lake and Kallada River, this island is named after Colonel Munroe, the British Resident of erstwhile Travancore State. He is credited with having integrated several backwater regions by digging canals.",

                user_email: "bharuchan90@gmail.com",

                dataset: "photography"
            },
            {
                img:
                    "https://iili.io/HUq9zjp.jpg",
                title_name:
                    "Elephant blessing",

                artist_name:
                    "Sasi",
                pr:
                    "500",
                size_by:
                    "10x9 ",
                descr:
                    "Sri Meenakshi Temple, Madurai, Tamil Nadu, India View On Black",

                user_email: "bharuchan90@gmail.com",

                dataset: "photography"
            },

            // 3d arts
            {
                img:
                    "https://iili.io/HUBkIBS.jpg",
                title_name:
                    "Regular Pencil",

                artist_name:
                    "Nithilan",
                pr:
                    "500",
                size_by:
                    "10x9 ",
                descr:
                    "This Self-Taught Teenager Draws Mind-Bending 3D Art With Regular Pencils",

                user_email: "bharuchan90@gmail.com",

                dataset: "3D Arts"
            },
            {
                img:
                    "https://iili.io/HUBvdwx.jpg",
                title_name:
                    "Dog-3D Arts",

                artist_name:
                    "Suman",
                pr:
                    "500",
                size_by:
                    "10x9 ",
                descr:
                    "Exquisite art!!",

                user_email: "bharuchan90@gmail.com",

                dataset: "3D Arts"
            },
            
            {
                img:
                    "https://iili.io/HUBvGt4.jpg",
                title_name:
                    "Leaf-3D Arts",

                artist_name:
                    "Nithilan",
                pr:
                    "500",
                size_by:
                    "3x9 ",
                descr:
                    "Favorite one!!",

                user_email: "bharuchan90@gmail.com",

                dataset: "3D Arts"
            },
            {
                img:
                    "https://iili.io/HUBSeZx.jpg",
                title_name:
                     "3D Pencil",

                artist_name:
                    "Santhanam",
                pr:
                    "500",
                size_by:
                    "3x9 ",
                descr:
                    "3D Pencil Illustrations Express The Struggle Between My Job and My Passion",

                user_email: "bharuchan90@gmail.com",

                dataset: "3D Arts"
            },
            {
                img:
                    "https://iili.io/HUBSiua.jpg",
                title_name:
                     "3D Detail Art",

                artist_name:
                    "Visoth Kakvei",
                pr:
                    "500",
                size_by:
                    "3x9 ",
                descr:
                    "Cambodian artist Visoth Kakvei masterfully brings together symbolism and style, and no sketchbook has enough pages for his creativity.",

                user_email: "bharuchan90@gmail.com",

                dataset: "3D Arts"
            },
            {
                img:
                    "https://iili.io/HUBUH9n.jpg",
                title_name:
                     "3D Art",

                artist_name:
                    "Visoth",
                pr:
                    "500",
                size_by:
                    "3x9 ",
                descr:
                    "Prisma color pencils Art.",

                user_email: "bharuchan90@gmail.com",

                dataset: "3D Arts"
            },
            // Digital arts
            {
                img:
                    "https://iili.io/HUBU0HF.jpg",
                title_name:
                     "Girl in space",

                artist_name:
                    "Ramoh",
                pr:
                    "500",
                size_by:
                    "3x9 ",
                descr:
                    "Original Art Printing/3d/Digital Digital, measuring: 40W x 40H x 0.5D cm, by: Alena Ponch (). Styles: Conceptual, Abstract, Generative, Contemporary. Subject: People. Keywords: Girl, Girl Power, Astronaut, Space, Space Explorer, Planets, Girl Power Art. This Printing/3d/Digital Digital is one of a kind and once sold will no longer be available to purchase. Buy art at Saatchi Art.",

                user_email: "bharuchan90@gmail.com",

                dataset: "Digital"
            },
            {
                img:
                    "https://iili.io/HUBUbxj.jpg",
                title_name:
                     "Stunning Digital",

                artist_name:
                    "Fredrickson",
                pr:
                    "500",
                size_by:
                    "3x9 ",
                descr:
                    "Stunning Digital Illustrations and Art works by Mark Fredrickson - part 21",

                user_email: "bharuchan90@gmail.com",

                dataset: "Digital"
            },
            {
                img:
                    "https://iili.io/HUBgCsR.jpg",
                title_name:
                     "Stunning Digital",

                artist_name:
                    "Elena Masci",
                pr:
                    "500",
                size_by:
                    "3x9 ",
                descr:
                    "Surreal Digital Paintings by Elena Masci | Inspiration Grid",

                user_email: "bharuchan90@gmail.com",

                dataset: "Digital"
            },
            {
                img:
                    "https://iili.io/HUBgu5X.jpg",
                title_name:
                     "Stood Still Art",

                artist_name:
                    "Etsy",
                pr:
                    "500",
                size_by:
                    "3x9 ",
                descr:
                    "When Time Stood Still Art Print Beautiful Girl Polishing - Etsy",

                user_email: "bharuchan90@gmail.com",

                dataset: "Digital"
            },
            {
                img:
                    "https://iili.io/HUBg8dP.jpg",
                title_name:
                     "Thought-Provoking",

                artist_name:
                    "Jalee",
                pr:
                    "500",
                size_by:
                    "3x9 ",
                descr:
                    "Digital Artist Creates Thought-Provoking Illustrations That May Make You Look At Things Differently",

                user_email: "bharuchan90@gmail.com",

                dataset: "Digital"
            },
            {
                img:
                    "https://iili.io/HUBrqv9.jpg",
                title_name:
                     "Digital Arts",

                artist_name:
                    "Avil",
                pr:
                    "500",
                size_by:
                    "3x9 ",
                descr:
                    "Inspiring Digital Art and Illustrations by Professional Designers | Inspiration | Graphic Design Junction",

                user_email: "bharuchan90@gmail.com",

                dataset: "Digital"
            },
        //    photorealism
        {
                img:
                    "https://iili.io/HUzO7kX.jpg",
                title_name:
                     "Photo-realism",

                artist_name:
                    "Prasana",
                pr:
                    "200",
                size_by:
                    "10x9",
                descr:
                    "A selection of the most outstanding ones. We also included some photos of the creation process just to fully convince you these are not photograph",

                user_email: "bharuchan90@gmail.com",

                dataset: "Photorealism"
            },
            {
                img:
                    "https://iili.io/HUzex99.jpg",
                title_name:
                     "Tiger-realism",

                artist_name:
                    "Omar Ortiz",
                pr:
                    "200",
                size_by:
                    "10x9",
                descr:
                    "Oil Painting By Omar Ortiz Opens a new tabSince the ancient Greeks, realism has been aspired by Western art lovers, but during the late 1960s and 70s the popularity of highly-realistic drawings reached its peak. Thus, Photorealism and Hyperrealism were born. These perspective drawing genres are still popular, and some artists master their technique so successfully that it becomes hard to tell an oil painting or a pencil drawing from a photograph. Bored Panda collected some of the best examples of this cool art and made a stunning list for you to enjoy",

                user_email: "bharuchan90@gmail.com",

                dataset: "Photorealism"
            },
            {
                img:
                    "https://iili.io/HUzeUoG.jpg",
                title_name:
                     "Chandramuli",

                artist_name:
                    "Rajini",
                pr:
                    "200",
                size_by:
                    "10x9",
                descr:
                    "One Favorite art",

                user_email: "bharuchan90@gmail.com",

                dataset: "Photorealism"
            },
            {
                img:
                    "https://iili.io/HUzkCiv.jpg",
                title_name:
                     "Jesus-christ",

                artist_name:
                    "Bharath",
                pr:
                    "600",
                size_by:
                    "10x9",
                descr:
                    "Praise the lord",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Photorealism"
            },
            {
                img:
                    "https://iili.io/HUzkWbe.jpg",
                title_name:
                     "Kruger",

                artist_name:
                    "Bharathi",
                pr:
                    "600",
                size_by:
                    "10x9",
                descr:
                    "The Art of Sebastian Krüger; Opens a new tab Watch the magic happens... Now on Vimeo on demand She has left the building!. ENJOY the working process.",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Photorealism"
            },
            {
                img:
                    "https://iili.io/HUzkQgp.jpg",
                title_name:
                     "Chalk-Realism",

                artist_name:
                    "Bharathi",
                pr:
                    "600",
                size_by:
                    "10x9",
                descr:
                    "This is a chalk drawing, not a photo.",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Photorealism"
            },
        //   pop illuatration
        {
                img:
                    "https://iili.io/HUz8LHN.jpg",
                title_name:
                     "Colourfull-cat",

                artist_name:
                    "Saran",
                pr:
                    "600",
                size_by:
                    "10x9",
                descr:
                    "Premium Vector | Colorful cat isolated on white background. illustration.",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Pop art illustration"
            },
            {
                img:
                    "https://iili.io/HUzSGJp.jpg",
                title_name:
                     "Graphic-Design",

                artist_name:
                    "Orton",
                pr:
                    "700",
                size_by:
                    "10x9",
                descr:
                    "Amazing Pop Art Illustrations by Van Orton Design | Graphic Design Junction",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Pop art illustration"
            },
            {
                img:
                    "https://iili.io/HUzUK2R.jpg",
                title_name:
                     "Pop-Art-Girl",

                artist_name:
                    "Orton",
                pr:
                    "600",
                size_by:
                    "10x9",
                descr:
                    "Modern Street Art Motivation - ArtHunter",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Pop art illustration"
            },
            {
                img:
                    "https://iili.io/HUzUR24.jpg",
                title_name:
                     "Cinema-mart",

                artist_name:
                    "Mart",
                pr:
                    "600",
                size_by:
                    "10x9",
                descr:
                    "Modern Street Art",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Pop art illustration"
            },
            {
                img:
                    "https://iili.io/HUzUOj1.jpg",
                title_name:
                     "Man-unique-art",

                artist_name:
                    "Lina",
                pr:
                    "300",
                size_by:
                    "10x9",
                descr:
                    "Unique Illustrations by Lina Hsiao | Inspiration Grid",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Pop art illustration"
            },
            {
                img:
                    "https://iili.io/HUzUpa4.jpg",
                title_name:
                     "Harry",

                artist_name:
                    "sendra",
                pr:
                    "900",
                size_by:
                    "10x9",
                descr:
                    "wpap harry potter by sendra ilham mandala by hayamelan on DeviantArt",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Pop art illustration"
            },
            // modern
            {
                img:
                    "https://iili.io/HUz6RV9.jpg",
                title_name:
                     "Urban-forest",

                artist_name:
                    "sendra",
                pr:
                    "1200",
                size_by:
                    "10x9",
                descr:
                    "This is a great painting! for me this painting tells us that the forest turns to urban",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Modern Painting"
            },
            {
                img:
                    "https://iili.io/HUzPoqF.jpg",
                title_name:
                     "Joy-of-Reading",

                artist_name:
                    "Seman",
                pr:
                    "1200",
                size_by:
                    "10x9",
                descr:
                    "The most influential, beautiful, famous and evocative masterpiece paintings about books, libraries, reading, and writers.",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Modern Painting"
            },
            {
                img:
                    "https://iili.io/HUziXaa.jpg",
                title_name:
                     "Treasure Hunts",

                artist_name:
                    "Naresh",
                pr:
                    "700",
                size_by:
                    "10x9",
                descr:
                    "In the late 1970s, a jewel encrusted golden hare was buried in England, the location of which was hidden by a series of clues, concealed in a children’s book called Masquerade. The real-life treasured hunt obsessed the nation of Britain and ended in scandal when someone cheated, using insider knowledge obtained from an acquaintance of…",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Modern Painting"
            },
            {
                img:
                    "https://iili.io/HUzsFoB.jpg",
                title_name:
                     "Bee Eye",

                artist_name:
                    "Steffy",
                pr:
                    "300",
                size_by:
                    "5x9",
                descr:
                    "Bee Eye Tapestry | Bee",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Modern Painting"
            },
            {
                img:
                    "https://iili.io/HUzLTdu.jpg",
                title_name:
                     "Paris-love",

                artist_name:
                    " Guan Zeju",
                pr:
                    "300",
                size_by:
                    "5x9",
                descr:
                    "Realism  Modern art by Guan Zeju",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Modern Painting"
            },
            {
                img:
                    "https://iili.io/HUzLhIR.jpg",
                title_name:
                     "TAKE MY HAND.",

                artist_name:
                    " Guan",
                pr:
                    "300",
                size_by:
                    "5x9",
                descr:
                    "TAKE MY HAND. WE WILL WALK!",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Modern Painting"
            },

            // oil painting
            {
                img:
                    "https://iili.io/HUGXpP2.jpg",
                title_name:
                     "Street_Art",

                artist_name:
                    "Aravi",
                pr:
                    "1300",
                size_by:
                    "10 x 9",
                descr:
                    "Hand Painted Modern Abstract Streetscape Florence at Evening Knife Oil Painting on Canvas Handmade Wall Art Decorative Pictures https://my-artwork.com/product/hand-painted-modern-abstract-streetscape-florence-at-evening-knife-oil-painting-on-canvas-handmade-wall-art-decorative-pictures",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Oil painting"
            },
            {
                img:
                    "https://iili.io/HUGjxs4.jpg",
                title_name:
                     "Watercolor art",

                artist_name:
                    "Bravi",
                pr:
                    "1300",
                size_by:
                    "10 x 9",
                descr:
                    "Watercolor art landscape, Watercolor landscape paintings, Watercolor paintings nature",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Oil painting"
            },
            {
                img:
                    "https://iili.io/HUGjT12.jpg",
                title_name:
                     "Nature art",

                artist_name:
                    "Cravi",
                pr:
                    "300",
                size_by:
                    "10 x 9",
                descr:
                    "Beautiful original landscape oil painting on canvas signed ( Wallock.) | #1872016264",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Oil painting"
            },
            {
                img:
                    "https://iili.io/HUGjhkF.jpg",
                title_name:
                     "Art Throbs",

                artist_name:
                    "Eravi",
                pr:
                    "900",
                size_by:
                    "10 x 9",
                descr:
                    "At beautiful.bizarre we receive hundreds of submissions each week from talented artists from around the world who would like to see their work published in beautiful.bizarre art quarterly.",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Oil painting"
            },
            {
                img:
                    "https://iili.io/HUGj0Lx.jpg",
                title_name:
                     "Girl art",

                artist_name:
                    "Dravi",
                pr:
                    "300",
                size_by:
                    "10 x 9",
                descr:
                    "Beautiful original  oil painting on canvas signed ( Wallock.)",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Oil painting"
            },
            {
                img:
                    "https://iili.io/HUGjiIs.jpg",
                title_name:
                     "Women in Black",

                artist_name:
                    "Daniel",
                pr:
                    "300",
                size_by:
                    "10 x 9",
                descr:
                    "Fine art oil paintings - Daniel Gerhartz",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Oil painting"
            },
            // hyper_real
            {
                img:
                    "https://iili.io/HUGwWG4.jpg",
                title_name:
                     "Real_Hand",

                artist_name:
                    "Javier",
                pr:
                    "500",
                size_by:
                    "10 x 9",
                descr:
                    "Hyper Realistic Paintings by Javier Arizabalo",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Hyper Realism"
            },
            {
                img:
                    "https://iili.io/HUGwL91.jpg",
                title_name:
                     "Girl on Water",

                artist_name:
                    "Javier",
                pr:
                    "500",
                size_by:
                    "10 x 9",
                descr:
                    "Realistic Artworks That Are Hard to Believe Are Not Photographs",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Hyper Realism"
            },
            {
                img:
                    "https://iili.io/HUGwmMv.jpg",
                title_name:
                     "Man_Realism",

                artist_name:
                    "Bavier",
                pr:
                    "1500",
                size_by:
                    "7 x 9",
                descr:
                    "One of my newest obsessions in art is perhaps one of the oldest forms. Sometimes known as Hyper-Realism or Photo-Realism",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Hyper Realism"
            },
            {
                img:
                    "https://iili.io/HUGN3AX.jpg",
                title_name:
                     "Girl_Pro_Realism",

                artist_name:
                    "Fabiano",
                pr:
                    "1500",
                size_by:
                    "7 x 9",
                descr:
                    "Nope! These are not photographs! I was just as surprised to find out that these are actually incredibly realistic oil paintings done by 40-year-old Brazilian artist Fabiano Millani.",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Hyper Realism"
            },
            {
                img:
                    "https://iili.io/HUGN1UB.jpg",
                title_name:
                     "Eyes on you",

                artist_name:
                    "Fabiano",
                pr:
                    "1500",
                size_by:
                    "7 x 9",
                descr:
                    "My favorite realism",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Hyper Realism"
            },
            {
                img:
                    "https://iili.io/HUGNOfR.jpg",
                title_name:
                     "Mother Teresa",

                artist_name:
                    "Fabiano",
                pr:
                    "1500",
                size_by:
                    "7 x 9",
                descr:
                    "A drawing of a Roman Catholic nun, Mother Teresa Medium: Graphite pencils on sketching paper",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Hyper Realism"
            },
            // Sculpture
            {
                img:
                    "https://iili.io/HUW6SBp.jpg",
                title_name:
                     "land of nobody",

                artist_name:
                    "Aabiano",
                pr:
                    "1500",
                size_by:
                    "7 x 9",
                descr:
                    "Redbubble | Teepublic | Twitter | Designspiration | MAB",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Sculpture"
            },
            {
                img:
                    "https://iili.io/HUWPY6N.jpg",
                title_name:
                     "land of nobody",

                artist_name:
                    "Cabiano",
                pr:
                    "1300",
                size_by:
                    "7 x 9",
                descr:
                    "Ocean-Inspired Ceramic Sculptures Resemble Cresting Waves; Opens a new tabOcean-Inspired Ceramic Sculptures Resemble Cresting Waves",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Sculpture"
            },
            {
                img:
                    "https://iili.io/HUWPeS9.jpg",
                title_name:
                     "Angel",

                artist_name:
                    "Cabiano",
                pr:
                    "1800",
                size_by:
                    "7 x 9",
                descr:
                    "Ethereal Angel Sculpture Appears to Effortlessly Float Above the Ground",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Sculpture"
            },
            {
                img:
                    "https://iili.io/HUWPbDJ.jpg",
                title_name:
                     "Sculpture",

                artist_name:
                    "Biano",
                pr:
                    "1800",
                size_by:
                    "7 x 9",
                descr:
                    "Portrait Sculpture Gallery",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Sculpture"
            },
            {
                img:
                    "https://iili.io/HUWiXOg.jpg",
                title_name:
                     "Polycount Forum",

                artist_name:
                    "Biano",
                pr:
                    "1800",
                size_by:
                    "7 x 9",
                descr:
                    "The last studio I worked actually had almost as many females as males, granted there were only 5 of us, hah. Whitney Clayton, concept artist",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Sculpture"
            },
            {
                img:
                    "https://iili.io/HUWiOsR.jpg",
                title_name:
                     "Expectant Mother",

                artist_name:
                    "Biano",
                pr:
                    "1800",
                size_by:
                    "7 x 9",
                descr:
                    "Expectant Mother concept artist",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "Sculpture"
            },
            // sketch
            {
                img:
                    "https://iili.io/HUWLnF2.jpg",
                title_name:
                     "KGF",

                artist_name:
                    "Santhu",
                pr:
                    "1800",
                size_by:
                    "7 x 9",
                descr:
                    "KGF Chapter 2 Yash Pencil Sketch",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "sketch"
            },

            {
                img:
                    "https://iili.io/HUWLGAF.jpg",
                title_name:
                     "Master",

                artist_name:
                    "Santhu",
                pr:
                    "1500",
                size_by:
                    "7 x 9",
                descr:
                    "Master-Vijay-Art-by-ME",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "sketch"
            },
            {
                img:
                    "https://iili.io/HUWLLSS.jpg",
                title_name:
                     "Rolex",

                artist_name:
                    "Santhu",
                pr:
                    "1500",
                size_by:
                    "7 x 9",
                descr:
                    "Rolex-Suriya-Art-by-ME",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "sketch"
            },
            {
                img:
                    "https://iili.io/HUWLDNe.jpg",
                title_name:
                     "Premam",

                artist_name:
                    "Santhu",
                pr:
                    "1500",
                size_by:
                    "7 x 9",
                descr:
                    "Premam-Art-by-ME",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "sketch"
            },

            {
                img:
                    "https://iili.io/HUWQ2UB.jpg",
                title_name:
                     "Grand-Father",

                artist_name:
                    "Santhu",
                pr:
                    "1500",
                size_by:
                    "7 x 9",
                descr:
                    "Old-Age",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "sketch"
            },
            {
                img:
                    "https://iili.io/HUWQTUN.jpg",
                title_name:
                     "Krish",

                artist_name:
                    "Santhu",
                pr:
                    "1500",
                size_by:
                    "7 x 9",
                descr: 
                "Cute-Krishna",
                    
                user_email: "bharuchan90@gmail.com",

                dataset: "sketch"
            },



        ]))

        const painting_div = (JSON.parse(localStorage.getItem("typesofart")));

        const url = window.location.search; // ?name=Arun
        const urlParams = new URLSearchParams(url); // converting string into key-value pairs
        const storevalue = urlParams.get("title");

        const boat = document.createElement("div");
        boat.setAttribute("class", "top2");
        document.querySelector("body").append(boat);
        painting_div.find((e) => {
            if (e.dataset == storevalue) {
                // console.log(e)

                // main div
                duck = document.createElement("div");
                duck.setAttribute("class", "main1");
                boat.append(duck);

                // content div
                animal = document.createElement("div");
                animal.setAttribute("class", "content");
                duck.append(animal);

                // a tag

                lion = document.createElement("a");
                lion.setAttribute("href", `../pages/product.jsp?title=${  e.title_name}`);
                // lion.innerText="view page"
                animal.append(lion);

                // image placed in a tag
                animal_img = document.createElement("img");
                animal_img.setAttribute("src", e.img);
                // animal_img.src=done[i]["img"];
                // console.log(done[i]["img"])
                animal_img.setAttribute("alt", "noerror");
                lion.append(animal_img);

                // content1 div
                some_animal = document.createElement("div");
                some_animal.setAttribute("class", "content1");
                animal.append(some_animal);

                // content2
                some1_animal = document.createElement("div");
                some1_animal.setAttribute("class", "content2");
                some_animal.append(some1_animal);

                // h2 tag
                heading_animal = document.createElement("h2");
                heading_animal.innerText = e.title_name;
                some1_animal.append(heading_animal);

                // p tag
                para1_animal = document.createElement("h3");
                para1_animal.innerText = `By${  e.artist_name}`;
                some1_animal.append(para1_animal);

                // content3
                some2_animal = document.createElement("div");
                some2_animal.setAttribute("class", "content3");
                some_animal.append(some2_animal);

                // img
                image2_animal = document.createElement("img");
                image2_animal.setAttribute("src",  "../asset/images/likw-removebg-preview.png");
                image2_animal.setAttribute("width", "30px");
                image2_animal.setAttribute("alt", "no error");
                some2_animal.append(image2_animal);
            }
        })

        const anchor_buttons = document.querySelectorAll('.top2 a');
        //   console.log(anchor_buttons)
        anchor_buttons.forEach((e) => {
            e.addEventListener("click", (el) => {
                localStorage.setItem("clicked", "explore")
            })
        })

       const head = document.getElementById("hello")
           head.innerText = storevalue;
           console.log(storevalue)
    </script>
</body>

</html>