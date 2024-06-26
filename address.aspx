<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="address.aspx.cs" Inherits="PharmacyWebsite.address" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="styles/common.css" />
    <link rel="stylesheet" href="styles/address.css" />
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

                 <div class="address-container">
                     <div class="address-subcontainer" onkeydown="return (event.keyCode!=13);">
                         <h1 style="margin:30px 0 50px 0;">Address and Essential Information</h1>
                         <asp:TextBox class="txt" ID="txtfirst" runat="server" placeholder="Firstname"
            onfocus="clearPlaceholder(this);" onblur="setPlaceholder(this);"></asp:TextBox>
                         <asp:TextBox class="txt" ID="txtlast" runat="server" placeholder="Lastname"
            onfocus="clearPlaceholder(this);" onblur="setPlaceholder(this);"></asp:TextBox>
                         <asp:TextBox class="txt" ID="txtemail" runat="server" TextMode="Email" placeholder="Email"
            onfocus="clearPlaceholder(this);" onblur="setPlaceholder(this);"></asp:TextBox>
                         <asp:TextBox class="txt" ID="txtphone" runat="server" TextMode="Phone" placeholder="Phone number"
            onfocus="clearPlaceholder(this);" onblur="setPlaceholder(this);"></asp:TextBox>
                         <asp:TextBox class="txt" ID="txtalphone" runat="server" TextMode="Phone" placeholder="Alternate Pnone Number"
            onfocus="clearPlaceholder(this);" onblur="setPlaceholder(this);"></asp:TextBox>
                         <asp:TextBox class="txt" ID="txtpincode" runat="server"  placeholder="Pincode"
            onfocus="clearPlaceholder(this);" onblur="setPlaceholder(this);"></asp:TextBox>
                         <asp:TextBox class="txt" ID="txtaddress" runat="server" TextMode="MultiLine" placeholder="Address"
            onfocus="clearPlaceholder(this);" onblur="setPlaceholder(this);"></asp:TextBox>
                         <div>
                         <asp:Button ID="btnsave" class="btnsave" runat="server" Text="Save" OnClientClick="return savebutton(0);" OnClick="btnsave_Click" />


                     </div>
                     </div>
                     <div style="margin:15px 0;  font-size:18px; font-weight:700;">
                        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
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
       // Global variable to hold the cart key
       var cartKey = "cart_" + localStorage.getItem("txtemail");
       function savebutton(index) {
           // Get all input fields
           var txtfirst = document.getElementById('<%= txtfirst.ClientID %>');
           var txtlast = document.getElementById('<%= txtlast.ClientID %>');
           var txtemail = document.getElementById('<%= txtemail.ClientID %>');
           var txtphone = document.getElementById('<%= txtphone.ClientID %>');
           var txtpincode = document.getElementById('<%= txtpincode.ClientID %>');
           var txtaddress = document.getElementById('<%= txtaddress.ClientID %>');

           // Check if any field is empty
           if (txtfirst.value.trim() === "" ||
               txtlast.value.trim() === "" ||
               txtemail.value.trim() === "" ||
               txtphone.value.trim() === "" ||
               txtpincode.value.trim() === "" ||
               txtaddress.value.trim() === "") {
               alert("Please fill in all fields.");
               return false; // Prevent redirection
           }
           // Assuming index is passed as a parameter or defined elsewhere
           // Get cart items from session storage
           var selectedIndex = localStorage.getItem('selectedIndex');
           var cart = JSON.parse(localStorage.getItem(cartKey)) || [];

           // Get the selected item
           var selectedItem = cart[selectedIndex];

           // Construct the URL with product details as parameters
           var url = "buy.aspx?imageSrc=" + encodeURIComponent(selectedItem.imageSrc) +
                     "&description=" + encodeURIComponent(selectedItem.description) +
                     "&discountprice=" + encodeURIComponent(selectedItem.discountprice) +
                     "&price=" + encodeURIComponent(selectedItem.price);

           // Redirect to the buy page with the product details
           window.location.href = url;
           alert("Are you sure ?", index);
           var txtfirstname = document.getElementById('<%= txtfirst.ClientID %>').value;
           var txtaddress = document.getElementById('<%= txtaddress.ClientID %>').value;
           localStorage.setItem('txtfirstname', txtfirstname);
           localStorage.setItem('txtaddress', txtaddress);


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

</body>
</html>
