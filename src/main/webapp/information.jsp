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
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">



    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
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
                <img src="../asset/images/infor,m.png" width="550px" alt="">
            </div>

            <!-- <a href="../pages/buyer.html">Order Histroy </a> -->
            <div class="main">

                <div class="dummy">

                    <div class="dummy1">
                        <!-- <img src="../asset/images/new_logo plain.png" width="100px" alt=""> -->
                        <span>
                            <p>Cart &#62; Information &#62; payment</p>
                        </span>

                        <p> Contact Information</p>

                        <!-- <input type="text" id="text" placeholder="Email">
            <br> -->
                        <input type="checkbox" id="box"> Email with me new and offers
                    </div>

                    <div class="dummy2">
                        <p> Shipping Address</p>
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
                                <input type="text" placeholder="Frist name" id="frist_name" value="Isac" required
                                    pattern=^[a-zA-Z]{3,20}$
                                    title="the input field  should contains only alphabetic characters (both upper and lower case) and has a length between 3 and 20 characters.">
                            </div>
                            <div class="dummy5">
                                <input type="text" placeholder="Last name" value="Deva" id="last_name" required
                                    pattern=^[a-zA-Z]{3,20}$
                                    title="the input field  should contains only alphabetic characters (both upper and lower case) and has a length between 3 and 20 characters.">
                            </div>
                        </div>

                        <br>
                        <input type="text" id="address" value="15/A P.S.V.K South street,Pettai" placeholder="Address"
                            required>
                        <br>

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
                                <option value="0" label="select your state..." selected="selected"> select your state
                                </option>
                                <option>Tamilnadu</option>
                                <!-- <option>Delhi</option>
                            <option>Kerala</option>
                            <option>pune</option>
                            <option>Gujarat</option>
                             -->
                            </select>
                        </div>

                        <div class="dummy9">
                            <input type="text" id="pincode" placeholder="Pin code" value="627004" required
                                pattern="[0-9]{6}" title=" This box only have numbers">
                        </div>
                    </div>

                    <input type="text" id="ph_num" placeholder="phone" value="909529766" required pattern="[0-9]{10}"
                        title=" This box only have numbers">
                    <br>
                    <input type="checkbox" id="box"> Save this Information for Next time

                    <br>
                    <div class="tag">
                        <div class="tag1">
                            <a href="../pages/cart.html"> &#60; Return to Cart</a>
                        </div>

                        <div class="tag2">
                            <button id="continue" type="submit"> Place Order</button>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </form>





    <!--  -->

    <div id="whole_div">
        <div class="payment">
            <div class="payment-tabs"><a href="javascript:void(0);">Cart</a><a href="javascript:void(0);">Customer
                    Information</a><a href="javascript:void(0);">Shipping</a><a class="active"
                    href="javascript:void(0);">Payment</a></div>
            <div class="payment-customer">
                <h2>Ivan Yew</h2>
            </div>
            <div class="payment-method">
                <h2>Choose your payment method</h2>
                <div class="pm-item">
                    <input id="mpp" type="radio" name="payment-method" />
                    <label class="pm-label" for="mpp">
                        <div class="pm-text">
                            <h5>Paypal</h5>
                            <p>Safe payment online. Credit card needed. Paypal account is not necessary.</p>
                        </div>
                        <div class="pm-thumb"><img
                                src="data:image/png;base64,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" />
                        </div>
                    </label>
                </div>
                <div class="pm-item">
                    <input id="mcc" type="radio" name="payment-method" checked="checked" />
                    <label class="pm-label" for="mcc">
                        <div class="pm-text">
                            <h5>Credit Card</h5>
                            <br>
                            <p>Safe money transfer using your bank account. Safe payment online. Credit card needed.
                                Visa, Maestro, Discover, American Express</p>
                        </div>
                        <div class="pm-thumb"><img
                                src="data:image/png;base64,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" />
                        </div>
                        <div class="pm-thumb"><img
                                src="data:image/png;base64,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" />
                        </div>
                    </label>
                </div>
            </div>
            <div class="payment-input">
                <div class="form-group success">
                    <label for="ccnum">Credit Card Number</label>
                    <br>
                    <input class="form-control is-valid" id="ccnum" type="text" name="ccnum"
                        value="4542 9931 9292 2293" />
                </div>
                <br><br> <br>
                <div class="form-group half pr-3">
                    <br>
                    <label for="ccmonth">Expiry Date</label>

                    <div class="row mx-0">
                        <div class="col-6 pl-0 pr-2">

                            <select class="form-control" id="ccmonth">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                            </select>
                        </div>
                        <div class="col-6 pl-2 pr-0">
                            <select class="form-control" id="ccyear">
                                <option value="2018">2018</option>
                                <option value="2019">2019</option>
                                <option value="2020">2020</option>
                                <option value="2021">2021</option>
                                <option value="2022">2022</option>
                                <option value="2023">2023</option>
                                <option value="2024">2024</option>
                                <option value="2025">2025</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="form-group half pl-3">
                    <br>
                    <label for="cccode">CVV Code <span class="question">?</span></label>
                    <input class="form-control is-invalid" id="cccode" type="text" value="3456" name="cccode" />
                </div>
                <br>
                <div class="form-group">
                    <br>
                    <label for="ccname">Name on Card</label> <br>
                    <input class="form-control" id="waste" class="waste" type="text" value="Isac" name="ccname" />
                </div>
            </div>
            <div class="payment-actions"><a class="return" href="javascript:void(0);">Return to Shipping</a><a
                    class="finish" id="order_fun" href="javascript:void(0);"> Order place
                </a>
            </div>
        </div>
    </div>

    <script src="https://smtpjs.com/v3/smtp.js">
    </script>
    <script>

        const continues = document.getElementById("form")
        continues.addEventListener("submit", e => {
            e.preventDefault();
            Con()
        })

        function Con() {
            const whole = document.getElementById("whole_div")
            const billig_address = document.getElementById("address").value
            const frist_name = document.getElementById("frist_name").value
            const last_name = document.getElementById("last_name").value
            const state = document.getElementById("state").value
            const pincode = document.getElementById("pincode").value
            const ph_num = document.getElementById("ph_num").value

            // let next_obj = JSON.parse(localStorage.getItem("product_details"))
            //     "user_first"=frist_name,
            //     "last_name"= last_name,
            //     "user_ph_num"=ph_num,
            //     "user_state"= state,
            //     "Product_billing_address"= billing_address,
            //     "pincode"=pincode 
            // next_obj.push(odj)

            // localStorage.setItem("product_details", JSON.stringify(next_obj))

            const current_user = JSON.parse(localStorage.getItem("profile"))
            const current_user_email = current_user.email
            console.log(current_user_email)
            const next_obj = JSON.parse(localStorage.getItem("product_details"))

            next_obj.find((data) => {
                if (current_user_email == data.requested_user_email) {
                    data.user_first = frist_name,
                        data.last_name = last_name,
                        data.user_ph_num = ph_num,
                        data.user_state = state,
                        data.Product_billing_address = billig_address,
                        data.pincode = pincode,
                        data.orders = "placed"

                    localStorage.setItem("product_details", JSON.stringify(next_obj))
                    whole.style.display = "block"
                    form.style.filter = "blur(6px)"

                }
            })

        }








        const request_email_arr = JSON.parse(localStorage.getItem("profile"));
        let user_mail = request_email_arr["email"];

        console.log(user_mail)

        // request_email_arr.find(e=>{
        //     // if(e.requested_user_email==)
        //    return user_mail=e.requested_user_email
        // })

        const email_send = document.querySelectorAll("#order_fun");

        email_send.forEach((el) => {
            el.addEventListener("click", e => {
                e.preventDefault();
                //  console.log(e.target.dataset.id)
                alert("You will recieve a Email")

                Email.send({
                    Host: "smtp.elasticemail.com",
                    Username: "bharuu90@gmail.com",
                    Password: "F5AF1592782CEDC418852B71C9B8DA562506",
                    To: `${user_mail}`,
                    From: "bharuu90@gmail.com",
                    Subject: "Thanks for purchasing",
                    Body: "Hi santhanam, Your ordered xxxx from Zanarts on 12/04/2003. Will be received on within 10 days to Address:15/A p.sv.k south street,Tirunlveli"
                }).then(
                    message => alert(message)
                );

                window.location.href = "../pages/buyer.html"


            })
        })

        //
    </script>

</body>

</html>