<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="buy.aspx.cs" Inherits="PharmacyWebsite.buy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Buy Page</title>
    <link rel="stylesheet" href="styles/buy.css" />
    <link rel="stylesheet" href="styles/common.css" />
</head>
<body>
    <div class="container">
     
    <form id="form1" runat="server" >

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

                 <div class="buy-container" >
                     <div class="buy-container" style="margin-top:50px;" id="buy-container">
                     <div class="buy-subcontainer">
                     <div class="buy-container-info">
                         <div class="buy-img-block">
                            <img id="product-image" class="buy-img" src="a.png" alt="Product Image"/>
                         </div>
                         <div>
                            <div id="product-description" style="letter-spacing:0.3px; font-weight:600;"></div>
                            <div style="margin:8px 0;"><del id="product-price" style="letter-spacing:0.3px;"></del></div>
                         <div id="product-discountprice" style="letter-spacing:0.3px; color:green; font-weight:600;"></div>

                         </div>
                     </div>
                     <div style="display:flex; align-items:center; justify-content:center; width:100%; margin:30px 0;"><h2>Payment Method</h2></div>
                         <div class="radiobtn"><asp:RadioButton ID="RadioButton1" runat="server"  GroupName="paymentMethod" Text=" &#160;Credit or Debit card"/></div>
                         <div class="radiobtn"><asp:RadioButton ID="RadioButton2" runat="server"  GroupName="paymentMethod" Text=" &#160;UPI"/></div>
                         <div class="radiobtn"><asp:RadioButton ID="RadioButton3" runat="server"  GroupName="paymentMethod" Text=" &#160;Cash on Delivery"/></div>
                         <div class="radiobtn"><asp:RadioButton ID="RadioButton4" runat="server"  GroupName="paymentMethod" Text=" &#160;Others"/></div>
                         <div style="display:flex; align-items:center; justify-content:center; width:100%;">
                             <asp:Button ID="btnplaceorder" class="btnplaceorder" runat="server" Text="Place Order" OnClientClick="if(!placeorder()) return false;" />

                         </div>
                     </div>
                         </div>
                 </div>

                 <div style="background-color:#fdba2b;  height:3px; margin: 50px 150px;"></div>    
        

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

    <script src="script.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            // Retrieve product details from URL parameters
            var params = new URLSearchParams(window.location.search);
            var imageSrc = decodeURIComponent(params.get('imageSrc'));
            var description = decodeURIComponent(params.get('description'));
            var discountprice = decodeURIComponent(params.get('discountprice'));
            var price = decodeURIComponent(params.get('price'));

            // Check if any required parameter is missing
            if (!imageSrc || !description || !discountprice || !price || imageSrc === "null" || description === "null" || discountprice === "null" || price === "null" || imageSrc === "" || description === "" || discountprice === "" || price === "") {
                // Hide the block
                document.getElementById('buy-container').style.display = 'none';
            } else {
                // Display product details
                document.getElementById('product-image').src = imageSrc;
                document.getElementById('product-description').innerText = description;
                document.getElementById('product-discountprice').innerText = discountprice;
                document.getElementById('product-price').innerText = price;

                // Retrieve login information from local storage
                var txtname = localStorage.getItem("txtname");

                // Check if login information exists
                if (txtname) {
                    // Display login information on the page
                    var name = document.getElementById("name");
                    name.innerHTML = '<span style="color:white; font-size:17px; font-weight:600;">Hello, ' + txtname + '</span>';
                } else {
                    document.getElementById("name").style.display = 'none';
                }
            }
        });



        function placeorder() {
            // Retrieve the product details element by its ID
            var descriptionElement = document.getElementById("product-description");
            var discountpriceElement = document.getElementById("product-discountprice");
            var priceElement = document.getElementById("product-price");
            var imageElement = document.getElementById("product-image");

            var descriptionValue = descriptionElement.innerText;
            var discountpriceValue = discountpriceElement.innerText;
            var priceValue = priceElement.innerText;
            var imageValue = imageElement.src;

            // Check if a radio button is selected
            var radioButtonChecked = false;
            var radioButtons = document.getElementsByName("paymentMethod"); // Assuming "paymentMethod" is the name of your radio button group
            for (var i = 0; i < radioButtons.length; i++) {
                if (radioButtons[i].checked) {
                    radioButtonChecked = true;
                    break;
                }
            }

            if (!radioButtonChecked) {
                // Display an error message or take appropriate action
                alert("Please select a payment method.");
                return;
            }

            // Store the values in local storage
            localStorage.setItem("product-description", descriptionValue);
            localStorage.setItem("product-discountprice", discountpriceValue);
            localStorage.setItem("product-price", priceValue);
            localStorage.setItem("product-image", imageValue);
            // Redirect to orders.aspx
            window.location.href = "orders.aspx";
        }


    </script>

</body>
</html>
