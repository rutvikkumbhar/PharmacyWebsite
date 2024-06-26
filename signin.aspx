﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="PharmacyWebsite.signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
     <link rel="stylesheet" href="styles/login.css" />
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
                <div class="sub-container1-rightside">
                    <asp:ImageButton class="addtocarticon" ID="addtocarticon" runat="server" ImageUrl="~/images/addtocart.png" OnClick="addtocarticon_Click"/>
                </div>
            </div>

            <div class="sub-container2" >
            <div class="sub-container2-1">
               <div class="form-container2" onkeydown="return (event.keyCode!=13);">
                    <h1 style="margin-bottom:40px;">Sign In</h1>
                    <asp:TextBox class="txtemail" ID="txtemail" runat="server" TextMode="Email" placeholder="Email"
            onfocus="clearPlaceholder(this);" onblur="setPlaceholder(this);"></asp:TextBox>
                    <asp:TextBox class="txtpassword" ID="txtpassword" runat="server" TextMode="Password" placeholder="Password"
            onfocus="clearPlaceholder(this);" onblur="setPlaceholder(this);" ></asp:TextBox>
                    <asp:Button class="btnsignin" ID="btnsignin" runat="server" Text="Sign in" OnClientClick="if(!logininfo()) return false;"  OnClick="btnsignin_Click"/>

                </div>
                <div class="info-container2">
                    <h1 style="color:white">Hello&#44; Friend</h1>
                    <p style="margin-left:20px; color:white;">Register with your personal details to use all of site features&#46;</p>
                    <asp:Button class="btnsignup" ID="btnsignup" runat="server" Text="Sign Up" OnClick="btnsignup_Click"/>
                 </div>
            
            </div>
                <div style="margin:15px 0;  font-size:16px; font-weight:700;">
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
          </div>
            </div>


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
        function logininfo() {
            // Check if values already exist in local storage
            var txtemailExists = localStorage.getItem("txtemail");
            var txtpasswordExists = localStorage.getItem("txtpassword");

            // If values already exist, show an alert and return false
            if (txtemailExists || txtpasswordExists) {
                alert("You are already logged in please logout first to login again..");
                return false;
            }

            // Get the values from the input elements
            var txtname = localStorage.getItem("txtname");
            var txtemail = document.querySelector('.txtemail').value;
            var txtpassword = document.querySelector('.txtpassword').value;

            // Store the values in local storage
            localStorage.setItem("txtname", txtname);
            localStorage.setItem("txtemail", txtemail);
            localStorage.setItem("txtpassword", txtpassword);

            return true;
        }
</script>
    
    <script src="script.js"></script>

</body>
</html>
