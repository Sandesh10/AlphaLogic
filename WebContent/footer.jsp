<%@page import="com.alphalogic.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="java.util.HashMap"%>
<%@page import="com.alphalogic.model.Customer"%>
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
    <link type="text/css" rel="stylesheet" href="assets/css/theme-default/bootstrap.css?1422792965" />
    <link type="text/css" rel="stylesheet" href="assets/css/theme-default/materialadmin.css?1425466319" />
    <link type="text/css" rel="stylesheet" href="assets/css/theme-default/font-awesome.min.css?1422529194" />
    <link type="text/css" rel="stylesheet" href="assets/css/theme-default/material-design-iconic-font.min.css?1421434286" />
    <link type="text/css" rel="stylesheet" href="assets/css/theme-default/libs/rickshaw/rickshaw.css?1422792967" />
    <link type="text/css" rel="stylesheet" href="assets/css/theme-default/libs/morris/morris.core.css?1420463396" />
    <link href="assets/css/thumbs2.css" rel="stylesheet" />

    <link href="assets/css/thumbnail-slider.css" rel="stylesheet" type="text/css" />
    <script src="assets/js/thumbnail-slider.js" type="text/javascript"></script>
    <link type="text/css" rel="stylesheet" href="assets/css/style.css" />

    <link type="text/css" rel="stylesheet" href="assets/js/style.css" />
    <link type="text/css" rel="stylesheet" href="assets/css/theme.css" />

    <!-- END STYLESHEETS -->
</head>

