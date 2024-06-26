<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orders.aspx.cs" Inherits="PharmacyWebsite.orders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="styles/common.css" />
    <link rel="stylesheet" href="styles/orders.css" />
</head>
<body>
    <div class="container">
         <form id="form1" runat="server" class="form">
            <div class="sub-container1">
                <div class="sub-container1-leftside">
                    <div class="hamburger" onclick="toggleSidebar()">
                        <div class="line"></div>
                        <div class="line"></div>
                        <div class="line"></div>
                    </div>

                    <div class="sidebar">
                        <div class="close-button" onclick="toggleSidebar()">X</div>
                        <a id="name" style="background-color:black; margin:20px 0;"></a>
                        <a class="sidebar-titles" style="border:none;">Trending</a>
                        <a href="products.aspx">Popular Products</a>
                        <a href="home.aspx">New Launches</a>
                        <a class="sidebar-titles">Shop by category</a>
                        <a href="products.aspx">Facewash</a>
                        <a href="products.aspx">Medicines</a>
                        <a href="products.aspx">Personal Care</a>
                        <a href="products.aspx">Health</a>
                        <a class="sidebar-titles">Help & Settings</a>
                        <a href="accountdetails.aspx">Your Account</a>
                        <a href="orders.aspx">Your Orders</a>
                        <a href="contact.aspx">Customer Services</a>
                        <a href="accountdetails.aspx">Sign Out</a>
                    </div>

                    <div class="overlay" onclick="toggleSidebar()"></div>                   

                </div>
                <div class="headbar">
                    <asp:Image class="mainlogo-image" ID="Image1" runat="server" ImageUrl="~/images/mainlogo.jpg" />
                    <a href="home.aspx">Home</a>
                    <a href="products.aspx">Products</a>
                    <a href="contact.aspx">Contact</a>
                    <asp:ImageButton class="loginlogo-image" ID="loginlogo" runat="server" ImageUrl="~/images/loginlogo.jpg" OnClick="loginlogo_Click" />
                </div>
                <div class="sub-container1-rightside">
                    <asp:ImageButton class="addtocarticon" ID="addtocarticon" runat="server" ImageUrl="~/images/addtocart.png" OnClick="addtocarticon_Click"/>
                </div>
            </div>

             <div class="orders-container">
                 <div>
                     <div class="orders-heading">
                         <h2>Your Orders</h2>
                     </div>
                 </div>
                 <div class="orders-subcontainer">
                     <div>
                         <div id="not-orders" class="not-ordersmsg"></div>
                     </div>
                     <div class="order-block" id="order-block">
                         <div class="order-img-block">
                         <img class="order-img" id="order-img" src="a.png" alt="order-img" />
                     </div>
                         <div id="description" style="font-size:17px; font-weight:600;"></div>
                       <del id="price" style="font-size:15px; font-weight:600; color:gray; margin:0 12px;"></del>
                       <span id="discount-price" style="font-size:17px; font-weight:600; color:green;"></span>
                     </div>
                     
                         <div id="delivery-msg" style="font-size:15px; font-weight:600; color:salmon;  margin-top:8px;"></div>
                        <div id="cancelbutton"></div>
                     
                 </div>
             </div>


             <div style="background-color:#fdba2b;  height:3px; margin:0 150px 50px 150px;"></div>    
        

        <div class="about-container">
            <h1 style="color:white; margin-top:50px;">About Us</h1>
                <div class="about-sub-container1">
              <div class="about-mainlogo">
                <h1 style="font-size: 30px; color: aqua;">Pharmacy</h1>
              <div class="time">
              <p style="font-size: 16px; margin: 0; color: aqua;">24x7</p>
           </div>
            <p style="color: lightsalmon; margin-bottom: 0;" >We Will Be Always There For You</p>
            <p  style="color:lightsalmon; margin-top: 0;">Anytime , Anywhere..</p>
          </div>
          <div class="about-info">
            <div class="download">
              <h2 class="heads">Download</h2>
              <p>Dekstop App</p>
              <p>Mobile App</p>
            </div>
            <div  class="services">
              <h2 class="heads">Services</h2>
              <p>Online Prescription Refills</p>
              <p>Health Information Resources</p>
              <p>Medication Delivery</p>
              <p>Online Consultations</p>
              <p>Health and Wellness Products</p>
              <p>Insurance and Payment</p>
            </div>
            <div class="products">
              <h2 class="heads">Products</h2>
              <p>Prescription Medications</p>
              <p>Over-the-Counter(OTC) Medications</p>
              <p>Vitamins and Supplements</p>
              <p>Personal Care Products</p>
              <p>Beauty and Cosmetics</p>
              <p>Baby and Maternity Products</p>
              <p>Home Healthcare Supplies</p>
              <p>Health and Wellness Products</p>
              <p>Travel Health Products</p>
            </div>
            <div class="products">
              <h2 class="heads">Policy Info</h2>
              <p>Editorial Policy</p>
              <p>Privacy Policy</p>
              <p>Vulnerability Disclosure policy</p>
              <p>Terms and Conditions</p>
              <p>customer Support Policy</p>
              <p>Return Policy</p>
            </div>
                
          </div>
     </div>

            <div class="payment">
                 <p>Our Payment Partners</p>
                 <div>
                     <asp:Image class="payment-icons"  ID="Image2" runat="server" ImageUrl="~/images/gpay.png" />
                 <asp:Image class="payment-icons" ID="Image20" runat="server" ImageUrl="~/images/paytm.png" />
                 <asp:Image class="payment-icons" ID="Image21" runat="server" ImageUrl="~/images/phonepe.png" />
                 <asp:Image class="payment-icons" ID="Image22" runat="server" ImageUrl="~/images/amazonpay.png" />
                 <asp:Image class="payment-icons" ID="Image23" runat="server" ImageUrl="~/images/maestro.png" />
                 <asp:Image class="payment-icons" ID="Image24" runat="server" ImageUrl="~/images/mastercard.png" />
                     <asp:Image class="payment-icons" ID="Image25" runat="server" ImageUrl="~/images/rupay.png" />
                 </div>
 
            </div>

     <div class="about-sub-container2"></div>

     <div class="social-icons">
         <asp:Image class="icons" ID="Image3" runat="server" ImageUrl="~/images/facebook.png" />
         <asp:Image class="icons" ID="Image4" runat="server" ImageUrl="~/images/twitter.jpeg" />
         <asp:Image class="icons" ID="Image7" runat="server" ImageUrl="~/images/email.jpg" />
         <asp:Image class="icons" ID="Image19" runat="server" ImageUrl="~/images/google.jpg" />
         <asp:Image class="icons" ID="Image8" runat="server" ImageUrl="~/images/telegram.png" />
     </div>
     <div class="copyright">
      <p>&#169; Pharmacy 2024. All rights reserved.</p>
     </div>
  </div>

             </form>
        </div>

         

     <script>
         document.addEventListener("DOMContentLoaded", function () {
             // Retrieve the price value from local storage
             var addressValue = localStorage.getItem("txtaddress");
             var descriptionValue = localStorage.getItem("product-description");
             var priceValue = localStorage.getItem("product-price");
             var discountpriceValue = localStorage.getItem("product-discountprice");
             var imageValue = localStorage.getItem("product-image");

             // Check if the price value is not null or undefined
             if (!imageValue || imageValue === 'null' || imageValue === '') {
                 document.getElementById("order-block").style.display = 'none';
                 document.getElementById("not-orders").innerText = "Not Orders Yet..";
             } else {
                 document.getElementById("order-img").src = imageValue;
                 document.getElementById("description").innerText = descriptionValue;
                 document.getElementById("price").innerText = priceValue;
                 document.getElementById("discount-price").innerText = discountpriceValue;

                 // Get the current time
                 var currentTime = new Date();

                 // Calculate the delivery time (current day + 3 days + 8 hours)
                 var deliveryTime = new Date(currentTime.getTime() + (3 * 24 * 60 * 60 * 1000) + (8 * 60 * 60 * 1000));

                 // Set delivery time to random time between 9:00 AM and 6:00 PM on the delivery day
                 deliveryTime.setHours(9 + Math.floor(Math.random() * 9), Math.floor(Math.random() * 60), 0, 0);

                 // Format the delivery time
                 var options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric', hour: 'numeric', minute: 'numeric', hour12: true };
                 var formattedDeliveryTime = deliveryTime.toLocaleString('en-US', options);

                 // Set the delivery message with the calculated time
                 document.getElementById("delivery-msg").innerText = "Deliver At " + addressValue + ' On ' + formattedDeliveryTime;


                 // Create a cancel button
                 var cancelButton = document.createElement("button");
                 cancelButton.innerText = "Cancel Order";
                 cancelButton.classList.add("cancel-button");

                 // Set onclick event
                 cancelButton.onclick = function () {
                     cancel(); // Call the cancel function
                     // You can add additional actions to perform when the button is clicked here
                 };

                 // Replace the existing content of "cancelbutton" div with the cancel button
                 var cancelDiv = document.getElementById("cancelbutton");
                 cancelDiv.innerHTML = ''; // Clear previous content
                 cancelDiv.appendChild(cancelButton);
                 
             }
             var txtname = localStorage.getItem("txtname");

            // Check if login information exists
             if (!txtname || txtname === 'null' || txtname === '') {
                 document.getElementById("name").style.display = 'none';
                
            }
            else {
                 // Display login information on the page
                 var name = document.getElementById("name");
                 name.innerHTML = '<span style="color:white; font-size:17px; font-weight:600;">Hello, ' + txtname + '</span>';
            }
         });

         function cancel() {
             localStorage.removeItem("product-image");
             localStorage.removeItem("product-description");
             localStorage.removeItem("product-price");
             localStorage.removeItem("product-discountprice");
             return true;
         }

    </script>
    <script src="script.js"></script>
</body>
</html>
