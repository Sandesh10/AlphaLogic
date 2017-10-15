<!DOCTYPE html>
<html lang="en">

<head>
    <title>ShipKart</title>

    <!-- BEGIN META -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="your,keywords">
    <meta name="description" content="Short explanation about this website">
    <!-- END META -->

    <!-- BEGIN STYLESHEETS -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:300italic,400italic,300,400,500,700,900' rel='stylesheet' type='text/css' />
      <link type="text/css" rel="stylesheet" href=" assets/css/theme-1/bootstrap.css" />
    <link type="text/css" rel="stylesheet" href=" assets/css/theme-1/materialadmin.css?1425466319" />
    <link type="text/css" rel="stylesheet" href=" assets/css/theme-1/font-awesome.min.css?1422529194" />
    <link type="text/css" rel="stylesheet" href=" assets/css/theme-1/material-design-iconic-font.min.css?1421434286" />
    <link type="text/css" rel="stylesheet" href=" assets/css/theme-1/libs/rickshaw/rickshaw.css?1422792967" />
    <link type="text/css" rel="stylesheet" href=" assets/css/theme-1/libs/morris/morris.core.css?1420463396" />
    <link href=" assets/css/thumbs2.css" rel="stylesheet" />

    <link href=" assets/css/thumbnail-slider.css" rel="stylesheet" type="text/css" />
    <script src=" assets/js/thumbnail-slider.js" type="text/javascript"></script>
    <link type="text/css" rel="stylesheet" href=" assets/css/style.css" />

    <link type="text/css" rel="stylesheet" href=" assets/js/style.css" />
    
    
    
    <link type="text/css" rel="stylesheet" href=" assets/css/theme.css" />

    <!-- END STYLESHEETS -->


    <!-- Start WOWSlider.com HEAD section -->
    <!-- add to the <head> of your page -->
    <link rel="stylesheet" type="text/css" href="engine2/style.css" />
    <script type="text/javascript" src="engine2/jquery.js"></script>
    <!-- End WOWSlider.com HEAD section -->
</head>

<body class="menubar-hoverable header-fixed ">

<%@ include file="outline.jsp"%>