<body class="menubar-hoverable header-fixed ">

	<%@ include file="outline.jsp"%>
	
	
	<%
	Product product = (Product)request.getAttribute("productdetail");
    %>
    <!-- BEGIN BASE-->
    <div id="base">
    <!-- BEGIN OFFCANVAS LEFT -->
        <div class="offcanvas">
        </div>
        <!--end .offcanvas-->
        <!-- END OFFCANVAS LEFT -->
   		<div class="bh-position-title" style="margin-top:6%">
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
                            <li><a href="frontpage.html">Home</a></li>
                            <li><a href="shop.html">Shop</a></li>
                            <li class="uk-active"><span><%= product.getpName() %></span></li>
                        </ul>

                        <article class="uk-article">
                            <div class="uk-grid" data-uk-grid-margin>

                                <div class="uk-width-medium-1-2">
                                    
                                        <div class="uk-grid uk-grid-small data-uk-grid-margin">

                                            <div class="uk-width-1-1">
                                                     <div>
                                                            <figure class="uk-overlay uk-overlay-hover">
                                                                <img class="uk-overlay-spin" src=" <%= product.getpImageUrl() %>"  alt="Product Image">
                                                            </figure>
                                                        </div>
                                                    </div>
                                                    

                                            </div>

                                    
                                </div>

                                <div class="uk-width-medium-1-2">
                                    <p class="uk-text-muted uk-h3">
                                        <del>Rs. <%= product.getpUnitPrice()+200 %></del>
                                        <ins>Rs. <%= product.getpUnitPrice() %></ins>
                                    </p>
                                    <div>
                                        <i class="uk-icon-star uk-text-primary"></i>
                                        <i class="uk-icon-star uk-text-primary"></i>
                                        <i class="uk-icon-star uk-text-primary"></i>
                                        <i class="uk-icon-star uk-text-primary"></i>
                                        <i class="uk-icon-star"></i>
                                        <a class="uk-margin-small-left" href="#shop-single-details" data-uk-smooth-scroll="{offset: 90}">3 Customer Reviews</a>
                                    </div>
                                    <span>Product No.<%= product.getpId() %> </span>
                                    <hr>
                                    <p> <%= product.getpDescription() %></p>
                                    <p>
                                        Category: <a href="shop.html">Men,</a> <a href="shop.html">Bags,</a> <a href="shop.html">Satchel</a>
                                        <br> Tags: <a href="shop.html">Bags,</a> <a href="shop.html">Leather,</a> <a href="shop.html">Brown</a>
                                    </p>
                                    <hr style="margin-bottom:5px;">
                                    
                                        <div class="row" style="margin-bottom:0px;">
                                    <div class="col-md-4 text-center">
                                        <p class="lightword">30 day returns</p>
                                    </div>
                                    <div class="col-md-4 col-md-offset-1 text-center">
                                        <p class="lightword"><%
                                        	int cash=product.getpUnitPrice();
                                        if(cash>500){%>
                                        Free Delivery *
                                        <%}else{ %>
                                        * Rs. 50 Delivery Charge
                                        <%} %>
                                        </p>
                                    </div>
                                </div>
                                   
                                            <hr style="margin-top:0px;">
                                            
                                                <div class="uk-width-1-1" data-uk-margin>
                                                    <button class="uk-button uk-button-large">-</button>
                                                    <input class="uk-form-large uk-form-width-mini" type="number" placeholder="1">
                                                    <button class="uk-button uk-button-large">+</button>
                                                    <div class="uk-button-group">
                                                        
                                                        <a href="addtocart?pId=<%=product.getpId()%>">
                                                        	<div type="submit" class="uk-button uk-button-primary uk-button-large">Add to cart</div>
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
                                <h3 class="uk-margin-top">DENIM JEANS</h3>
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
                                                        <img class="uk-comment-avatar" src="http://placehold.it/50x50&text=demo" width="50" height="50" alt="User Image">
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
                                                        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.</p>
                                                    </div>
                                                </article>
                                            </li>
                                            <li>
                                                <article class="uk-comment">
                                                    <header class="uk-comment-header">
                                                        <img class="uk-comment-avatar" src="http://placehold.it/50x50&text=demo" width="50" height="50" alt="User Image">
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
                                                        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>
                                                    </div>
                                                </article>
                                            </li>
                                            <li>
                                                <article class="uk-comment">
                                                    <header class="uk-comment-header">
                                                        <img class="uk-comment-avatar" src="http://placehold.it/50x50&text=demo" width="50" height="50" alt="User Image">
                                                        <h4 class="uk-comment-title">John Parker</h4>
                                                        <div class="uk-comment-meta">
                                                            1 day ago
                                                            <span>
                                                        <i class="uk-icon-star uk-text-primary"></i>
                                                        <i class="uk-icon-star uk-text-primary"></i>
                                                        <i class="uk-icon-star uk-text-primary"></i>
                                                        <i class="uk-icon-star uk-text-primary"></i>
                                                        <i class="uk-icon-star uk-text-primary"></i>
                                                    </span>
                                                        </div>
                                                    </header>
                                                    <div class="uk-comment-body">
                                                        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>
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
                </div>
            </div>
        </div>
   
      <%@ include file="menu.jsp"%>

            <!-- BEGIN OFFCANVAS RIGHT -->
            <div class="offcanvas">

     			  <%@ include file="sidebar-cart.jsp"%>       

            </div>
            <!--end .offcanvas-body -->
       
            <!--end .offcanvas-pane -->
            <!-- END OFFCANVAS CHAT -->

            <!--end .offcanvas-->
            <!-- END OFFCANVAS RIGHT -->
			</div>
            <!--end #base-->
           <!-- END BASE -->
		   
            <div class="overlay hidden-xs hidden-sm">
                <section class="section-account" id="log-in">

                    <div class="card contain-sm bc-color">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-6">
                                    <br/>
                                    <span class="text-lg text-bold text-primary">ShipKart Login</span>
                                    <br/>
                                    <br/>
                                    <form class="form floating-label" action="login" method="post">
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="username" name="username">
                                            <label for="username">Username</label>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" id="password" name="password">
                                            <label for="password">Password</label>
                                            <p class="help-block"><a href="resetpassword.jsp">Forgot Password?</a></p>
                                        </div>
                                        <br/>
                                        <div class="row">
                                            <div class="col-xs-6 text-left">
                                                <div class="checkbox checkbox-inline checkbox-styled">
                                                    <label>
                                                        <input type="checkbox"> <span>Remember me</span>
                                                    </label>
                                                </div>
                                            </div>
                                            <!--end .col -->
                                            <div class="col-xs-6 text-right">
                                                <button class="btn btn-primary btn-raised" type="submit" id="btn45">Login</button>
                                            </div>
                                            <!--end .col -->
                                        </div>
                                        <!--end .row -->
                                    </form>
                                </div>
                                <!--end .col -->
                                <div class="col-sm-5 col-sm-offset-1 text-center">
                                    <div class="align-sign"> <i class="fa fa-times" aria-hidden="true"></i></div>
                                    <br>
                                    <br>
                                    <h3 class="text-light">
									No account yet?
								</h3>
                                    <div id="sign-up-btn"><a class="btn btn-block btn-raised btn-primary" href="#">Sign up here</a></div>
                                    <br>
                                    <br>
                                    <h3 class="text-light">
										or
									</h3>
                                    <p>
                                        <a href="#" class="btn btn-block btn-raised btn-info"><i class="fa fa-facebook pull-left"></i>Login with Facebook</a>
                                    </p>
                                    <p>
                                        <a href="#" class="btn btn-block btn-raised btn-info"><i class="fa fa-twitter pull-left"></i>Login with Twitter</a>
                                    </p>
                                </div>
                                <!--end .col -->
                            </div>
                            <!--end .row -->
                        </div>
                        <!--end .card-body -->
                    </div>
                    <!--end .card -->
                </section>
                <!-- END LOGIN SECTION -->





                <!-- BEGIN LOGIN SECTION -->
                <section class="section-account" id="sign-up">
                    <div class="img-backdrop" style="background-image: url(' assets/img/img16.jpg')"></div>
                    <div class="spacer"></div>
                    <div class="card contain-sm bc-color">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-6">
                                    <br/>
                                    <span class="text-lg text-bold text-primary">ShipKart SignUp</span>
                                    <br/>
                                    <br/>
                                    <form class="form floating-label" action="signup" method="post">
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="username" name="username">
                                            <label for="username">Username</label>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" id="password" name="password">
                                            <label for="password">Password</label>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" id="password" name="re-password">
                                            <label for="re-password">Re-enter Password</label>
                                        </div>
                                        <br/>
                                        <div class="row">
                            
   	                                            <div class="col-xs-6 text-right">
                                                <button type="submit" class="btn btn-primary btn-raised cos-log-btn">Sign Up</button>
                                            </div>
                                            <!--end .col -->
                                        </div>
                                        <!--end .row -->
                                    </form>
                                </div>
                                <!--end .col -->
                                <div class="col-sm-5 col-sm-offset-1 text-center">
                                    <div class="align-sign"> <i class="fa fa-times" aria-hidden="true"></i></div>

                                    <br>
                                    <br>
                                    <h3 class="text-light">
									Welcome To ShipKart
								</h3>

                                    <div id="Log-in-btn"><a class="btn btn-block btn-raised btn-primary">LOGIN</a></div>
                                    <br>
                                    <br>
                                    <h3 class="text-light">
										or
									</h3>
                                    <p>
                                        <a href="#" class="btn btn-block btn-raised btn-info"><i class="fa fa-facebook pull-left"></i>Login with Facebook</a>
                                    </p>
                                    <p>
                                        <a href="#" class="btn btn-block btn-raised btn-info"><i class="fa fa-twitter pull-left"></i>Login with Twitter</a>
                                    </p>
                                </div>
                                <!--end .col -->
                            </div>
                            <!--end .row -->
                        </div>
                        <!--end .card-body -->
                    </div>
                    <!--end .card -->
                </section>

                <!--
           <script>
                    $(document).ready(function1 () {
                        $("#Log-in-btn").click(function1() {
                            $("#sign-up").fadeOut();
                
                        });
                    });
        </script>>
