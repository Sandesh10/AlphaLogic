<%@page import="com.alphalogic.model.Product"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.alphalogic.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <link type="text/css" rel="stylesheet" href=" assets/css/theme-default/bootstrap.css?1422792965" />
    <link type="text/css" rel="stylesheet" href=" assets/css/theme-default/materialadmin.css?1425466319" />
    <link type="text/css" rel="stylesheet" href=" assets/css/theme-default/font-awesome.min.css?1422529194" />
    <link type="text/css" rel="stylesheet" href=" assets/css/theme-default/material-design-iconic-font.min.css?1421434286" />
    <link type="text/css" rel="stylesheet" href=" assets/css/theme-default/libs/rickshaw/rickshaw.css?1422792967" />
    <link type="text/css" rel="stylesheet" href=" assets/css/theme-default/libs/morris/morris.core.css?1420463396" />
    <link href=" assets/css/thumbs2.css" rel="stylesheet" />

    <link href=" assets/css/thumbnail-slider.css" rel="stylesheet" type="text/css" />
    <script src=" assets/js/thumbnail-slider.js" type="text/javascript"></script>
    <link type="text/css" rel="stylesheet" href=" assets/css/style.css" />

    <link type="text/css" rel="stylesheet" href=" assets/js/style.css" />

</head>