<%
	Product product = (Product)request.getAttribute("productdetail");
    %>

    <!-- BEGIN BASE-->
    <div id="base">


        <div class="offcanvas">
        </div>

        <div class="bh-position-title" style="margin-top:4%">
            <div class="uk-container uk-container-center">
                <div class="uk-panel">
                    <h1><%= product.getpName() %></h1>
                </div>
            </div>
        </div>

        <div class="bh-position bh-position-default">
            <div class="uk-container uk-container-center">
                <div class="uk-grid" data-uk-grid-margin>

                    <div class="uk-width-1-1">

                        <ul class="uk-breadcrumb">
                            <li><a href="dashboard.html">Home</a></li>
                            <li><a href="SHOP.html">Shop</a></li>
                            <li class="uk-active"><span><%= product.getpName() %></span></li>
                        </ul>

                        <article class="uk-article">
                            <div class="uk-grid" data-uk-grid-margin>

                                <div class="uk-width-medium-1-2">
                                    <div data-uk-slideshow="{animation: 'scroll', duration: 700}">
                                        <div class="uk-grid uk-grid-small" data-uk-grid-margin>

                                            <div class="uk-width-1-1">
                                                <div class="uk-slidenav-position">
                                                    <ul class="uk-slideshow">
                                                        <li>
                                                            <figure class="uk-overlay uk-overlay-hover">
                                                                <img style="padding-left:20%" class="uk-overlay-spin" src=" <%= product.getpImageUrl() %>" width="400" height="300" alt="Product Image">
                                                                <figcaption class="uk-overlay-panel uk-overlay-icon uk-overlay-background uk-overlay-fade">FRONT VIEW</figcaption>
                                                                
                                                                <a class="uk-position-cover" href="images/shop_product-08-1.jpg" data-uk-lightbox="{group:'single_product'}"></a>
                                                            </figure>
                                                        </li>
                                                        <li>
                                                            <figure class="uk-overlay uk-overlay-hover">
                                                                <img style="padding-left:20%" class="uk-overlay-spin" src="<%= product.getpImageUrl() %>" width="400" height="300" alt="Product Image">
                                                                <figcaption class="uk-overlay-panel uk-overlay-icon uk-overlay-background uk-overlay-fade">SIDE VIEW</figcaption>
                                                               
                                                                <a class="uk-position-cover" href="images/shop_product-08-2.jpg" data-uk-lightbox="{group:'single_product'}"></a>
                                                            </figure>
                                                        </li>
                                                        <li>
                                                            <figure class="uk-overlay uk-overlay-hover">
                                                                <img style="padding-left:20%" class="uk-overlay-spin" src="<%= product.getpImageUrl() %>" width="400" height="300" alt="Product Image">
                                                                <figcaption class="uk-overlay-panel uk-overlay-icon uk-overlay-background uk-overlay-fade">REAR VIEW</figcaption>
                                                                </figcaption>
                                                                <a class="uk-position-cover" href="images/shop_product-08-3.jpg" data-uk-lightbox="{group:'single_product'}"></a>
                                                            </figure>
                                                        </li>
                                                    </ul>
                                                    <a data-uk-slideshow-item="previous" href="#" class="uk-slidenav uk-slidenav-previous"></a>
                                                    <a data-uk-slideshow-item="next" href="#" class="uk-slidenav uk-slidenav-next"></a>
                                                </div>

                                            </div>

                                            <div class="uk-width-1-3">
                                                <figure class="uk-overlay uk-overlay-hover">
                                                    <img class="uk-overlay-spin" src="<%= product.getpImageUrl() %>" width="250" height="400" alt="Product Image">
                                                    <figcaption class="uk-overlay-panel uk-overlay-icon uk-overlay-background uk-overlay-fade">FRONT VIEW</figcaption>
                                                    <a class="uk-position-cover" href="#" data-uk-slideshow-item="0"></a>
                                                </figure>
                                            </div>

                                            <div class="uk-width-1-3">
                                                <figure class="uk-overlay uk-overlay-hover">
                                                    <img class="uk-overlay-spin" src="<%= product.getpImageUrl() %>" width="250" height="400" alt="Product Image">
                                                    <figcaption class="uk-overlay-panel uk-overlay-icon uk-overlay-background uk-overlay-fade">SIDE VIEW</figcaption>
                                                    <a class="uk-position-cover" href="#" data-uk-slideshow-item="1"></a>
                                                </figure>
                                            </div>

                                            <div class="uk-width-1-3">
                                                <figure class="uk-overlay uk-overlay-hover">
                                                    <img class="uk-overlay-spin" src="<%= product.getpImageUrl() %>" width="250" height="400" alt="Product Image">
                                                    <figcaption class="uk-overlay-panel uk-overlay-icon uk-overlay-background uk-overlay-fade">REAR VIEW</figcaption>
                                                    <a class="uk-position-cover" href="#" data-uk-slideshow-item="2"></a>
                                                </figure>
                                            </div>

                                        </div>
                                    </div>

                                </div>

                                <div class="uk-width-medium-1-2">
                                    <p class="uk-text-muted uk-h3">
                                        <del>Rs <%= product.getpUnitPrice()+200 %></del>
                                        <ins>Rs <%= product.getpUnitPrice() %></ins>
                                    </p>
                                    <div>
                                        <i class="uk-icon-star uk-text-primary"></i>
                                        <i class="uk-icon-star uk-text-primary"></i>
                                        <i class="uk-icon-star uk-text-primary"></i>
                                        <i class="uk-icon-star uk-text-primary"></i>
                                        <i class="uk-icon-star"></i>
                                        <a class="uk-margin-small-left" href="#shop-single-details" data-uk-smooth-scroll="{offset: 90}">3 Customer Reviews</a>
                                    </div>
                                    <hr>
                                    <p><%=product.getpDescription() %></p>
                                    <p>
                                        Category: <a href="#">Men,</a> <a href="#">Bags,</a> <a href="#">Satchel</a>
                                        <br> Tags: <a href="#">Bags,</a> <a href="#">Leather,</a> <a href="#">Brown</a>
                                    </p>
                                    <hr>
                                        <a href="#"><i class="uk-icon-envelope-o"></i></a>
                                        <a class="uk-margin-left" href="#"><i class="uk-icon-facebook"></i></a>
                                        <a class="uk-margin-left" href="#"><i class="uk-icon-twitter"></i></a>
                                        <a class="uk-margin-left" href="#"><i class="uk-icon-google-plus"></i></a>
                                            <hr>
                                                <div class="uk-width-1-1" data-uk-margin>
                                                    
                                                    <div class="uk-button-group">
                                                        <a href="addtocart?pId=<%=product.getpId()%>">
                                                        	<div class="uk-button uk-button-primary uk-button-large">Add to cart</div>
                                                        </a>
                                                        <button class="uk-button uk-button-primary uk-button-large"><i class="uk-icon-star"></i></button>
                                                    </div>
                                                </div>
                                            

                                </div>

                            </div>
                        </article>

                    </div>

                    <div class="uk-width-1-1">
                        <ul class="uk-tab uk-tab-grid" data-uk-tab="{connect:'#shop-single-details'}">
                            <li class="uk-width-1-2 uk-active"><a href="#">Description</a></li>
                            <li class="uk-width-1-2"><a href="#">Reviews (3)</a></li>
                        </ul>
                        <ul id="shop-single-details" class="uk-switcher uk-margin">
                            <li>
                                <h3 class="uk-margin-top"><%=product.getpName() %></h3>
                                <ul>
                                    <li>Multiple sizes</li>
                                    <li>Washable</li>
                                    <li>invertable</li>
                                    <li>Mauris placerat eleifend leo</li>
                                </ul>
                                <p>
                                    Elegance is the only beauty that never fades.' - Audrey Hepburn

                                </p>
                            </li>
                            <li>
                                <div class="uk-grid" data-uk-grid-margin>

                                    <div class="uk-width-1-1">
                                        <ul class="uk-comment-list uk-margin-top">
                                            <li>
                                                <article class="uk-comment">
                                                    <header class="uk-comment-header">
                                                        <img class="uk-comment-avatar" src="assets/img/images.png" width="50" height="50" alt="User Image">
                                                        <h4 class="uk-comment-title">Sarah Miller</h4>
                                                        <div class="uk-comment-meta">
                                                            1 day ago
                                                            <span>
                                                        <i class="uk-icon-star uk-text-primary"></i>
                                                        <i class="uk-icon-star uk-text-primary"></i>
                                                        <i class="uk-icon-star uk-text-primary"></i>
                                                        <i class="uk-icon-star uk-text-primary"></i>
                                                        <i class="uk-icon-star"></i>
                                                    </span>
                                                        </div>
                                                    </header>
                                                    <div class="uk-comment-body">
                                                        <p>I like this product alot</p>
                                                    </div>
                                                </article>
                                            </li>
                                            <li>
                                                <article class="uk-comment">
                                                    <header class="uk-comment-header">
                                                        <img class="uk-comment-avatar" src="assets/img/images.png" width="50" height="50" alt="User Image">
                                                        <h4 class="uk-comment-title">Natalia Stone</h4>
                                                        <div class="uk-comment-meta">
                                                            1 day ago
                                                            <span>
                                                        <i class="uk-icon-star uk-text-primary"></i>
                                                        <i class="uk-icon-star uk-text-primary"></i>
                                                        <i class="uk-icon-star uk-text-primary"></i>
                                                        <i class="uk-icon-star"></i>
                                                        <i class="uk-icon-star"></i>
                                                    </span>
                                                        </div>
                                                    </header>
                                                    <div class="uk-comment-body">
                                                        <p>Very Reasonable product</p>
                                                    </div>
                                                </article>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="uk-width-1-1">
                                        <h3>Write a review</h3>
                                        <form class="uk-form uk-form-stacked">
                                            <div class="uk-grid" data-uk-margin="{cls:'uk-margin-top'}">
                                                <div class="uk-width-medium-1-2">
                                                    <label class="uk-form-label" for="form-singleproduct-name">Name</label>
                                                    <input type="text" placeholder="Enter your first name..." id="form-singleproduct-name" class="uk-width-1-1 uk-form-large">
                                                </div>
                                                <div class="uk-width-medium-1-2">
                                                    <label class="uk-form-label" for="form-singleproduct-mail">E-Mail</label>
                                                    <input type="text" placeholder="E-Mail address" id="form-singleproduct-mail" class="uk-width-1-1 uk-form-large">
                                                </div>
                                                <div class="uk-width-1-1">
                                                    <label class="uk-form-label" for="form-singleproduct-review">Review</label>
                                                    <textarea rows="6" placeholder="Enter you review..." id="form-singleproduct-review" class="uk-width-1-1 uk-form-large"></textarea>
                                                </div>
                                                <div class="uk-width-1-1 uk-clearfix">
                                                    <div class="uk-float-left">
                                                        Rate the product:
                                                        <i class="uk-icon-star uk-text-primary"></i>
                                                        <i class="uk-icon-star uk-text-primary"></i>
                                                        <i class="uk-icon-star uk-text-primary"></i>
                                                        <i class="uk-icon-star"></i>
                                                        <i class="uk-icon-star"></i>
                                                    </div>
                                                    <button class="uk-button bh-button uk-float-right">Submit</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>

                                </div>
                            </li>
                        </ul>
                    </div>

                    <div class="uk-width-1-1">
                        <div class="uk-panel uk-panel-header">
                            <div class="uk-panel-title">Related products</div>

                            <div class="uk-slidenav-position" data-uk-slider>

                                <div class="uk-slider-container">
                                    <ul class="uk-slider uk-grid uk-grid-width-small-1-2 uk-grid-width-medium-1-3">
                                        <li>
                                            <div class="uk-panel">

                                                <figure class="uk-overlay uk-overlay-hover bh-overlay-image">
                                                    <img src=" assets/img/pexels-photo-25641.jpg" width="720" height="540" alt="Product Image">
                                                    <img class="bh-overlay-image-hover" src=" assets/img/pexels-photo-25641.jpg" width="720" height="540" alt="Product Image Overlay">
                                                    <figcaption class="uk-overlay-panel uk-overlay-bottom uk-overlay-slide-bottom bh-padding-remove">
                                                        <div>
                                                            <div class="uk-button-group uk-width-1-1">
                                                                <a href="shop-cart.html" class="uk-button uk-button-large uk-width-8-10">Add to cart</a>
                                                                <a href="shop-wishlist.html" class="uk-button uk-button-large uk-width-2-10"><i class="uk-icon-star"></i></a>
                                                            </div>
                                                        </div>
                                                    </figcaption>
                                                    <a class="uk-position-cover" href="product.html"></a>
                                                </figure>

                                                <div class="uk-float-left uk-margin-top">
                                                    <h3 class="uk-margin-small-bottom uk-link-reset"><a href="#">Smart Satchel</a></h3>
                                                    <p class="uk-margin-remove"><a href="shop.html">Bags,</a> <a href="shop.html">Satchel</a></p>
                                                </div>
                                                <span class="uk-float-right uk-margin-top uk-text-large">Rs64.90</span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="uk-panel">
                                                <div class="uk-panel-badge uk-badge uk-badge-danger">Sale</div>

                                                <figure class="uk-overlay uk-overlay-hover bh-overlay-image">
                                                    <img src=" assets/img/pexels-photo-25641.jpg" width="720" height="540" alt="Product Image">
                                                    <img class="bh-overlay-image-hover" src=" assets/img/pexels-photo-25641.jpg" width="720" height="540" alt="Product Image Overlay">
                                                    <figcaption class="uk-overlay-panel uk-overlay-bottom uk-overlay-slide-bottom bh-padding-remove">
                                                        <div>
                                                            <div class="uk-button-group uk-width-1-1">
                                                                <a href="shop-cart.html" class="uk-button uk-button-large uk-width-8-10">Add to cart</a>
                                                                <a href="shop-wishlist.html" class="uk-button uk-button-large uk-width-2-10"><i class="uk-icon-star"></i></a>
                                                            </div>
                                                        </div>
                                                    </figcaption>
                                                    <a class="uk-position-cover" href="product.html"></a>
                                                </figure>

                                                <div class="uk-float-left uk-margin-top">
                                                    <h3 class="uk-margin-small-bottom uk-link-reset"><a href="#">Retro Satchel</a></h3>
                                                    <p class="uk-margin-remove"><a href="shop.html">Bags,</a> <a href="shop.html">Satchel</a></p>
                                                </div>
                                                <span class="uk-float-right uk-margin-top uk-text-large">
                                            <del>Rs79.90</del><br class="uk-hidden-large">
                                            <ins>Rs74.90</ins>
                                        </span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="uk-panel">
                                                <div class="uk-panel-badge uk-badge">Out of stock</div>

                                                <figure class="uk-overlay uk-overlay-hover bh-overlay-image">
                                                    <img src=" assets/img/pexels-photo-25641.jpg" width="720" height="540" alt="Product Image">
                                                    <img class="bh-overlay-image-hover" src=" assets/img/pexels-photo-25641.jpg" width="720" height="540" alt="Product Image Overlay">
                                                    <figcaption class="uk-overlay-panel uk-overlay-bottom uk-overlay-slide-bottom bh-padding-remove">
                                                        <div>
                                                            <div class="uk-button-group uk-width-1-1">
                                                                <a href="shop-cart.html" class="uk-button uk-button-large uk-width-8-10">Add to cart</a>
                                                                <a href="shop-wishlist.html" class="uk-button uk-button-large uk-width-2-10"><i class="uk-icon-star"></i></a>
                                                            </div>
                                                        </div>
                                                    </figcaption>
                                                    <a class="uk-position-cover" href="product.html"></a>
                                                </figure>

                                                <div class="uk-float-left uk-margin-top">
                                                    <h3 class="uk-margin-small-bottom uk-link-reset"><a href="#">Backpack Leather</a></h3>
                                                    <p class="uk-margin-remove"><a href="shop.html">Bags,</a> <a href="shop.html">Backpack</a></p>
                                                </div>
                                                <span class="uk-float-right uk-margin-top uk-text-large">Rs69.90</span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="uk-panel">
                                                <figure class="uk-overlay uk-overlay-hover bh-overlay-image">
                                                    <img src=" assets/img/pexels-photo-25641.jpg" width="720" height="540" alt="Product Image">
                                                    <img class="bh-overlay-image-hover" src=" assets/img/pexels-photo-25641.jpg" width="720" height="540" alt="Product Image Overlay">
                                                    <figcaption class="uk-overlay-panel uk-overlay-bottom uk-overlay-slide-bottom bh-padding-remove">
                                                        <div>
                                                            <div class="uk-button-group uk-width-1-1">
                                                                <a href="shop-cart.html" class="uk-button uk-button-large uk-width-8-10">Add to cart</a>
                                                                <a href="shop-wishlist.html" class="uk-button uk-button-large uk-width-2-10"><i class="uk-icon-star"></i></a>
                                                            </div>
                                                        </div>
                                                    </figcaption>
                                                    <a class="uk-position-cover" href="product.html"></a>
                                                </figure>

                                                <div class="uk-float-left uk-margin-top">
                                                    <h3 class="uk-margin-small-bottom uk-link-reset"><a href="#">Amercia Bag</a></h3>
                                                    <p class="uk-margin-remove"><a href="shop.html">Bags,</a> <a href="shop.html">Backpack</a></p>
                                                </div>
                                                <span class="uk-float-right uk-margin-top uk-text-large">Rs49.90</span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>

                                <a href="#" class="bh-slider-prev" data-uk-slider-item="previous"></a>
                                <a href="#" class="bh-slider-next" data-uk-slider-item="next"></a>

                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
</div>



 	<%@ include file="menu.jsp" %>

    <!-- BEGIN OFFCANVAS CART -->
    <div class="offcanvas">
		
		<%@ include file="sidebar-cart.jsp"%>
		
    </div>
    <!-- END OFFCANVAS CART-->

  	<%@ include file="account.jsp"%>
                    

</body>



</html>