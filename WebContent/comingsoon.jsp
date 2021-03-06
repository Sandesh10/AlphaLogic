<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>ShipKart</title>

    <!-- BEGIN META -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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

    <!-- END STYLESHEETS -->


    <!-- Start WOWSlider.com HEAD section -->
    <!-- add to the <head> of your page -->
    <link rel="stylesheet" type="text/css" href="engine1/style.css" />
    <script type="text/javascript" src="engine1/jquery.js"></script>
    <!-- End WOWSlider.com HEAD section -->
</head>

<body class="menubar-hoverable header-fixed ">

	<%@ include file="outline.jsp" %>

    <!-- BEGIN BASE-->
    <div id="base">

        <div class="offcanvas">
        </div>

        <!-- BEGIN CONTENT-->
        <div id="content">

            <!-- BEGIN 404 MESSAGE -->
            <section>
                <div class="section-header">
                    <ol class="breadcrumb">
                        <li><a href="index.jsp">home</a></li>
                        <li class="active">404</li>
                    </ol>
                </div>
                <div class="section-body contain-lg">
                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <h1><span class="text-xxxl text-light">OOPs <i class="fa fa-search-minus text-primary"></i></span></h1>
                            <h2 class="text-light">This page does not exist</h2>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END 404 MESSAGE -->

            <!-- BEGIN SEARCH SECTION -->
            <section>
                <div class="section-body contain-sm">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-search"></i></span>
                        <input type="text" class="form-control" placeholder="You're searching for...">
                        <span class="input-group-btn"><button class="btn btn-primary" type="submit">Find</button></span>
                    </div>
                </div>
            </section>
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
                    <a href="index.jsp">
                        <span class="text-lg text-bold text-primary ">SHIPKART</span>
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
                    <!-- END DASHBOARD -->
                    <hr color=white>

                    <!-- BEGIN MEN -->
                    <li class="gui-folder">
                        <a>
                            <div class="gui-icon gui-icon1">
                                <!--<i class="fa fa-male" aria-hidden="true"></i>-->

                            </div>
                            <span class="title">MEN</span>
                        </a>
                        <ul>
                            <li><a href=" html/mail/inbox.html"><span class="title">CASSUAL WEAR</span></a></li>
                            <li><a href=" html/mail/compose.html"><span class="title">SPORTS WEAR</span></a></li>
                            <li><a href=" html/mail/reply.html"><span class="title">ETINIC WEAR</span></a></li>
                            <li><a href=" html/mail/message.html"><span class="title">FORMAL WEAR</span></a></li>
                            <li><a href=" html/mail/message.html"><span class="title">PARTY WEAR</span></a></li>
                        </ul>
                    </li>
                    <!-- END MEN -->


                    <!-- BEGIN WOMEN -->
                    <li class="gui-folder">
                        <a>
                            <div class="gui-icon gui-icon2"></div>
                            <span class="title">WOMEN</span>
                        </a>
                        <ul>
                            <li><a href="comingsoon.html"><span class="title">CASUAL WEAR</span></a></li>
                            <li><a href="comingsoon.html"><span class="title">ETHINIC WEAR</span></a></li>
                            <li><a href="error.html"><span class="title">FORMAL WEAR</span></a></li>
                            <li><a href=" html/ui/buttons.html"><span class="title">PARTY WEAR</span></a></li>
                            <li><a href=" html/ui/lists.html"><span class="title">SPORTS WEAR</span></a></li>
                        </ul>
                    </li>
                    <!--END WOMEN-->
                    <!--START KIDS-->
                    <li class="gui-folder">
                        <a>
                            <div class="gui-icon gui-icon3">
                            </div>
                            <span class="title">KIDS</span>
                        </a>
                        <ul>
                            <li><a href="comingsoon.html"><span class="title">CASUAL WEAR</span></a></li>
                            <li><a href="comingsoon.html"><span class="title">ETHINIC WEAR</span></a></li>
                            <li><a href="error.html"><span class="title">FORMAL WEAR</span></a></li>
                            <li><a href=" html/ui/buttons.html"><span class="title">PARTY WEAR</span></a></li>
                            <li><a href=" html/ui/lists.html"><span class="title">SPORTS WEAR</span></a></li>
                        </ul>
                    </li>
                    <!--END KIDS-->
                    <hr color=white>

                    <!--START BOOKS-->
                    <li class="gui-folder">
                        <a>
                            <div class="gui-icon"><i class="fa fa-book" aria-hidden="true"></i>
                            </div>
                            <span class="title">BOOKS</span>
                        </a>
                        <!--start submenu -->
                        <ul>
                            <li><a href="comingsoon.html"><span class="title">Top Seller</span></a></li>
                            <li><a href="comingsoon.html"><span class="title">Mathematics</span></a></li>
                            <li><a href="error.html"><span class="title">HISTORY</span></a></li>
                            <li><a href=" html/ui/buttons.html"><span class="title">SCHOOL</span></a></li>
                        </ul>
                    </li>
                    <li class="gui-folder">
                        <a>
                            <div class="gui-icon"><i class="fa fa-book" aria-hidden="true"></i>
                            </div>
                            <span class="title">COMICS</span>

                        </a>

                        <!--start submenu -->
                        <ul>
                            <li><a href="comingsoon.html"><span class="title">COMEDY</span></a></li>
                            <li><a href="comingsoon.html"><span class="title">ADVENTURE</span></a></li>
                            <li><a href="error.html"><span class="title">SERIOUS NOVEL</span></a></li>

                        </ul>
                    </li>
                    <li class="gui-folder">
                        <a>
                            <div class="gui-icon"><i class="fa fa-book" aria-hidden="true"></i>
                            </div>
                            <span class="title">MAGAZINES</span>

                        </a>
                        <!--start submenu -->
                        <ul>
                            <li><a href="comingsoon.html"><span class="title">DAILY READER</span></a></li>
                            <li><a href="comingsoon.html"><span class="title">WEEKLY READER</span></a></li>
                            <li><a href="error.html"><span class="title">MONTHLY READER</span></a></li>
                            <li><a href=" html/ui/buttons.html"><span class="title">CURRENT AFFAIRS</span></a></li>
                        </ul>
                    </li>
                    <!--END BOOKS-->
                    <HR COLOR=WHITE>

                </ul>


                <!-- END MAIN MENU -->

                <div class="menubar-foot-panel">
                    <small class="no-linebreak hidden-folded">
							<span class="opacity-75">06/08/2016</span> 
						</small>
                </div>
            </div>
        </div>

        <!-- END MENUBAR -->

        <div class="menubar-foot-panel">
            <small class="no-linebreak hidden-folded">
							<span class="opacity-75">06/08/2016</span> 
						</small>
        </div>
    </div>
    </div>

    <!-- END MENUBAR -->

    <!-- BEGIN OFFCANVAS CART -->
    <div class="offcanvas">

        <!-- BEGIN OFFCANVAS SEARCH -->
        <div id="offcanvas-search" class="offcanvas-pane width-8">

            <h3 class="cart-head">SHOPPING CART</h3>


            <!--CART PRODUCTS-->
            <div id="offcanvas-cart" class="uk-offcanvas bh-offcanvas-light">
                <table>

                    <tr class="row-border-cart">
                        <td><img src="https://n2.sdlcdn.com/imgs/a/7/t/166x194/SanDisk-16-GB-Class-4-1040079-1-21146.jpg" class="cart-img"></td>
                        <td><b>16GB Sandisk memory card</b>
                            <table>
                                <tr>
                                    <td class="cart-tble"><b>Price</b> </td>

                                    <td>Rs 899</td>
                                </tr>
                                <tr>
                                    <td class="cart-tble"><b>Quantity</b> </td>

                                    <td>
                                        <div class="form-group cd">
                                            <select id="select2" name="Quantity" class="form-control">
                                                <option value="">&nbsp;</option>
                                                <option value="30">1</option>
                                                <option value="40">2</option>
                                                <option value="50">3</option>
                                                <option value="60">4</option>
                                                <option value="70">5</option>
                                            </select>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr class="row-border-cart">
                        <td><img src="https://n2.sdlcdn.com/imgs/a/7/t/166x194/SanDisk-16-GB-Class-4-1040079-1-21146.jpg" class="cart-img"></td>
                        <td><b>16GB Sandisk memory card</b>
                            <table>
                                <tr>
                                    <td class="cart-tble"><b>Price</b> </td>

                                    <td>Rs 899</td>
                                </tr>
                                <tr>
                                    <td class="cart-tble"><b>Quantity</b> </td>

                                    <td>
                                        <div class="form-group cd">
                                            <select id="select2" name="Quantity" class="form-control">
                                                <option value="">&nbsp;</option>
                                                <option value="30">1</option>
                                                <option value="40">2</option>
                                                <option value="50">3</option>
                                                <option value="60">4</option>
                                                <option value="70">5</option>
                                            </select>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>


                </table>
                <a href="cart.html">
                    <button type="button" class="btn btn-block ink-reaction btn-info">View Cart</button>
                </a>

                <a href="checkout.html">
                    <button type="button" class="btn btn-block ink-reaction btn-info" style="margin-top:10px;">Checkout</button>
                </a>

            </div>


        </div>
    </div>
    <!-- END OFFCANVAS CART-->

    <!--LOGIN SECTION DESKTOP STARTS-->
    <div class="overlay hidden-xs hidden-sm">
        <section class="section-account" id="log-in">

            <div class="card contain-sm bc-color">
                <div class="card-body">
                    <div class="row">
                        <div class="col-sm-6">
                            <br>
                            <span class="text-lg text-bold text-primary">ShipKart</span>
                            <br>
                            <br>
                            <form class="form floating-label">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="username" name="username">
                                    <label for="username">Username</label>
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control" id="password" name="password">
                                    <label for="password">Password</label>
                                    <p class="help-block"><a href="#">Forgotten?</a></p>
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
                                    <div class="col-xs-6 text-right">
                                        <button class="btn btn-primary btn-raised" type="submit" id="btn45">Login</button>
                                    </div>
                                </div>
                            </form>
                        </div>
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
                    </div>
                </div>
            </div>
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
                            <span class="text-lg text-bold text-primary">ShipKart</span>
                            <br/>
                            <br/>
                            <form class="form floating-label">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="username" name="username">
                                    <label for="username">Username</label>
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control" id="password" name="password">
                                    <label for="password">Password</label>
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control" id="password" name="password">
                                    <label for="re-password">Re-enter Password</label>
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
                                    <div class="col-xs-6 text-right">
                                        <div class="btn btn-primary btn-raised cos-log-btn">Login</div>
                                    </div>
                                </div>
                            </form>
                        </div>
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
                    </div>
                </div>
            </div>
        </section>

    </div>

    <!--END LOGIN SECTION DESKTOP-->


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
    $("#btn45").click(function () {
        $(".login-user-sec").show();
        $(".login").hide();
        $(".overlay").hide();
    })
</script>

</html>