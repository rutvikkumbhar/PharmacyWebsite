<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="PharmacyWebsite.products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Products</title>
    <link rel="stylesheet" href="styles/products.css" />
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
                        <div class="searchbox" onkeydown="return (event.keyCode!=13);">
                            <asp:TextBox ClientIDMode="Static" ID="find" runat="server" class="txtsearch" placeholder="Search for Medicines , Beauty and More"
                              onfocus="clearPlaceholder(this);" onblur="setPlaceholder(this);" onkeyup="searchbox()"></asp:TextBox>
                            
                            <asp:ImageButton class="searchlogo-image"  ID="searchlogo" runat="server" ImageUrl="~/images/searchimagelogo.jpg" />
                        </div>
                    <a href="home.aspx">Home</a>
                    <a href="products.aspx">Products</a>
                    <a href="contact.aspx">Contact</a>
                    <asp:ImageButton class="loginlogo-image" ID="loginlogo" runat="server" ImageUrl="~/images/loginlogo.jpg" OnClick="loginlogo_Click"/>
                </div>
                <div class="sub-container1-rightside">
                    <asp:ImageButton class="addtocarticon" ID="addtocarticon" runat="server" ImageUrl="~/images/addtocart.png" OnClick="addtocarticon_Click"/>
                </div>
            </div>
    
        <div class="nrm">
            <div id="noResultsMessage" onkeyup="searchbox()" style="display:none;">
                No results are found
            </div>
        </div>

        <div id="matchedItemsContainer" class="matchedItemsContainer" style="display:flex; flex-wrap:wrap; justify-content: space-between; margin: 10px 100px;"></div>

        <div  style="margin:30px 120px 0 120px; padding:0;"  >
                <p id="otherProducts" onkeyup="searchbox()" class="product-heads" style="display:none;">Other Products</p>
            </div>

    <div id="umatchedItemsContainer" class="umatchedItemsContainer" style="display: flex; flex-wrap:wrap; justify-content: space-between; margin: 10px 100px;"></div>
            
         <div class="product-list">

             <div class="product-titles" style="padding-top:0;" onkeyup="searchbox()" >
                 <p class="product-heads"style="margin-bottom:15px;" >Popular Products</p>
             </div>

             <div class="product-list2">
                  <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <img style="width:auto;"  class="product-img"   src="images/img3.jpg" />

                    </div>
                    <h5 class="descripation">Bhringraj & Amla Hair Oil With Comb Applicator, 200ml</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price">&#8377;620.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice">&#8377;599.00</h4>
                         <h4 class="discount" style="color:#f47779;">&#160;&#160;(3.4%)</h4>
                     </div>
                      <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button17" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page1'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton class="product-img" ID="ImageButton8" runat="server" ImageUrl="/images/img2.jpg" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">WOW Skin Science Ubtan Foaming Face Wash | Face Wash For Men & Women</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price">&#8377;399.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice">&#8377;351.00</h4>
                         <h4 class="discount" style="color:#f47779;">&#160;&#160;(12%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button16" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page1'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton style="width:auto;" class="product-img" ID="ImageButton9" runat="server" ImageUrl="~/images/img4.jpg" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">AloeVera Gel Skin Treatment 200ml pack</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price">&#8377;300.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice">&#8377;252.05</h4>
                         <h4 class="discount" style="color:#f47779;">&#160;&#160;(16%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button15" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page1'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton class="product-img" ID="ImageButton10" runat="server" ImageUrl="~/images/img5.jpg" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">L3 Level 3 Styling Powder - Natural Look Mens Powder - Easy to Apply With No Oil or Greasy Residue</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price">&#8377;2599.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice">&#8377;1689.06</h4>
                         <h4 class="discount" style="color:#f47779;">&#160;&#160;(35%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button14" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page1'); return false;" />
                   </div>
              </div>
              <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton class="product-img"  ID="ImageButton11" runat="server" ImageUrl="~/images/img6.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Zingavita Vitamin C 1000mg + Zinc Effervescent Tablets (20 Fizz Tab) Acne Free Skin, No Added Sugar & Orange Flavour - 1 Daily</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price">&#8377;399.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice">&#8377;299.00</h4>
                         <h4 class="discount" style="color:#f47779;">&#160;&#160;(43%)</h4>
                     </div>
                  <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button13" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page1'); return false;" />
                   </div>
              </div>
                  <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton class="product-img"  ID="ImageButton7" runat="server" ImageUrl="~/images/img1.jpg" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Optimum Nutrition Gold Standard 100 Percent Whey Protein Powder, Double Rich Chocolate, 5 Pound (Packaging May Vary)</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price">&#8377;3899.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice">&#8377;3099.00</h4>
                         <h4 class="discount" style="color:#f47779;">&#160;&#160;(20.5%)</h4>
                     </div>
                  <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button12" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page1'); return false;" />
                   </div>
              </div>
               
           </div>



             <div class="product-titles" style="padding-top:0;" onkeyup="searchbox()" >
                <p class="product-heads"style="margin-bottom:25px;" >Shop By Categories</p>
                <div class="categories-img-block" >
                 <asp:Image class="product-img" ID="Image5" runat="server" ImageUrl="~/images/img123.png" />
                     </div>
                 <h5>Health food and drinks</h5> 
            </div>
             
                
              <div class="product-list2">
                  <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton style="width:auto;"  class="product-img" ID="ImageButton13" runat="server" ImageUrl="~/images/img49.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">B-Protin Chocolate Nutrition Supplement Bottle Of 500 G</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price">&#8377;575.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice">&#8377;569.25</h4>
                         <h4 class="discount" style="color:#f47779;">&#160;&#160;(1%)</h4>
                     </div>
                      <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button11" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page1'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton class="product-img" ID="ImageButton14" runat="server" ImageUrl="~/images/img50.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Himalaya Ashvagandha Immunity Booster Tablets Bottle Of 60</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price">&#8377;220.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice">&#8377;204.06</h4>
                         <h4 class="discount" style="color:#f47779;">&#160;&#160;(7%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button10" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page1'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton style="width:auto;" class="product-img" ID="ImageButton15" runat="server" ImageUrl="~/images/img51.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Protinex Nutritional Drink Mix For Adults For Everyday Health With High Protein Rich Chocolate 400g</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price">&#8377;675.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice">&#8377;607.05</h4>
                         <h4 class="discount" style="color:#f47779;">&#160;&#160;(10%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button9" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page1'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton class="product-img" ID="ImageButton16" runat="server" ImageUrl="~/images/img52.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Ensure Health Drink Chocolate - 400g Box</h5>
                      <h4 class="lblPrice" style="margin-bottom:8px; color:gray;">MRP <del class="price">&#8377;840.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice">&#8377;831.06</h4>
                         <h4 class="discount" style="color:#f47779;">&#160;&#160;(1%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button8" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page1'); return false;" />
                   </div>
              </div>
              <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton class="product-img"  ID="ImageButton17" runat="server" ImageUrl="~/images/img53.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Zandu Satavarex Health Food Bottle Of 210 G</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price">&#8377;310.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice">&#8377;307.07</h4>
                         <h4 class="discount" style="color:#f47779;">&#160;&#160;(1%)</h4>
                     </div>
                  <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button7" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page1'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block">
                        <asp:ImageButton  class="product-img" ID="ImageButton18" runat="server" ImageUrl="~/images/img54.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Prohance Mom Chocolate Nutrition Drink Jar Of 400 G</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price">&#8377;645.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice">&#8377;586.95</h4>
                         <h4 class="discount" style="color:#f47779;">&#160;&#160;(9%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button6" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page1'); return false;" />
                   </div>
              </div>
           </div>

             <div class="product-titles" style="background-color:#fdba2b;  height:3px; margin:0 100px 50px 100px;"></div>

             <div class="product-titles" style="padding-top:0;" onkeyup="searchbox()">
                <div class="categories-img-block" >
                 <asp:Image class="product-img" ID="Image6" runat="server" ImageUrl="~/images/img121.png" />
                     </div>
                 <h5>Personal Care</h5> 
            </div>
             
                
              <div class="product-list2">
                  <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton class="product-img" ID="ImageButton1" runat="server" ImageUrl="~/images/img55.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Venusia Max Intensive Moisturizing Cream For Dry To Very Dry Skin Repairs & Smoothens Skin 150g</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price">&#8377;610.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice">&#8377;549.00</h4>
                         <h4 class="discount" style="color:#f47779;">&#160;&#160;(10%)</h4>
                     </div>
                      <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button5" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page1'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton class="product-img" ID="ImageButton2" runat="server" ImageUrl="~/images/img56.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Stayfree Secure Xl Cottony Comfort Sanitary Pads 18 No'S</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price">&#8377;124.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice">&#8377;122.76</h4>
                         <h4 class="discount" style="color:#f47779;">&#160;&#160;(1%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button4" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page1'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton class="product-img" ID="ImageButton3" runat="server" ImageUrl="~/images/img57.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Photostable Gold Spf55 Sunscreen Gel 50g</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price">&#8377;823.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice">&#8377;781.85</h4>
                         <h4 class="discount" style="color:#f47779;">&#160;&#160;(5%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button3" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page1'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton style="width:12.417vw;" class="product-img" ID="ImageButton4" runat="server" ImageUrl="~/images/img58.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Moisturex Cream 100gm</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price">&#8377;290.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice">&#8377;275.05</h4>
                         <h4 class="discount" style="color:#f47779;">&#160;&#160;(5%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button2" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page1'); return false;" />
                   </div>
              </div>
              <div class="product-list2-product">
                    <div class="product-list2-product-block" style="height:20.394vh;">
                        <asp:ImageButton style="width:7.417vw; height:auto;" class="product-img"  ID="ImageButton5" runat="server" ImageUrl="~/images/img59.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Sensodyne Sensitive Repair & Protect Toothpaste Tube Of 100 G</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price">&#8377;245.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice">&#8377;232.75</h4>
                         <h4 class="discount" style="color:#f47779;">&#160;&#160;(5%)</h4>
                     </div>
                  <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button1" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page1'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block">
                        <asp:ImageButton  class="product-img"  ID="ImageButton6" runat="server" ImageUrl="~/images/img60.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Bold Care Extend Delay Spray For Men - With Lidocaine 10% (20g)</h5>
                      <h4  style="margin-bottom:8px; color:gray;">MRP <del class="price">&#8377;330.00</del></h4>
                     <div style="display:flex;">
                         <h4  class="discountprice" >&#8377;300.03</h4>
                         <h4   class="discount" style="color:#f47779;">&#160;&#160;(9%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="btnAddToCart2" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page1'); return false;" />
                   </div>
              </div>
              
        </div>
               
             <div class="product-titles" style="background-color:#fdba2b;  height:3px; margin:0 100px 50px 100px;"></div>    

             <div class="product-titles" style="padding-top:0;" onkeyup="searchbox()">
                <div class="categories-img-block" >
                 <asp:Image class="product-img" ID="Image9" runat="server" ImageUrl="~/images/img15.png" />
                     </div>
                 <h5>Medicines</h5> 
            </div>
             
                
              <div class="product-list2">
                  <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton style="width:7.417vw;" class="product-img" ID="ImageButton19" runat="server" ImageUrl="~/images/med1.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Jointace C2 Strip Of 10 Tablets</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price">&#8377;330.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice">&#8377;300.06</h4>
                         <h4 class="discount" style="color:#f47779;">&#160;&#160;(8%)</h4>
                     </div>
                      <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button18" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page1'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton style="width:7.417vw;" class="product-img" ID="ImageButton20" runat="server" ImageUrl="~/images/med2.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Neurobion Plus Strip Of 10 Tablets</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price">&#8377;126.10</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice">&#8377;108.45</h4>
                         <h4 class="discount" style="color:#f47779;">&#160;&#160;(14%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button19" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page1'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton style="width:7.417vw;" class="product-img" ID="ImageButton21" runat="server" ImageUrl="~/images/med3.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Zincovit Strip Of 15 Tablets (Green)</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price">&#8377;110.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice">&#8377;99.00</h4>
                         <h4 class="discount" style="color:#f47779;">&#160;&#160;(10%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button20" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page1'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton style="width:7.417vw;" class="product-img" ID="ImageButton22" runat="server" ImageUrl="~/images/med4.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Calcimax D 1000mg Strip Of 30 Tablets</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price">&#8377;380.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice">&#8377;349.06</h4>
                         <h4 class="discount" style="color:#f47779;">&#160;&#160;(8%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button21" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page1'); return false;" />
                   </div>
              </div>
              <div class="product-list2-product">
                    <div class="product-list2-product-block" style="height:20.394vh;">
                        <asp:ImageButton style="width:7.417vw; height:auto;" class="product-img"  ID="ImageButton23" runat="server" ImageUrl="~/images/med5.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Evion Forte Strip Of 10 Capsules</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price">&#8377;218.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice">&#8377;200.65</h4>
                         <h4 class="discount" style="color:#f47779;">&#160;&#160;(8%)</h4>
                     </div>
                  <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button22" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page1'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block">
                        <asp:ImageButton  class="product-img"  ID="ImageButton24" runat="server" ImageUrl="~/images/med6.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Digene Assorted Strip Of 15 Tablets</h5>
                      <h4  style="margin-bottom:8px; color:gray;">MRP <del class="price">&#8377;26.55</del></h4>
                     <div style="display:flex;">
                         <h4  class="discountprice" >&#8377;22.03</h4>
                         <h4   class="discount" style="color:#f47779;">&#160;&#160;(16%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button23" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page1'); return false;" />
                   </div>
              </div>
              
        </div>
               
             <div class="product-titles" style="background-color:#fdba2b;  height:3px; margin:0 100px 50px 100px;"></div>    


            
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

     <script src="script.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script>
          $(document).ready(function () {
              // Flag to track if search box was previously empty
              var wasSearchBoxEmpty = true;
              // Flag to track if backspace key was pressed after search box was emptied
              var backspacePressedAfterEmpty = false;
              // Timeout variable for delaying the display of the "No results found" message
              var noResultsMessageTimeout;

              // Function to set focus on the search box and attach input event listener
              function setupSearchBox() {
                  // Set focus on the search box when the page is loaded
                  document.getElementById('<%= find.ClientID %>').focus();

                  // Add event listener for input event on the search box
                  $('#<%= find.ClientID %>').on('input', function () {
                      e.preventDefault(); // Prevent the default action of the input event
                      var searchBoxValue = $(this).val().trim();
                      if (searchBoxValue === '') {
                          // Check if the search box was previously not empty
                          if (!wasSearchBoxEmpty) {
                              // Reload the page if the search box is cleared
                              location.reload();
                          }
                          $('#matchedItemsContainer').hide();
                          $('#unmatchedItemsContainer').empty();
                          $('#noResultsMessage').hide();
                          // Update the flags
                          wasSearchBoxEmpty = true;
                          backspacePressedAfterEmpty = false;
                      } else {
                          clearTimeout(noResultsMessageTimeout); // Clear any existing timeout
                          noResultsMessageTimeout = setTimeout(function () {
                              // Check if the search box is still not empty and no results were found
                              if ($('#<%= find.ClientID %>').val().trim() !== '' && $('#matchedItemsContainer').is(':hidden')) {
                                  $('#noResultsMessage').show();
                              }
                          }, 500); // Adjust the delay as needed
                          // Update the flag
                          wasSearchBoxEmpty = false;
                      }
                  });

                  // Add event listener for keydown event (backspace key)
                  $('#<%= find.ClientID %>').on('keydown', function (e) {
                      // Check if the search box is empty and the backspace key is pressed
                      if (($(this).val().trim()).length === 0 && e.keyCode === 8 || e.keyCode === 46 || e.keyCode === 13 || e.keyCode === 37 || e.keyCode === 38 || e.keyCode === 39 || e.keyCode === 40) {
                          // Prevent the default action of the backspace key
                          e.preventDefault();
                          // Reload the page if the backspace key is pressed again after the search box was emptied
                          setTimeout(function () {
                              location.reload();
                          }, 100);
                          // Update the flag
                          backspacePressedAfterEmpty = true;
                      }
                  });
              }

              // Setup search box and attach input event listener
              setupSearchBox();
          });
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
