<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="accountdetails.aspx.cs" Inherits="PharmacyWebsite.accountdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Account</title>
    <link rel="stylesheet" href="styles/accountdetails.css" />
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


                 <div class="logininfo">
                     <div class="logininfo-msg-block" style="padding:20px;" id="loginInfo-msg"></div>
                     <div class="logindetails" id="loginInfo"></div>
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

   <script>
       var cartKey = "cart_" + localStorage.getItem("txtemail");
       document.addEventListener("DOMContentLoaded", function () {
           // Retrieve login information from local storage
           var txtname = localStorage.getItem("txtname");
           var txtemail = localStorage.getItem("txtemail");
           var txtpassword = localStorage.getItem("txtpassword");

           // Check if login information exists
           if (txtname && txtemail && txtpassword) {
               // Display login information on the page
               
               var name = document.getElementById("name");
               name.innerHTML = '<span style="color:white; font-size:17px; font-weight:600;">Hello, ' + txtname + '</span>';

               var loginInfoDiv = document.getElementById("loginInfo");
               loginInfoDiv.innerHTML = '<div class="logindetails-mainblock">' +
                                           '<div style="font-size:30px; font-weight:600; margin-bottom:30px;">Login and Security</div>' +
                                           '<div class="logindetails-block">' +
                                               '<div id="hidename1" class="login-info-label" style="padding-bottom:10px;">Name</div>' +
                                               '<div class="login-info-value" id="hidename2">' + txtname + '</div>' +
                                               '<div class="login-info-label">Email</div>' +
                                               '<div class="login-info-value">' + txtemail + '</div>' +
                                               '<div class="login-info-label">Password</div>' +
                                               '<div class="login-info-value">' + '*'.repeat(txtpassword.length) + '</div>' +
                                           '</div>' +
                                        '</div>';

               var logoutButton = document.createElement("button");
               logoutButton.textContent = "Logout";
               logoutButton.classList.add("logout-button"); // Add class to the logout button
               logoutButton.addEventListener("click", function () {
                   // Ask for confirmation
                   var confirmLogout = confirm("Are you sure you want to log out?");
                   if (confirmLogout) {
                       // Clear login information from local storage
                       localStorage.removeItem("txtemail");
                       localStorage.removeItem("txtpassword");

                       // Remove cart data only if the user confirms logout
                       var cartKey = "cart_" + localStorage.getItem("txtemail");
                       localStorage.removeItem(cartKey);

                       // Reload the page to reflect the changes
                       window.location.reload();
                   }
               });
               loginInfoDiv.appendChild(logoutButton);

           } else {
               // Display a message indicating nothing is here
               var loginInfoDiv = document.getElementById("loginInfo-msg");
               loginInfoDiv.innerHTML = '<div class="logininfo-msg">Please Sign Up First.</div>';
                document.getElementById("name").style.display = 'none';
           }
       });
</script>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            // Retrieve login information from local storage
            var txtname = localStorage.getItem("txtname");

            // Check if login information exists
            if (!txtname || txtname === 'null' || txtname === '') {
                // Hide the element if txtname is not found
                document.getElementById("hidename1").style.display = 'none';
                document.getElementById("hidename2").style.display = 'none';
            } else {
                document.getElementById("hidename1").style.display = '';
                document.getElementById("hidename2").style.display = '';

            }
        });
    </script>

    <script src="script.js"></script>

</body>
</html>
