<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Oder history</title>
    <link rel="stylesheet" href="assets/css/order.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
        integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Red+Hat+Display&display=swap" rel="stylesheet">

</head>

<body>
    <!-- header -->

    <header>

        <div class="logo">
            <img src="assets/images/new_logo plain.png" width="150px" alt="no error">
        </div>

        <div class="input">
            <input type="text" name="search_bar" id="search" placeholder="What do you like today???">
            <i class="fa fa-search"></i> </button>
        </div>

        <div class="side1_nav">
            <ul>
                <li>
                    <a href="">upload</a>
                </li>
                <li>
                    <a href="">profile</a>
                </li>

            </ul>

        </div>

    </header>
    <!-- hr line  -->
    <span id="hr1">

        <hr>
    </span>

    <div class="header_prt1">
        <ul>
            <br>
            <li>
                <a href="/pages/home.jsp">Home |</a>
            </li>
            <li>
                <a href="/pages/categories.jsp">Products |</a>
            </li>
            <li>
                <a href="/pages/findservice.jsp">Find Service </a>
            </li>
            <br>

        </ul>
    </div>
    <span id="hr2">
        <hr>
    </span>

    <h2 id="request">Requests & Orders</h2>
    <!-- <main>

        <img src="../images/about1.jpg" width="100px" alt="">
        <h3 id="name_image">Realism eye</h3>
       
        <h3 id="artist_name">
 Dharun <br>
 Address:15 A p.s.v.k South street , <br>
            Tirunelveli</h3>

        <h4>Delhi</h4>

        <p id="qual">Quantity:1</p>
        

        <div class="middle">
            <p>Paid Gpay RS: 2000</p>
        </div>

        <div class="other">
            <form action="" id="approve">
                <button id="accept">Done</button>

            </form>
        </div>

    </main> -->

</body>

<script src="https://smtpjs.com/v3/smtp.js">
</script>

<script>    const artist_email = JSON.parse(localStorage.getItem("profile"))
    const artist_email_acc = artist_email.email

    const product_email = JSON.parse(localStorage.getItem("product_details"))
    const filter_data = product_email.filter((datas) => datas.person_product_email == artist_email_acc)
     
    console.log(filter_data)

    if (filter_data == null) {

    }
    else {

        for (let i = 0; i < filter_data.length; i++) {
            document.querySelector("body").innerHTML +=
                `<main>
        
        <img src=${filter_data[i].product_image} width="110px">
        <h3 id="name_image">${filter_data[i].product_title}</h3>
        
        <h3 id="artist_name"> ${filter_data[i].user_first} <br> ${filter_data[i].Product_billing_address}</h3>
        <h4>${filter_data[i].user_state}</h4>
        <p id="qual">Quantity:${filter_data[i].product_quatity} Date:${filter_data[i].order_date}</p>
        
        <div class="middle">

        <p>Paid ${filter_data[i].product_sub_total}</p>
       
    </div>

        <div class="other">
             <form  id="approve">
                <button data-id=${filter_data[i].requested_user_email} id="accept">Done</button>
             
             </form>
        </div>

    </main> `
        }
    }

    const email_send = document.querySelectorAll("#accept");

    email_send.forEach((el)=>{
        el.addEventListener("click", e => {
        e.preventDefault();
    //  console.log(e.target.dataset.id)
        // alert("Buyer will recieve Your Email")

        // Email.send({
        //     Host: "smtp.elasticemail.com",
        //     Username: "bharuu90@gmail.com",
        //     Password: "F5AF1592782CEDC418852B71C9B8DA562506",
        //     To: e.target.dataset.id,
        //     From: "bharuu90@gmail.com",
        //     Subject: "sucess",
        //     Body: "Hi santhanam, Your ordered xxxx from Zanarts on 12/04/2003. Will be received on within 10 days to Address:15/A p.sv.k south street,Tirunlveli"
        // }).then(
        //     message => alert(message)
        // );
        // console.log(e.target.dataset.id)

    e.target.style.display="none"

    })
    })
    
</script>

</html>