-->


            </div>
            <!-- BEGIN JAVASCRIPT -->
            <script src=" assets/js/libs/jquery/jquery-1.11.2.min.js"></script>
            <script src=" assets/js/libs/jquery/jquery-migrate-1.2.1.min.js"></script>
            <script src=" assets/js/libs/bootstrap/bootstrap.min.js"></script>
            <script src=" assets/js/libs/spin.js/spin.min.js"></script>
            <script src=" assets/js/libs/autosize/jquery.autosize.min.js"></script>
            <script src=" assets/js/libs/moment/moment.min.js"></script>
            <script src=" assets/js/libs/flot/jquery.flot.min.js"></script>
            <script src=" assets/js/libs/flot/jquery.flot.time.min.js"></script>
            <script src=" assets/js/libs/flot/jquery.flot.resize.min.js"></script>
            <script src=" assets/js/libs/flot/jquery.flot.orderBars.js"></script>
            <script src=" assets/js/libs/flot/jquery.flot.pie.js"></script>
            <script src=" assets/js/libs/flot/curvedLines.js"></script>
            <script src=" assets/js/libs/jquery-knob/jquery.knob.min.js"></script>
            <script src=" assets/js/libs/sparkline/jquery.sparkline.min.js"></script>
            <script src=" assets/js/libs/nanoscroller/jquery.nanoscroller.min.js"></script>
            <script src=" assets/js/libs/d3/d3.min.js"></script>
            <script src=" assets/js/libs/d3/d3.v3.js"></script>
            <script src=" assets/js/libs/rickshaw/rickshaw.min.js"></script>
            <script src=" assets/js/core/source/App.js"></script>
            <script src=" assets/js/core/source/AppNavigation.js"></script>
            <script src=" assets/js/core/source/AppOffcanvas.js"></script>
            <script src=" assets/js/core/source/AppCard.js"></script>
            <script src=" assets/js/core/source/AppForm.js"></script>
            <script src=" assets/js/core/source/AppNavSearch.js"></script>
            <script src=" assets/js/core/source/AppVendor.js"></script>
            <script src=" assets/js/core/demo/Demo.js"></script>
            <script src=" assets/js/core/demo/DemoDashboard.js"></script>
            <script type="text/javascript" src=" assets/js/wowslider.js"></script>
            <script type="text/javascript" src=" assets/js/script.js"></script>
            <!-- END JAVASCRIPT -->

</body>

<script>
    $(".overlay").hide();
    $("#Log-in-btn").click(function () {
        $(".overlay").show();

    })
    $(".align-sign").click(function () {
        $(".overlay").hide();


    })
</script>
<script>
    $("#sign-up").hide();
    $("#sign-up-btn , #Log-in-btn").on('click', function () {

        $("#log-in , #sign-up").toggle()

    });
</script>
<script>
    $(".login-user-sec").hide();
    $(".cos-log-btn").click(function () {
        $(".login-user-sec").show();
        $(".login").hide();
        $(".overlay").hide();
    })
</script>



</html>