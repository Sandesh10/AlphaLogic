<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!------------------------------------------------------------->
<!-------------------- SignUp and Login Modal ------------------->
<!------------------------------------------------------------>

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
                    <!--
                    <script src=" assets/js/core/demo/DemoDashboard.js"></script>
-->
                    <script type="text/javascript" src=" assets/js/wowslider.js"></script>
                    <script type="text/javascript" src=" assets/js/script.js"></script>
                    <script src=" assets/js/bal/uikit/js/uikit.js"></script>
                    <script src=" assets/js/bal/holder.js"></script>
                    <script src=" assets/js/bal/uikit/js/components/slideshow.min.js"></script>
                    <script src=" assets/js/bal/uikit/js/components/slider.min.js"></script>
                    
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
                    <!-- END JAVASCRIPT -->