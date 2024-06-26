<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="PharmacyWebsite.cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" href="styles/cart.css" />
    <link rel="stylesheet" href="styles/common.css" />
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
                <div class="sub-container1-rightside"></div>
            </div>

             <div id="cart" class="addtocart" style="height:200vh; width:100vw;">
        <div class="addtocart-heading" style="padding-top:50px;">
            <h2>Your Cart</h2>
        </div>
        <ul id="cartList"></ul>
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
    // Global variable to hold the cart key
    var cartKey = "cart_" + localStorage.getItem("txtemail");
    // Function to retrieve cart items from session storage and display them
    function displayCartItems() {
        var cartList = document.getElementById('cartList');

        // Get cart items from session storage
        var cart = JSON.parse(localStorage.getItem(cartKey)) || [];
        
        // Display each item in the cart
        cart.forEach(function (item, index) {
            var listItem = document.createElement('li');
            listItem.innerHTML =
                '<div class="addtocart-container">' +
                 '<div class="addtocart-sub-container">' +
                   '<div class="addtocart-img-container">' + '<img class="addtocart-img" src="' + item.imageSrc + '" alt="Product Image">' + '</div>' +
                     '<div class="addtocart-description">' +
                       '<div class="addtocart-details">' + item.description + '</div>' +
                          '<div class="addtocart-price">' +
                                 '<div>' + 'MRP&#160;' + '<del style="color: gray; ">' + item.price + '</del>' + '</div>' +
                                 '<div style="font-size:18px;">' + '&#160;&#160;&#160;' + item.discountprice + '</div>' +
                                 '<div style="color:#3a8f3e; font-weight:600;">' + '&#160;&#160;&#160;' + item.discount + '&#160;Off'+ '</div>' +
                          '</div>' +
                          '<div class="addtocart-buttons" style="display:flex;">' +
                             '<div onclick="buy(' + index + ')" class="button1">BUY NOW</div>' +
                             '<button onclick="removeItem(' + index + ')" class="button2">REMOVE</button>' +
                          '</div>' +  
                  '</div>' +
                '</div>' +
               '</div>';
            cartList.appendChild(listItem);
        });
    }

    
    function buy(index) {
        var txtfirstname = localStorage.getItem('txtfirstname');

        if (!txtfirstname) {
            // Store the selected item's index in localStorage
            localStorage.setItem('selectedIndex', index);
            // Redirect to the address page
            window.location.assign("address.aspx");
        } else {
            // Get the selected item from the clicked index
            var cart = JSON.parse(localStorage.getItem(cartKey)) || [];
            var selectedItem = cart[index];

            if (selectedItem) {
                // Construct the URL with product details as parameters
                var url = "buy.aspx?imageSrc=" + encodeURIComponent(selectedItem.imageSrc) +
                          "&description=" + encodeURIComponent(selectedItem.description) +
                          "&discountprice=" + encodeURIComponent(selectedItem.discountprice) +
                          "&price=" + encodeURIComponent(selectedItem.price);

                // Redirect to the buy page with the product details
                window.location.href = url;
            } else {
                alert("Selected item not found in cart.");
            }
        }
    }





    // Call displayCartItems function when the page loads
    displayCartItems();

    // Function to remove item from cart
    function removeItem(index) {
        // Get cart items from session storage
        var cart = JSON.parse(localStorage.getItem(cartKey)) || [];

        // Remove the item at the specified index
        cart.splice(index, 1);

        // Store the updated cart in session storage
        localStorage.setItem(cartKey, JSON.stringify(cart));

        // Reload the page to reflect the changes
        location.reload();
    }

    // Function to add item to cart and redirect to appropriate product page
    function addToCartAndRedirect(button, page) {
        var product = button.closest('.product-list2-product');
        var imageSrc = product.querySelector('.product-img').src;
        var description = product.querySelector('.descripation').innerText;
        var discountprice = product.querySelector('.DiscountPrice').innerText;
        var price = product.querySelector('.Price').innerText;

        // Create an object representing the item
        var item = {
            imageSrc: imageSrc,
            description: description,
            discountprice: discountprice,
            price: price
        };

        // Get existing cart items from session storage or create an empty array if it doesn't exist
        var cart = JSON.parse(localStorage.getItem(cartKey)) || [];

        // Add the new item to the cart
        cart.push(item);

        // Store the updated cart in session storage
        localStorage.setItem(cartKey, JSON.stringify(cart));

        // Redirect to the appropriate product page
        window.location.href = page + ".aspx";
    }
</script>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        // Retrieve login information from local storage
        var txtname = localStorage.getItem("txtname");

        // Check if login information exists
        if (txtname) {
            // Display login information on the page

            var name = document.getElementById("name");
            name.innerHTML = '<span style="color:white; font-size:17px; font-weight:600;">Hello, ' + txtname + '</span>';
        }
        else {
            document.getElementById("name").style.display = 'none';
        }
    });
    </script>
    <script src="script.js"></script>

</body>
</html>
