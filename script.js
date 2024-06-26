        //For placeholder
        function clearPlaceholder(textBox) {
            if (textBox.value === textBox.getAttribute('placeholder')) {
                textBox.value = '';
            }
        }

        function setPlaceholder(textBox) {
            if (textBox.value === '') {
                textBox.value = textBox.getAttribute('placeholder');
            }
        }


       document.addEventListener("DOMContentLoaded", function () {
           // Retrieve login information from local storage
           var txtname = localStorage.getItem("txtname");

           // Check if login information exists
           if (!txtname || txtname === 'null' || txtname === '') {
               // Hide the element if txtname is not found
               document.getElementById("name").style.display = 'none';
           } else {
               // Display login information on the page
               var name = document.getElementById("name");
               name.innerHTML = '<span style="color:white; font-size:17px; font-weight:600;">Hello, ' + txtname + '</span>';
                
           }
       });

        // JavaScript to toggle sidebar
        var sidebar = document.querySelector('.sidebar');
        var hamburger = document.querySelector('.hamburger');
        var overlay = document.querySelector('.overlay');

        function toggleSidebar() {
            var isSidebarClosed = sidebar.style.left === '-250px';
            if (isSidebarClosed) {
                sidebar.style.left = '0';
                overlay.classList.add('active');

            } else {
                sidebar.style.left = '-250px';
                overlay.classList.remove('active');
            }
        }


        function searchbox() {
            var filter = document.getElementById('find').value.toLowerCase();
            var items = document.querySelectorAll('.product-list2-product');
            var container1 = document.querySelector('.matchedItemsContainer');
            var container2 = document.querySelector('.umatchedItemsContainer');

            var matchedItems = [];
            var unmatchedItems = [];

            items.forEach(function (item) {
                var productName = item.querySelector('h5').innerText.toLowerCase();
                if (productName.indexOf(filter) > -1) {
                    matchedItems.push(item);
                } else {
                    unmatchedItems.push(item);
                }
            });

            // Remove all items from the containers
            container1.innerHTML = '';
            container2.innerHTML = '';

            // Append matched items first
            matchedItems.forEach(function (item) {
                container1.appendChild(item);
            });

            // Append unmatched items after matched items
            unmatchedItems.forEach(function (item) {
                container2.appendChild(item);
            });

            // Show or hide the message
            
            if (matchedItems.length === 0) {
                document.getElementById('noResultsMessage').style.display = '';
                document.getElementById('otherProducts').style.display = '';
                document.querySelectorAll('.product-titles').forEach(function (title) {
                    title.style.display = 'none';
                });
            } else {
                document.getElementById('noResultsMessage').style.display = 'none';
                document.getElementById('otherProducts').style.display = '';
                document.querySelectorAll('.product-titles').forEach(function (title) {
                    title.style.display = 'none';
                });
            }
        }


      // Add event listener for input changes
        document.getElementById('find').addEventListener('input', function () {
            // When the user types something, scroll the page to the top
            window.scrollTo(0, 0);
        });

 
                   
        


                    document.addEventListener("DOMContentLoaded", function () {
                        var sliderTrack = document.querySelector(".slider-track");
                        var slides = document.querySelectorAll(".slide");
                        var navIndicators = document.querySelectorAll(".slider-nav-indicator");
                        var currentIndex = 0;
                        var direction = 1; // 1 for forward, -1 for backward
                        var interval;

                        function updateSlideWidth() {
                            var sliderWidth = document.querySelector(".slider-container").offsetWidth;
                            slides.forEach(function (slide) {
                                slide.style.width = sliderWidth + "px";
                            });
                            return sliderWidth;
                        }

                        function goToSlide(index) {
                            var slideWidth = updateSlideWidth();
                            sliderTrack.style.transition = "transform 0.5s cubic-bezier(0.5, 0, 0.5, 1)";
                            sliderTrack.style.transform = "translateX(-" + index * slideWidth + "px)";
                            updateNavIndicator(index);
                        }

                        function nextSlide() {
                            currentIndex += direction;
                            if (currentIndex >= slides.length) {
                                direction = -1; // Change direction to backward when reaching the end
                                currentIndex = slides.length - 2; // Set index to the second last slide
                            } else if (currentIndex < 0) {
                                direction = 1; // Change direction to forward when reaching the beginning
                                currentIndex = 1; // Set index to the second slide
                            }
                            goToSlide(currentIndex);
                        }

                        function updateNavIndicator(index) {
                            navIndicators.forEach(function (indicator, i) {
                                if (index === slides.length - 1 && i === navIndicators.length - 1) {
                                    // If the last slide (Slide 3) is active, highlight the last navigation indicator
                                    indicator.classList.add("active");
                                } else if (i === index) {
                                    // Otherwise, highlight the corresponding navigation indicator for the active slide
                                    indicator.classList.add("active");
                                } else {
                                    // Remove the active class from other navigation indicators
                                    indicator.classList.remove("active");
                                }
                            });
                        }

                        interval = setInterval(function () {
                            nextSlide();
                        }, 4000); // Change slide every 2 seconds

                        // Immediately trigger the first slide transition
                        nextSlide();

                        window.addEventListener("resize", function () {
                            clearInterval(interval); // Clear the previous interval
                            interval = setInterval(function () {
                                nextSlide();
                            }, 2000); // Restart the interval after a delay
                            goToSlide(currentIndex); // Re-adjust slide position after resizing
                        });
                    });


                    function addToCartAndRedirect(button) {
                        var userEmail = localStorage.getItem("txtemail"); // Retrieve user's email from local storage
                        if (!userEmail) {
                            // User is not logged in, handle accordingly (e.g., show a message or redirect to login page)
                            alert("Please log in to add items to the cart.");
                            return;
                        }

                        var product = button.closest('.product-list2-product');
                        var imageSrc = product.querySelector('.product-img').src;
                        var description = product.querySelector('.descripation').innerText;
                        var discountprice = product.querySelector('.discountprice').innerText;
                        var price = product.querySelector('.price').innerText;
                        var discount = product.querySelector('.discount').innerText;

                        // Create a product object
                        var productObject = {
                            imageSrc: imageSrc,
                            description: description,
                            discountprice: discountprice,
                            price: price,
                            discount: discount
                        };

                        // Construct a unique key for the user's cart
                        var cartKey = "cart_" + userEmail;

                        // Get existing cart items from local storage or create an empty array if it doesn't exist
                        var cart = JSON.parse(localStorage.getItem(cartKey)) || [];

                        // Check if the product already exists in the cart
                        var isProductAlreadyInCart = cart.some(function (item) {
                            return item.imageSrc === productObject.imageSrc &&
                                   item.description === productObject.description &&
                                   item.discountprice === productObject.discountprice &&
                                   item.price === productObject.price &&
                                   item.discount === productObject.discount;
                        });

                        // If the product is not already in the cart, add it
                        if (!isProductAlreadyInCart) {
                            // Add the product to the cart
                            cart.push(productObject);

                            // Store the updated cart in local storage
                            localStorage.setItem(cartKey, JSON.stringify(cart));
                        } else {
                            // Product already exists in the cart, show an alert
                            alert("This product is already in your cart.");
                            return;
                        }

                        // Redirect to the cart.aspx page
                        window.location.href = 'cart.aspx';
                    }



                    
               