<body>
<!-- BEGIN HEADER-->
    <header id="header">
        <div class="headerbar">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="headerbar-left">
                <ul class="header-nav header-nav-options">
                    <li class="header-nav-brand">
                        <div class="brand-holder">
                            <a href=" html/dashboards/dashboard.html">
                                <span class="text-lg text-bold text-primary">ShipKart</span>
                            </a>
                        </div>
                    </li>
                    <li>
                        <a class="btn btn-icon-toggle menubar-toggle" data-toggle="menubar" href="javascript:void(0);">
                            <i class="fa fa-bars"></i>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="headerbar-right">
                <ul class="header-nav header-nav-options ">
                    <li>
                        <!-- Search form -->
                        <form class="navbar-search" role="search">
                            <div class="form-group">
                                <input type="text" class="form-control" name="headerSearch" placeholder="Enter your keyword">
                            </div>
                            <button type="submit" class="btn btn-icon-toggle ink-reaction"><i class="fa fa-search"></i></button>
                        </form>
                    </li>
                    <li class="dropdown hidden-xs">
                        <a href="javascript:void(0);" class="btn btn-icon-toggle btn-default header-spacing" data-toggle="dropdown">
                          <i class="fa fa-bell"></i>
                          <%
							if(session.getAttribute("logindata")!= null)
							{
						%> 
                            <sup class="badge style-danger">2</sup>
                          <%
							}
                          %>  
                            <div class="header-text">Offers</div>
                        </a>
                        <ul class="dropdown-menu animation-expand">
                            <li class="dropdown-header">Today's offers</li>
                            <li>
                                <a class="alert alert-callout alert-warning" href="javascript:void(0);">
                                    <img class="pull-right img-circle dropdown-avatar" src=" assets/img/avatar2.jpg?1404026449" alt="" />
                                    <strong>Men Sale</strong>
                                    <br/>
                                    <small>50% off season sale.</small>
                                </a>
                            </li>
                            <li>
                                <a class="alert alert-callout alert-info" href="javascript:void(0);">
                                    <img class="pull-right img-circle dropdown-avatar" src=" assets/img/avatar3.jpg?1404026799" alt="" />
                                    <strong>Women's outbust sale</strong>
                                    <br/>
                                    <small>20%+30% off limited sale</small>
                                </a>
                            </li>
                            <li class="dropdown-header">Options</li>
                            <li><a href="#">View all Offers <span class="pull-right"><i class="fa fa-arrow-right"></i></span></a></li>

                        </ul>
                        <!--end .dropdown-menu -->
                    </li>
                    <!--end .dropdown -->
                    <li class="dropdown hidden-xs header-spacing">
                        <a href="javascript:void(0);" class="btn btn-icon-toggle btn-default" data-toggle="dropdown">
                            <i class="fa fa-truck fa-2x" aria-hidden="true"></i>
                            <div class="header-text">Tracking </div>
                        </a>
                        <ul class="dropdown-menu animation-expand">
                            <li class="dropdown-header">Server load</li>
                            <li class="dropdown-progress">
                                <a href="javascript:void(0);">
                                    <div class="dropdown-label">
                                        <span class="text-light">Server load <strong>Today</strong></span>
                                        <strong class="pull-right">93%</strong>
                                    </div>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-danger" style="width: 93%"></div>
                                    </div>
                                </a>
                            </li>
                            <!--end .dropdown-progress -->
                            <li class="dropdown-progress">
                                <a href="javascript:void(0);">
                                    <div class="dropdown-label">
                                        <span class="text-light">Server load <strong>Yesterday</strong></span>
                                        <strong class="pull-right">30%</strong>
                                    </div>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-success" style="width: 30%"></div>
                                    </div>
                                </a>
                            </li>
                            <!--end .dropdown-progress -->
                            <li class="dropdown-progress">
                                <a href="javascript:void(0);">
                                    <div class="dropdown-label">
                                        <span class="text-light">Server load <strong>Lastweek</strong></span>
                                        <strong class="pull-right">74%</strong>
                                    </div>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-warning" style="width: 74%"></div>
                                    </div>
                                </a>
                            </li>
                            <!--end .dropdown-progress -->
                        </ul>
                        <!--end .dropdown-menu -->
                    </li>
                    <!--end .dropdown -->
                    <li class="dropdown hidden-xs">

                        <a href="javascript:void(0);" class="btn btn-icon-toggle btn-default header-spacing" data-toggle="dropdown">
                            <i class="fa fa-user fa-2x" aria-hidden="true"></i>
                            <div class="header-text">Account</div>
                        </a>
						
                        <ul class="dropdown-menu animation-expand">
                        <%
							if(session.getAttribute("logindata")== null)
							{
						%>
                            <li class="dropdown login" style="background-color:black;">
                                <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">

                                    <span class="profile-info">
                               <img src=" assets/img/user.png" class="img-circle img-position">
                                <div class="profile-header-text" style="color:white;">New User? <strong>REGISTER HERE</strong></div>
									<div id="Log-in-btn"><a class="btn btn-block btn-raised btn-primary top-btn-pos" href="#">LOGIN</a></div>
								</span>
                                </a>
                            </li>
                            <li class="dropdown login">
                                <a href="javascript:void(0);" class="dropdown-toggle ink-reaction" data-toggle="dropdown">
                                 Placed Orders     
                                </a>
                            </li>
                            
                            <li class="dropdown login">
                                <a href="javascript:void(0);" class="dropdown-toggle ink-reaction" data-toggle="dropdown">
                                   E-Vouchers
                                </a>
                            </li>

							<% 
							    }
							else
							{
							%>
                            <li class="dropdown login-user-sec">

                                <a href="javascript:void(0);" class="dropdown-toggle ink-reaction" data-toggle="dropdown">
                                    <img src=" assets/img/avatar1.jpg?1403934956" alt="" />
                                    <span class="profile-info"><br>
							<%if(session.getAttribute("logindata")!= null)
							{
							Customer customer= (Customer)session.getAttribute("logindata");%>
							<%=customer.getEmail()%>
							<% } %>
									
								</span>
                                </a>
                            </li>
                            <li class="dropdown-header login-user-sec">Config</li>
                            <li class="login-user-sec"><a href=" html/pages/profile.html">My profile</a></li>
                            <li class="login-user-sec"><a href=" html/pages/blog/post.html">My blog <span class="badge style-danger pull-right">16</span></a></li>
                            <li login-user-sec><a href=" html/pages/calendar.html">My appointments</a></li>
                            <li class="divider login-user-sec"></li>
                            <li class="login-user-sec"><a href=" html/pages/locked.html"><i class="fa fa-fw fa-lock"></i> Lock</a></li>
                            <li class="login-user-sec"><a href="../dashboards/dashboard.html"><i class="fa fa-fw fa-power-off text-danger"></i> Logout</a></li>
						
						<%
							}
						%>
                        </ul>
                        <!--end .dropdown-menu -->
                    </li>



                </ul>
                <!--end .header-nav-options -->

                <!--end .header-nav-profile -->
                <ul class="header-nav header-nav-toggle">
                    <li>
                        <a class="btn btn-icon-toggle btn-default header-spacing" href="#offcanvas-search" data-toggle="offcanvas" data-backdrop="false">
                            <i class="fa fa-shopping-cart fa-2x" aria-hidden="true"></i>
                            <%
                            int cartsize=0;
                            HashMap map=(HashMap)session.getAttribute("cart");
                            if(map!=null)
                            	cartsize=map.size();
						%> 
                            <sup class="badge style-danger"><%=cartsize%></sup>
                            <div class="header-text ">Shop. Cart</div>
                        </a>
                    </li>
                </ul>
                <!--end .header-nav-toggle -->
            </div>
            <!--end #header-navbar-collapse -->
        </div>
    </header>
    <!-- END HEADER-->
    
    <%
	Product product = (Product)request.getAttribute("productdetail");
    %>

        <!-- BEGIN BASE-->
    <div id="base">

        <!-- BEGIN CONTENT-->
        <div id="content">
              <section>

            <div class=" margin-top-product">
                <div class="row">

                    <div class=" col-md-4 text-center" style="margin-right:0px;">
                        <div class="card abcd">
                        <%System.out.println(product.getpImageUrl()); %>
                        <img src=" <%= product.getpImageUrl() %>" alt="Image for product" class="image-responsive img-size2" width="200px" height="250px;" />
                    </div>
                        </div>
                    <div class=" card col-md-8 abc" style="padding-bottom:10px;margin-left:0px;border:1px solid #e4e4e4;">
                        <div class="row">
                            <div class="col-md-12">
                                <h3><%= product.getpName() %></h3>
                                <div class="row">
                                    <div class="col-md-12">
                                        <span class="label label-primary">Sandesh</span>
                                        <span class="monospaced">No. <%= product.getpId() %></span>
                                    </div>
                                </div>
                                <!-- end row -->
                                <br>
                                <div class="row">
                                    <div class="col-md-12">
                                        <p class="description">
                                            <!-- Match it with a pair of shirt and casual shoes for a trendy look.  -->
                                            <%= product.getpDescription() %>
                                        </p>
                                    </div>
                                </div>
                                <!-- end row -->

                                <div class="row">
                                    <div class="col-md-3">
                                        <span class="sr-only">Four out of Five Stars</span>
                                        <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                        <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                        <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                        <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                        <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>
                                        <span class="label label-success">61</span>
                                    </div>
                                    <div class="col-md-3">
                                        <span class="monospaced" id="write-review"><a href="#reviews">Write a Review</a></span>
                                    </div>
                                </div>
                                <!-- end row -->

                                <div class="row">
                                    <div class="col-md-12">
                                        <h3 class="product-price"><%= product.getpUnitPrice() %></h3>
                                    </div>
                                </div>
                                <!-- end row -->
                                <div class="row add-to-cart">
                                    <div class="col-md-4 product-qty">
                                        <span class="btn btn-default btn-lg btn-qty">
   <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
                                        </span>
                                        <input class="btn btn-default btn-lg btn-qty" value="1"/>
                                        <input class="btn btn-default btn-lg btn-qty" type="hidden" name="pQuatityPerUnit" value="1">
                                        <span class="btn btn-default btn-lg btn-qty">
   <span class="glyphicon glyphicon-minus" aria-hidden="true"></span>
                                        </span>
                                    </div>
                                    <div class="col-md-3">
                                 
                                
                                
									
									<a href="addtocart?pId=<%=product.getpId()%>"><button type="submit" class="btn btn-primary btn-lg btn-brand btn-full-width" style="border-radius:5px;">
                                            Add to Cart
                                        </button></a>


                                        
                                    </div>

                                    <div class="col-md-3">
                                        <div class="btn btn-default btn-lg btn-brand btn-full-width" style="border-radius:5px;">
                                            Save to Wishlist
                                        </div>
                                    </div>
                                </div>
                                <!-- end row -->

                                <div class="row">
                                    <div class="col-md-4 text-center">
                                        <span class="monospaced">In Stock</span>
                                    </div>
                                    <!--div class="col-md-4 col-md-offset-1 text-center" style="margin-top:10px;">
  <a class="monospaced" href="#">Add to Shopping List</a>
 </div-->
                                </div>
                                <!-- end row -->



                                <div class="row">
                                    <div class="col-md-4 fill red"></div>
                                    <div class="col-md-4 fill green"></div>
                                    <div class="col-md-4 fill blue"></div>

                                </div>
                                <!-- end row -->

                                <hr>
                                <div class="row ">
                                    <div class="col-md-4 text-center">
                                        <p class="lightword">30 day returns</p>
                                    </div>
                                    <div class="col-md-4 col-md-offset-1 text-center">
                                        <p class="lightword">Free Delivery *</p>
                                    </div>
                                </div>
                                <!-- end row -->
                                <div class="row">
                                    <div class="col-md-12 top-10">
                                        <p>To order by telephone, <a href="#">please call 1-000-xxx-0000</a></p>
                                    </div>
                                </div>
                                <!-- end row -->




                                <!-- Nav tabs -->
                                <ul class="nav nav-tabs" role="tablist">
                                    <li role="presentation" class="active">
                                        <a href="#description" aria-controls="description" role="tab" data-toggle="tab">Description</a>
                                    </li>
                                    <li role="presentation">
                                        <a href="#features" aria-controls="features" role="tab" data-toggle="tab">Features</a>
                                    </li>
                                    <li role="presentation">
                                        <a href="#notes" aria-controls="notes" role="tab" data-toggle="tab">Notes</a>
                                    </li>
                                    <li role="presentation">
                                        <a href="#reviews" aria-controls="reviews" role="tab" data-toggle="tab">Reviews</a>
                                    </li>
                                </ul>

                                <ul class="nav nav-tabs" role="tablist">

                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane active" id="description">
                                            <p class="top-10" style="margin:5px 10px;">
                                                Made from comfortable fabric, this T-shirt will definitely be your favourite. Match it with a pair of jeans and casual shoes for a trendy look.
                                            </p>
                                            <p>
                                                <!--small>
   (source <a href="http://camerapedia.wikia.com/wiki/Kodak_Brownie_Flash_B">http://camerapedia.wikia.com/wiki/Kodak_Brownie_Flash_B</a>)
  </small-->
                                            </p>
                                        </div>
                                        <div role="tabpanel" class="tab-pane top-10" id="features">
                                            <p style="margin-left:5px;"><b>Product Details</b>
                                                <br> Black knitted T-shirt, has a round neck, short sleeves
                                                <br>
                                                <br>
                                                <b>Material & Care</b> 100% cotton
                                                <br> Machine-wash cold</p>
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="notes">
                                            <p style="margin-left:5px;">
                                                <small>Sold by Tech Connect Retail Pvt Ltd<br><br>
Applicable VAT on the basis of exact location & discount will be charged at the time of checkout<br>
100% Original Products<br>
Free Delivery on order above Rs. 999<br>
30 days returns<br>
Cash On Delivery</small>
                                            </p>
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="reviews">
                                            ...
                                        </div>
                                    </div>

                            </div>
                        </div>
                    </div>

                </div>
                <!--end row-->
            </div>
            <!--end container-->
		</section>
		</div>
		</div>

  <!-- BEGIN MENUBAR-->
            <div id="menubar" class="menubar-inverse ">
                <div class="menubar-fixed-panel">
                    <div>
                        <a class="btn btn-icon-toggle btn-default menubar-toggle" data-toggle="menubar" href="javascript:void(0);">
                            <i class="fa fa-bars"></i>
                        </a>
                    </div>
                    <div class="expanded">
                        <a href="#">
                            <span class="text-lg text-bold text-primary ">MATERIAL&nbsp;ADMIN</span>
                        </a>
                    </div>
                </div>
                <div class="menubar-scroll-panel">

                    <!-- BEGIN MAIN MENU -->
                    <ul id="main-menu" class="gui-controls">

                        <!-- BEGIN DASHBOARD -->
                        <li>
                            <a href=" html/dashboards/dashboard.html" class="active">
                                <div class="gui-icon"><i class="fa fa-tags" aria-hidden="true"></i>
                                </div>
                                <span class="title">ALL OFFERS</span>
                            </a>
                        </li>
                        <!--end /menu-li -->
                        <!-- END DASHBOARD -->

                        <!-- BEGIN EMAIL -->
                        <li class="gui-folder">
                            <a>
                                <div class="gui-icon"><i class="fa fa-male" aria-hidden="true"></i>
                                    </i>
                                </div>
                                <span class="title">MEN</span>
                            </a>
                            <!--start submenu -->
                            <ul>
                                <li><a href=" html/mail/inbox.html"><span class="title">CASSUAL WEAR</span></a></li>
                                <li><a href=" html/mail/compose.html"><span class="title">SPORTS WEAR</span></a></li>
                                <li><a href=" html/mail/reply.html"><span class="title">ETINIC WEAR</span></a></li>
                                <li><a href=" html/mail/message.html"><span class="title">FORMAL WEAR</span></a></li>
                                <li><a href=" html/mail/message.html"><span class="title">PARTY WEAR</span></a></li>
                            </ul>
                            <!--end /submenu -->
                        </li>
                        <!--end /menu-li -->
                        <!-- END EMAIL -->


                        <!-- BEGIN UI -->
                        <li class="gui-folder">
                            <a>
                                <div class="gui-icon"><i class="fa fa-female" aria-hidden="true"></i>
                                </div>
                                <span class="title">WOMEN</span>
                            </a>
                            <!--start submenu -->
                            <ul>
                                <li><a href=" html/ui/colors.html"><span class="title">CASUAL WEAR</span></a></li>
                                <li><a href=" html/ui/typography.html"><span class="title">ETHINIC WEAR</span></a></li>
                                <li><a href=" html/ui/cards.html"><span class="title">FORMAL WEAR</span></a></li>
                                <li><a href=" html/ui/buttons.html"><span class="title">PARTY WEAR</span></a></li>
                                <li><a href=" html/ui/lists.html"><span class="title">SPORTS WEAR</span></a></li>
                        	</ul>
                        </li>
                        

                        <li class="gui-folder">
                            <a>
                                <div class="gui-icon"><i class="fa fa-child" aria-hidden="true"></i>
                                </div>
                                <span class="title">KIDS</span>
                            </a>
                            <!--start submenu -->
                            <ul>
                                <li><a href=" html/ui/colors.html"><span class="title">CASUAL WEAR</span></a></li>
                                <li><a href=" html/ui/typography.html"><span class="title">ETHINIC WEAR</span></a></li>
                                <li><a href=" html/ui/cards.html"><span class="title">FORMAL WEAR</span></a></li>
                                <li><a href=" html/ui/buttons.html"><span class="title">PARTY WEAR</span></a></li>
                                <li><a href=" html/ui/lists.html"><span class="title">SPORTS WEAR</span></a></li>
                            </ul>
                        </li>

                        <li class="gui-folder">
                            <a>
                                <div class="gui-icon"><i class="fa fa-book" aria-hidden="true"></i>
                                </div>
                                <span class="title">BOOKS</span>
                            </a>
                            <!--start submenu -->
                            <ul>
                                <li><a href=" html/ui/colors.html"><span class="title">CASUAL WEAR</span></a></li>
                                <li><a href=" html/ui/typography.html"><span class="title">ETHINIC WEAR</span></a></li>
                                <li><a href=" html/ui/cards.html"><span class="title">FORMAL WEAR</span></a></li>
                                <li><a href=" html/ui/buttons.html"><span class="title">PARTY WEAR</span></a></li>
                                <li><a href=" html/ui/lists.html"><span class="title">SPORTS WEAR</span></a></li>
                            </ul>
                        </li>


                        <!--start submenu -->



                    </ul>
                    <!--end .main-menu -->
                    <!-- END MAIN MENU -->

                    <div class="menubar-foot-panel">
                        <small class="no-linebreak hidden-folded">
							<span class="opacity-75">06/08/2016</span> 
						</small>
                    </div>
                </div>
                <!--end .menubar-scroll-panel-->
            </div>
            <!--end #menubar-->
            <!-- END MENUBAR -->

            <!-- BEGIN OFFCANVAS RIGHT -->
            <div class="offcanvas">

                <!-- BEGIN OFFCANVAS SEARCH -->
                <div id="offcanvas-search" class="offcanvas-pane width-8">
                    <div class="offcanvas-head">
                        <header class="text-primary border">Your Shopping cart is Here</header>
                        <div class="offcanvas-tools">
                            <a class="btn btn-icon-toggle btn-default-light pull-right" data-dismiss="offcanvas">
                                <i class="md md-close"></i>
                            </a>
                        </div>
                    </div>
                    <!--CART PRODUCTS-->
                   <div id="offcanvas-cart" class="uk-offcanvas bh-offcanvas-light">
                <div class="uk-offcanvas-bar uk-offcanvas-bar-flip">
                    <div class="uk-panel">
                        <h3 class="bh-headline-bottom-border uk-margin-remove"><span>Cart</span></h3>
                        <table class="bh-offcanvas-shopping-cart uk-table uk-table-middle uk-margin-small-top uk-margin-bottom-remove">
                            <tbody>
                                <tr>
                                    <td>
                                        <a href="shop-singleproduct.html">
                                            <img src="http://placehold.it/100x75&text=demo" width="100" height="75" alt="Product Image">
                                        </a>
                                    </td>
                                    <td>
                                        <a class="bh-text-uppercase" href="shop-singleproduct.html">Workboots</a><br>
                                        Rs119.90
                                    </td>
                                    <td class="uk-text-center"><a href="#"><i class="uk-icon-times"></i></a></td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="shop-singleproduct.html">
                                            <img src="http://placehold.it/100x75&text=demo" width="100" height="75" alt="Product Image">
                                        </a>
                                    </td>
                                    <td>
                                        <a class="bh-text-uppercase" href="shop-singleproduct.html">Wayfarer Glasses</a><br>
                                        Rs89.90
                                    </td>
                                    <td class="uk-text-center"><a href="#"><i class="uk-icon-times"></i></a></td>
                                </tr>
                            </tbody>
                        </table>
                        <a href="shop-cart.html" class="uk-button uk-width-1-1">View Cart</a>
                        <a href="shop-checkout.html" class="uk-button uk-button-primary uk-width-1-1 uk-margin-small-top">Go to Checkout</a>
                    </div>
                </div>
            </div>
                    <button type="button" class="btn btn-block ink-reaction btn-success">Checkout</button>
                </div>
                <!--end .offcanvas-pane -->
                <!-- END OFFCANVAS SEARCH -->


            </div>
            <!--end .offcanvas-body -->
       
            <!--end .offcanvas-pane -->
            <!-- END OFFCANVAS CHAT -->

            <!--end .offcanvas-->
            <!-- END OFFCANVAS RIGHT -->

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



</html>