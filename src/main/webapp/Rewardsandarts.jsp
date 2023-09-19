<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.fssa.zanarts.model.*"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/css/artist_pro.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
        integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer">
</head>

<body>

    <header>

        <div class="logo">
            <img src="assets/images/new_logo plain.png" width="150px" alt="no error">
        </div>

        <div class="input">
            <input type="text" name="search_bar" id="search" placeholder="What do you like today???">
 <i
                class="fa fa-search"></i>
        </div>

        <div class="side1_nav">
            <ul>

            </ul>

        </div>

    </header>
    <!-- hr line  -->
    <span id="hr1">
        <br>
        <hr>
        <br>
    </span>

    <div class="header_prt1">
        <ul>
            <li>
<a href="/pages/home.jsp">Home |</a>
</li>
            <li>
<a href="/pages/categories.jsp">Products |</a>
</li>
            <li>
<a href="findservice.jsp">Find Service </a>
</li>

        </ul>
    </div>
    <span id="hr2">
        <br>
        <hr>
    </span>

    <!-- background_image -->

    <!-- main tag for whole content -->
    <div class="container">
        <h2>Your Uploaded art</h2>
        
        <ul class="cards">
        <%
		List<Product> productList = (List<Product>) request.getAttribute("productList");
		if (productList != null) {
			for (Product ele : productList) {
		%>
            <li class="card">
                <div>
                    <img class="round" src="<%=ele.getImageurl()%>" alt="user" />
                    <h3 class="card-title" id="card-title">isac</h3>
                    <div class="card-content">
                        <p>"<%=ele.getProductDescription()%>"</p>
                    </div>
                </div>
                <div class="buttons">
                    <button class="primary"><a href="productDetails.jsp?id=<%=ele.getId()%>">
                        Edit
                        </a>
                    </button>
                    <button class="primary ghost">
                        Delete
                    </button>
                </div>
                </li> 
                 </form>
        <%
		}
		} else {
		%>
		<h2>Empty</h2>
		<%
		}
		%> 
        </ul>
    </div>

    <!-- pop up  -->
    <div class="input_box" id="input_box">
        <i class="fa-solid fa-xmark" id="close" style="color: #fc0303;"></i>
        <form id="formbtn" action="">

            <!-- <input type="text" name="title_name" id="title_name"> -->
            <h1 id="title_name1"></h1>
            <br>
            <h3>Descrpiton:</h3>
            <textarea rows="10" cols="50" name="comment" form="usrform" id="des"
                placeholder="Add your description in maximum 20 character" required></textarea>
            <br>
            <h3> Sold By:</h3>
            <input type="text" name="sold_by" id="sold_by">
            <br>
            <h3> Price:</h3>
            <input type="text" name="price" id="price">

            <br>
            <h3>Width and height(mm)</h3>

            <input type="text" name="width" id="width">
             <br><br>
            <button type="submit" id="savebtn">Save</button>

       
    </div>

    <script>        // forloop

        const profile_page = JSON.parse(localStorage.getItem("upload"))

        let showedProduct;
        showedProduct = profile_page.filter((data) => {
    if (data.status == true) {
        return true
    }
    
        return false
    
})
        const container = document.createElement("div");
        container.setAttribute("class", "container");

        const h2 = document.createElement("h2");
        h2.setAttribute("id", "h2_tag");
        h2.innerText = "Your Uploaded art"
        container.append(h2);

        const uli = document.createElement("ul");
        uli.setAttribute("class", "cards");
        console.log(uli);
        const ul = document.querySelector(".cards")
       
        const request_email_arr=JSON.parse(localStorage.getItem("profile"));
         let user_mail=request_email_arr["email"];

         console.log(user_mail)
        // console.log(showedProduct,"ytrfd");
        for (let i = 0; i < showedProduct.length; i++) {
            if(showedProduct[i].user_email==user_mail){

            ul.innerHTML += `<li class="card">
                <div class="image_card">
                    <img class="round" src=${showedProduct[i].img} width="200px" alt="user" />
                    <h3  id="card-title">
                        ${showedProduct[i].title_name}
                        </h3>
                    <div class="card-content">
                        <p>Rs:  ${showedProduct[i].pr}</p>
                    </div>
                </div>
                <div class="buttons">
                    <button value="${showedProduct[i].title_name}" class="primary">
                        Edit
                    </button>
                    <button value="${showedProduct[i].title_name}"class="primary_ghost">      
                        Delete
                    </button>
                </div>
                </li>`
            }

        }
        // let li = document.createElement("li");
        // li.setAttribute("class", "card")
        // uli.append(li);

        // let empty_div = document.createElement("div");
        // li.append(empty_div);

        // let image = document.querySelector("img");
        // image.setAttribute("class", "round")
        // image.setAttribute("src", showedProduct[i]["img"]);
        // image.setAttribute("alt", "Image loading");
        // empty_div.append(image);

        // let card_title = document.createElement("h3");
        // card_title.setAttribute("id", "card-title");
        // card_title.innerText = showedProduct[i]["title_name"]
        // empty_div.append(card_title);

        // let card_content = document.createElement("div");
        // card_content.setAttribute("class", "card-content")
        // empty_div.append(card_content);

        // let para = document.createElement("p");
        // para.innerText = showedProduct[i]["Art_title"];
        // card_content.append(para);

        // let div_button = document.createElement("div");
        // div_button.setAttribute("class", "buttons")
        // li.append(div_button);

        // let button = document.createElement("button");
        // button.setAttribute("class", "primary");
        // button.setAttribute("value",showedProduct[i]["title_name"])
        // button.innerText = "Edit"
        // div_button.append(button);

        // let button1 = document.createElement("button");
        // button1.setAttribute("class", "primary_ghost");
        // button1.setAttribute("value",showedProduct[i]["title_name"]);
        // button1.innerText = "Delete"
        // div_button.append(button1);
        // container.append(uli);
        // document.querySelector("body").append(container);

        const input_box = document.getElementsByClassName("input_box")

        console.log(input_box)

        const card_name = document.getElementById("card-title").innerText
        console.log(card_name)
        // console.log( profile_page[0]["title_name"])

        //view
        const des = document.getElementById("des");
        const sold_by = document.getElementById("sold_by");
        const price = document.getElementById("price");
        const width = document.getElementById("width");

        const savebtn = document.getElementById("savebtn")
        const uploadproducts = JSON.parse(localStorage.getItem("upload"))
        // uploadproducts.find((data)=>{

        // })
        let saveButton;

        const Edit = document.querySelectorAll(".primary");

        Edit.forEach(btn => {

            let buttonValue;
            buttonValue = btn.value
            btn.addEventListener("click", (e) => {
                // console.log("jihgvfg");

                profile_page.find(obj => {
                    // console.log(obj["title_name"])
                    // console.log(card_name)
                    // console.log("fal", card_name, obj["title_name"].trim());

                    if (obj.title_name.trim() == card_name) {
                        const head = document.getElementById("title_name1")
                        head.innerText = card_name
                        // console.log("sure");

                        input_box[0].style.display = "block"
                         
                        // body.style.filter = "blur(6px)"
                    }
                })
                    // view
                    for (let i = 0; i < uploadproducts.length; i++) {

                        if (buttonValue == uploadproducts[i].title_name) {

                            sold_by.value = uploadproducts[i].artist_name;
                            des.value = uploadproducts[i].descr;
                            price.value = uploadproducts[i].pr;
                            width.value = uploadproducts[i].size_by;
                            savebtn.value = uploadproducts[i].title_name
                        }
                    }
               
            })
        })

        savebtn.addEventListener(("click"), () => {
            const Savedbtn = savebtn.value;
            // alert(Savedbtn)

            for (let i = 0; i < uploadproducts.length; i++) {

                if (Savedbtn == uploadproducts[i].title_name) {
                    uploadproducts[i].artist_name = sold_by.value;
                    uploadproducts[i].descr = des.value;
                    uploadproducts[i].pr = price.value;
                    uploadproducts[i].size_by = width.value;

                    localStorage.setItem("upload", JSON.stringify(uploadproducts))

                }
            }

        })

        const close_tab = document.getElementById("close");
        close_tab.addEventListener("click", e => {

            input_box[0].style.display = "none";

        })

        // delete 

        const deletedd = document.querySelectorAll(".primary_ghost");

        deletedd.forEach((e, index) => {
            e.addEventListener("click", () => {
                // alert("ok")
                console.log("hiiii")

                const deletevalue = e.value
                uploadproducts.find((data) => {
                    console.log(deletevalue, data.title_name, deletevalue.length, data.title_name.length, deletevalue == data.title_name);

                    if (deletevalue == data.title_name) {
                        data.status = false
                        console.log("hi")
                        // alert("ok")

                    }

                    localStorage.setItem("upload", JSON.stringify(uploadproducts))
                })

            })
        })

        //search feature

        const search = document.getElementById("search");
        search.addEventListener("keyup", (e) => {
            const words = e.target.value.toLowerCase();
            const letter = document.querySelectorAll(".image_card");
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