  <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="PharmacyWebsite.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    
    <link rel="stylesheet" href="styles/home.css" />
</head>
<body>
    <div class="logo-animation" id="logo-animation">
        <img class="logo-animation-img" src="images/mainlogo.jpg" />
    </div>
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

        <div id="matchedItemsContainer" class="matchedItemsContainer" style="display: flex; flex-wrap:wrap; justify-content: space-between; margin: 10px 100px;"></div>

        <div style="margin:30px 120px 0 120px; padding:0;">
                <p id="otherProducts" onkeyup="searchbox()" class="product-heads" style="display:none;">Other Products</p>
            </div>

    <div id="umatchedItemsContainer" class="umatchedItemsContainer" style="display: flex; flex-wrap:wrap; justify-content: space-between; margin: 10px 100px;"></div>
            
         <div class="product-list">
             
            
              <div class="product-list1">
                  <div class="product-list1-product">
                    <div class="product-list1-product-block" style="background-color:#e1ffee;" >
                        <asp:ImageButton class="product-img" ID="ImageButton7" runat="server" ImageUrl="~/images/img15.png"/>

                    </div>
                      <h4 style="margin-bottom:6px; color:#363636;">Medicine</h4>
                      <h4 style="color:#f47779; font-size:14px;">UPTO 25% OFF</h4>
              </div>
                   <div class="product-list1-product">
                    <div class="product-list1-product-block" style="background-color:#ecf0ff;">
                        <asp:ImageButton class="product-img" ID="ImageButton8" runat="server" ImageUrl="~/images/img16.png"/>

                    </div>
                       <h4 style="margin-bottom:6px; color:#363636;">Healthcare</h4>
                      <h4 style="color:#f47779; font-size:14px;">UPTO 60% OFF</h4>
              </div>
                   <div class="product-list1-product">
                    <div class="product-list1-product-block" style="background-color:#f5fad5;">
                        <asp:ImageButton class="product-img" ID="ImageButton9" runat="server" ImageUrl="~/images/img17.png"/>
                    </div>
                       <h4 style="color:#363636;">Health Blogs</h4>
              </div>
                   <div class="product-list1-product">
                    <div class="product-list1-product-block" style="background-color:#fff5d9;">
                        <asp:ImageButton class="product-img" ID="ImageButton10" runat="server" ImageUrl="~/images/img18.png"/>

                    </div>
                       <h4 style="margin-bottom:6px; color:#363636;">Plus</h4>
                      <h4 style="color:#f47779; font-size:14px;">UPTO 5% OFF</h4>
              </div>
                   <div class="product-list1-product">
                    <div class="product-list1-product-block" style="background-color:#ffefef;">
                        <asp:ImageButton class="product-img" ID="ImageButton11" runat="server" ImageUrl="~/images/img19.png"/>

                    </div>
                       <h4 style="color:#363636;">Offers</h4>
              </div>
                   <div class="product-list1-product">
                    <div class="product-list1-product-block" style="background-color:#fcf8d8;">
                        <asp:ImageButton class="product-img" ID="ImageButton12" runat="server" ImageUrl="~/images/img20.png"/>

                    </div>
                       <h4 style="margin-bottom:6px; color:#363636;">Value Store</h4>
                      <h4 style="color:#f47779; font-size:14px;">UPTO 50% OFF</h4>
              </div>
                  </div>

            
                            <div class="main-slidebar-container">
                              <div class="slider-container">
                                <div class="slider-track">
                                  <div class="slide" ><asp:Image class="slide-img" ID="Image5"  runat="server" ImageUrl="~/images/slide9.jpg" /></div>
                                    <div class="slide" ><asp:Image class="slide-img" ID="Image6"  runat="server" ImageUrl="~/images/slide3.jpg" /></div>
                                    <div class="slide" ><asp:Image class="slide-img" ID="Image9"  runat="server" ImageUrl="~/images/slide10.jpg" /></div>
                                    <div class="slide" ><asp:Image class="slide-img" ID="Image11"  runat="server" ImageUrl="~/images/slide11.jpg" /></div>
                                    <div class="slide" ><asp:Image class="slide-img" ID="Image12"  runat="server" ImageUrl="~/images/slide8.jpg" /></div>
                                    <div class="slide" ><asp:Image class="slide-img" ID="Image13"  runat="server" ImageUrl="~/images/slide15.png" /></div>
                           
                    </div>
                    <!-- Navigation Indicators -->
                    <div class="slider-nav">
                        <div class="slider-nav-indicator" ></div>
                        <div class="slider-nav-indicator"></div>
                        <div class="slider-nav-indicator"></div>
                        <div class="slider-nav-indicator"></div>
                        <div class="slider-nav-indicator"></div>
                        <div class="slider-nav-indicator"></div>
                    </div>
                    </div>
                </div>



             
             <div class="product-titles" id="productTitle1" onkeyup="searchbox()" >
                <p class="product-heads" >New Launches</p>
                <p class="product-sub-heads">New wellness range just for you!</p>
            </div>
              <div class="product-list2">
                  <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton class="product-img" ID="ImageButton13" runat="server" ImageUrl="~/images/img23.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Keto Az Bottle Of 125ml Hair Wash Lotion</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del  class="price" >&#8377;439.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice" >&#8377;417.00</h4>
                         <h4  class="discount" style="color:#f47779;">&#160;&#160;(5%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button24" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page2'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton class="product-img" ID="ImageButton14" runat="server" ImageUrl="~/images/img27.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Dabur Honey Bottle Of 300ml</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price" >&#8377;120.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice" >&#8377;118.00</h4>
                         <h4  class="discount" style="color:#f47779;">&#160;&#160;(1.7%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button23" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page2'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton class="product-img" ID="ImageButton15" runat="server" ImageUrl="~/images/img21.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">New I Site Plus Strip Of 10 Tablets</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price" >&#8377;297.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice" >&#8377;291.00</h4>
                         <h4  class="discount" style="color:#f47779;">&#160;&#160;(2%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button22" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page2'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton class="product-img" ID="ImageButton16" runat="server" ImageUrl="~/images/img24.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Whisper Thick Bindazzz Nights Xxxl (400mm) 20 Sanitary Pads</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price" >&#8377;660.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice" >&#8377;653.00</h4>
                         <h4  class="discount" style="color:#f47779;">&#160;&#160;(1%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button21" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page2'); return false;" />
                   </div>
              </div>
              <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton class="product-img" style="width:9.375vw;" ID="ImageButton17" runat="server" ImageUrl="~/images/img104.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Volini Joint Xpert Pain Relief Gel Tube Of 50gm</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price" >&#8377;240.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice" >&#8377;225.00</h4>
                         <h4  class="discount" style="color:#f47779;">&#160;&#160;(6.2%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button20" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page2'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block">
                        <asp:ImageButton style="width:auto; " class="product-img" ID="ImageButton18" runat="server" ImageUrl="~/images/img22.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Foot Heal Cream</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price" >&#8377;70.00</del></h4>
                     <div style="display:flex;">
                         <h4  class="discountprice" >&#8377;65.00</h4>
                         <h4  class="discount" style="color:#f47779;">&#160;&#160;(7%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button19" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page2'); return false;" />
                   </div>
              </div>
              
        </div>
                   

            <div class="product-titles" id="productTitle2" onkeyup="searchbox()">
                <p class="product-heads" >Trending Near You</p>
                <p class="product-sub-heads">Popular in your city</p>
            </div>
              <div class="product-list3">
                  <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton style="width:7.417vw;" class="product-img" ID="ImageButton1" runat="server" ImageUrl="~/images/img100.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Shelcal 500mg Strip Of 15 Tablets</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price" >&#8377;144.00</del></h4>
                       <div style="display:flex;">
                         <h4 class="discountprice" >&#8377;132.00</h4>
                         <h4  class="discount" style="color:#f47779;">&#160;&#160;(8.3%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button18" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page2'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton class="product-img" ID="ImageButton2" runat="server" ImageUrl="~/images/img103.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">I-Pill Emergency Contraceptive Pill</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price" >&#8377;110.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice" >&#8377;99.00</h4>
                         <h4 class="discount"  style="color:#f47779;">&#160;&#160;(10%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button17" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page2'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton class="product-img" ID="ImageButton3" runat="server" ImageUrl="~/images/img105.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Accu-Chek Active Glucometer Test Strips Box Of 50</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price" >&#8377;1145.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice" >&#8377;984.00</h4>
                         <h4  class="discount" style="color:#f47779;">&#160;&#160;(14.1%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button16" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page2'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton class="product-img" ID="ImageButton4" runat="server" ImageUrl="~/images/img35.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Calcium Magnesium Vitamin D3 & Zinc - Bones & Dental Health - Bottle 60 Tabs</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price" >&#8377;599.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice" >&#8377;365.00</h4>
                         <h4  class="discount" style="color:#f47779;">&#160;&#160;(39.1%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button15" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page2'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton class="product-img" style="width:8.375vw;" ID="ImageButton5" runat="server" ImageUrl="~/images/img101.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Calcimax Forte Plus Strip Of 30 Tablets</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price" >&#8377;313.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice" >&#8377;287.00</h4>
                         <h4  class="discount" style="color:#f47779;">&#160;&#160;(8.3%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button14" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page2'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton style="width:8.96vw;" class="product-img" ID="ImageButton6" runat="server" ImageUrl="~/images/img102.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Depura 60000 Iu Vitamin D3 Oral Solution Helps Bones Healthy Aids In Boosting Immunity Sugarfree</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <de class="price" l>&#8377;109.00</de></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice" >&#8377;102.00</h4>
                         <h4  class="discount" style="color:#f47779;">&#160;&#160;(6.4%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button13" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page2'); return false;" />
                   </div>
              </div>
              
        </div>    
            
             <div style="display:flex; padding:0 100px; margin:40px 0; height:20.037vh;" >
             <div class="plus member" style="width:100%;  display:flex; align-items:start; border-radius:15px; background-color:#8678de; padding:40px;">
                 <div style="display:flex; flex-direction:column;">
                     <h2 style="color:white; margin-bottom:10px;">Become a<span style="color:#fdba2b;"> Plus </span>Member</h2>
                     <h4 style="color:#cfc9f2;  margin-bottom:10px; letter-spacing:0.5px;">And enjoy extra savings on every order</h4>
                     <div style="height:2px; width:300px; background-color:#fdba2b;" ></div>
                 </div>
                 <div style="display:flex; flex-direction:column; margin-left:100px;">
                     <h4 style="color:white; letter-spacing:0.5px; line-height:22px;">Save 5% Medicines and Beauty products and get free delivery with<br/> Plus Membership.</h4>
                    <div>
                        <asp:Button class="expbtn" ID="Button1" runat="server" Text="Explore Now" OnClientClick="return expbtn();" />
                    </div> 
                 </div>
             </div>
                 </div>

             <div class="product-titles" id="productTitle3" onkeyup="searchbox()">
                <p class="product-heads" >Wellness Essentials of the Week</p>
                <p class="product-sub-heads">Super charge your immunity with us</p>
            </div>
              <div  class="product-list3">
                  <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton style="width:7.417vw;" class="product-img" ID="ImageButton19" runat="server" ImageUrl="~/images/img106.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Softovac Constipation Powder Bottle Of 100 G</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price" >&#8377;195.00</del></h4>
                       <div style="display:flex;">
                         <h4 class="discountprice" >&#8377;146.25.00</h4>
                         <h4 class="discount"  style="color:#f47779;">&#160;&#160;(25%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button12" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page2'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton style="width:8.96vw;" class="product-img" ID="ImageButton20" runat="server" ImageUrl="~/images/img112.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Himalaya Purifying Neem Face Wash 150ml</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price" >&#8377;225.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice" >&#8377;204.75</h4>
                         <h4 class="discount"  style="color:#f47779;">&#160;&#160;(9%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button11" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page2'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton class="product-img" ID="ImageButton21" runat="server" ImageUrl="~/images/img110.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 style="margin-bottom:8px;">Aptivate Pineapple Appetite Stimulating Syrup Bottle Of 450 Ml</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price" >&#8377;330.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice" >&#8377;297.00</h4>
                         <h4  class="discount" style="color:#f47779;">&#160;&#160;(10%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button10" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page2'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton class="product-img" ID="ImageButton22" runat="server" ImageUrl="~/images/img114.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Veet Pure Hair Removal Cream For Women With No Ammonia Smell Normal Skin - 30gTabs</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price" >&#8377;89.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice" >&#8377;88.11</h4>
                         <h4 class="discount"  style="color:#f47779;">&#160;&#160;(1%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button9" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page2'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton class="product-img" style="width:8.375vw;" ID="ImageButton23" runat="server" ImageUrl="~/images/img108.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Sugar Free Gold Sweetener Powder Jar Of 100 G</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price" >&#8377;150.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice" >&#8377;145.05</h4>
                         <h4  class="discount" style="color:#f47779;">&#160;&#160;(3%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button8" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page2'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton style="width:auto;" class="product-img" ID="ImageButton24" runat="server" ImageUrl="~/images/img115.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Vicks Babyrub Soothing Balm For Babies Bottle Of 50 Ml</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price" >&#8377;185.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice" >&#8377;183.13</h4>
                         <h4 class="discount"  style="color:#f47779;">&#160;&#160;(1%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button7" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page2'); return false;" />
                   </div>
              </div>

              
        </div> 
             
             <div class="product-list3">
                  <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton style="width:7.417vw;" class="product-img" ID="ImageButton25" runat="server" ImageUrl="~/images/img117.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Dr Ortho An Ayurvedic Medicine Oil Bottle Of 120 Ml</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price" >&#8377;295.00</del></h4>
                       <div style="display:flex;">
                         <h4 class="discountprice" >&#8377;292.05</h4>
                         <h4  class="discount" style="color:#f47779;">&#160;&#160;(1%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button6" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page2'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton class="product-img" ID="ImageButton26" runat="server" ImageUrl="~/images/img119.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Indulekha Bringha Hair Oil Bottle Of 100 Ml</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price" >&#8377;432.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice" >&#8377;401.76</h4>
                         <h4  class="discount" style="color:#f47779;">&#160;&#160;(7%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button5" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page2'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton style="width:auto;" class="product-img" ID="ImageButton27" runat="server" ImageUrl="~/images/img111.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Owash Ultra Mild Oily Skin Wash</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price" >&#8377;625.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice" >&#8377;565.25</h4>
                         <h4 s class="discount" tyle="color:#f47779;">&#160;&#160;(11%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button4" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page2'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton class="product-img" ID="ImageButton28" runat="server" ImageUrl="~/images/img116.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Dabur Chyawanprakash Sugar Free - 500 Gm</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price" >&#8377;245.00</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice" >&#8377;232.75</h4>
                         <h4  class="discount" style="color:#f47779;">&#160;&#160;(5%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button3" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page2'); return false;" />
                   </div>
              </div>
               <div class="product-list2-product">
                    <div class="product-list2-product-block" >
                        <asp:ImageButton style="width:8.375vw;" class="product-img"  ID="ImageButton29" runat="server" ImageUrl="~/images/img113.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Ahaglow Advanced Tube Of 100gm Face Wash Gel</h5>
                      <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price" >&#8377;529.65</del></h4>
                     <div style="display:flex;">
                         <h4 class="discountprice" >&#8377;476.69</h4>
                         <h4  class="discount" style="color:#f47779;">&#160;&#160;(10%)</h4>
                     </div>
                   <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="Button2" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page2'); return false;" />
                   </div>
              </div>
                 <div class="product-list2-product">
                    <div class="product-list2-product-block" style=" height:19.959vh;">
                        <asp:ImageButton style=" height:auto; width:10.417vw;" class="product-img"  ID="ImageButton30" runat="server" ImageUrl="~/images/img118.png" OnClick="ImageButton_Click"/>

                    </div>
                    <h5 class="descripation">Omnigel Gel 75gm</h5>
                    <h4 style="margin-bottom:8px; color:gray;">MRP <del class="price" >&#8377;254.10</del></h4>
                     <div style="display:flex;">
                         <h4  class="discountprice" >&#8377;233.77</h4>
                         <h4 class="discount"  style="color:#f47779;">&#160;&#160;(8%)</h4>
                     </div>
                     <div style="display: flex; align-items:center; justify-content: center;">
                       <asp:Button ID="btnAddToCart2" runat="server" Text="Add to Cart" class="btnAddToCart" OnClientClick="addToCartAndRedirect(this, 'Page2'); return false;" />
                   </div>
              </div>
                 
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
        function expbtn(){
                alert("Plus Membership is not availabel right now..");
                return false;
            }
    </script>
    <script>
        document.addEventListener("DOMContentLoaded", function () {

            var logoAnimation = document.querySelector('.logo-animation');
            var mainContent = document.querySelector('.container');

            if (!sessionStorage.getItem('animationPlayed')) {

                // Fade out logo animation
                setTimeout(function () {
                    logoAnimation.style.transition = 'opacity 1s ease';
                    logoAnimation.style.opacity = '0';
                }, 2000); // Delay for logo animation

                // Hide logo animation after fade-out animation
                setTimeout(function () {
                    logoAnimation.style.display = 'none';
                    mainContent.style.transition = 'opacity 1s ease';
                    mainContent.style.opacity = '1';
                }, 3000); // Delay for main content

                // Set flag indicating animation has been played
                sessionStorage.setItem('animationPlayed', true);
            } else {
                // If animation has been played before, immediately show the main content
                var mainContent = document.querySelector('.container');
                mainContent.style.opacity = '1';
                logoAnimation.style.display = 'none';
            }
        });

  </script>

</body>
</html>
