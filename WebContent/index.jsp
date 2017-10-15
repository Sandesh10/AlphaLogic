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
    <link type="text/css" rel="stylesheet" href=" assets/css/theme-1/bootstrap.css?1422792965" />
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
    <link rel="stylesheet" type="text/css" href="engine2/style.css" />
    <script type="text/javascript" src="engine2/jquery.js"></script>
    <!-- End WOWSlider.com HEAD section -->
    <script>
	  $(function(){
		
		$("div.red").click(function(){
			$( "span" ).text( "Applying Theme..." ).show().fadeOut(2000);
		$(".button").css("background-color","##002487");
		$("form").css("background-color","#e8005f");
		});
		
		$("div.blue").click(function(){
			
		$("#button").css("color","#002487");
		$("form").css("background-color","#002487");
		});
		
		$("div.yellow").click(function(){
			$( "span" ).text( "Applying Theme..." ).show().fadeOut(2000);
		$("#button").css("color","#feca00");
		$("form").css("background-color","#feca00");
		});
		
		$("div.default").click(function(){
		$( "span" ).text( "Applying Theme..." ).show().fadeOut(2000);
		$("#button").css("color","#fff");
		$("form").css("background-color","#173e43");
		});
		
		
		
	  });
		
	  
	  </script>
</head>

<body class="menubar-hoverable header-fixed ">

   <%@ include file ="outline.jsp"%>
	
    <!-- BEGIN BASE-->
    <div id="base">

	<!-- BEGIN OFFCANVAS LEFT -->
        <div class="offcanvas">
        </div>
        <!--end .offcanvas-->
        <!-- END OFFCANVAS LEFT -->
        
        
        
   <!-- BEGIN CONTENT-->
   <div id="content">
      <section>
         <div class="section-body">
		
            <!--begin .row -->
            <div class="row">

             <!-- BEGIN SITE ACTIVITY -->
               <div class="col-md-3">
               <div class="card">
                        <div class="card-body no-padding">
                            <div class="alert alert-callout alert-info no-margin">

                                <img style="padding-top:4%;padding-bottom:4%" src=" assets/img/add/feature-11.jpg">

                            </div>
                        </div>
                        <!--end .card-body -->
                    </div>
                    <!--end .card -->  	                        	
               </div>
                  
              <div class="col-md-6">
                    <div class="card bc-color2">
                       <div id="wowslider-container1">
                      <div class="ws_images">
                        <ul>
                        <li><img src=" assets/img/pexels-photo-25641.jpg" alt="MEN winters Sale" title="MEN winters Sale" id="wows1_0" /></li>
                        <li><img src=" assets/img/pexels-photo-26549.jpg" alt="Women Off Season Sale" title="Women Off Season Sale" id="wows1_1" /></li>
                        <li><img src=" assets/img/pexels-photo-57866.jpeg" alt="Denim  on  Sale" title="Denim  on  Sale" id="wows1_2" /></li>
                        <li><img src=" assets/img/pexels-photo-92961.jpeg" alt="Kids Fashion Wear" title="Kids Fashion Wear" id="wows1_3" /></li>
                        </ul>
                       </div>
                   
                       <div class="ws_bullets">
                       <div>
                       <a href="#" title="MEN winters Sale"><span><img src=" assets/img/pexels-photo-25641.jpg" alt="MEN winters Sale"/>1</span></a>
                       <a href="#" title="Women Off Season Sale"><span><img src=" assets/img/pexels-photo-26549.jpg" alt="Women Off Season Sale"/>2</span></a>
                       <a href="#" title="Denim  on  Sale"><span><img src=" assets/img/pexels-photo-57866.jpeg" alt="Denim  on  Sale"/>3</span></a>
                       <a href="#" title="Kids Fashion Wear"><span><img src=" assets/img/pexels-photo-92961.jpeg" alt="Kids Fashion Wear"/>4</span></a>
                       </div>
                       </div>
                                    
                       <div class="ws_shadow"></div>
                       </div>
                       </div>
                       </div><!--end .col -->
						
					<div class="col-md-3">
               <div class="card">
                        <div class="card-body no-padding">
                            <div class="alert alert-callout alert-info no-margin">

                                <img style="padding-top:2%;padding-bottom:2%;" src=" assets/img/add/feature-222.jpg">

                            </div>
                        </div>
                        <!--end .card-body -->
                    </div>
                    <!--end .card -->  	                        	
               </div>	
						
						
					</div>
                    <!--end .row -->
              </div>
            <!--end .card -->
			
                    
                    <div class="row">
                        <div class="card card-underline" style="margin:0px;">
							
                            <div class="card-body no-pad">
                                <img src=" assets/img/top-banner.jpeg" class="img-responsive" style="width:100%;">
                            </div>
                            <!--end .card-body -->
                        </div>
                        <!-- BEGIN ALERT - REVENUE -->

                    </div>

                    <div class="card-head">FEATURED PRODUCTS</div>
                    <div class="row">
                        <div class="card" style="padding-top:20px;">

                            <div class="row">
                                <div style="max-width:90%;margin:0 auto;">

                                    <div>
                                        <div id="thumbnail-slider">
                                            <div class="inner">
                                                <ul>
                                                   <li>
                                                        <a href="fetchdata?pId=2016001001 ">
                                                            <div class="card">
                                                                <div class="card-head"><img src=" assets/img/product/tshirt-2.jpg" width="326" height="195" class="img-size"></div>
                                                                <div class="bottom-text-card">NIKE COLLECTION</div>
                                                            </div>

                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="fetchdata?pId=2016002001 ">
                                                            <div class="card">
                                                                <div class="card-head"><img src=" assets/img/product/shoes.jpg" width="326" height="195" class="img-size"></div>
                                                                <div class="bottom-text-card">LADIES SHOES</div>
                                                            </div>

                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href=" ">
                                                            <div class="card">
                                                                <div class="card-head"><img src=" assets/img/product/bag.jpg" width="326" height="195" class="img-size"></div>
                                                                <div class="bottom-text-card">LADIES BAGS</div>
                                                            </div>
                                                            <br>

                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="fetchdata?pId=2016001001">
                                                            <div class="card">
                                                                <div class="card-head"><img src=" assets/img/product/kids.jpg" width="326" height="195" class="img-size"></div>
                                                                <div class="bottom-text-card">KIDS COLLECTION</div>
                                                            </div>

                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="">
                                                            <div class="card">
                                                                <div class="card-head"><img src=" assets/img/add/American-swan-Men-Polos.jpg" width="326" height="195" class="img-size"><span></span></div>
                                                                <div class="bottom-text-card">CASUAL T-SHIRTS</div>
                                                            </div>

                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href=" ">
                                                            <div class="card">
                                                                <div class="card-head"><img src=" assets/img/product/jeans.jpg" width="326" height="195" class="img-size"></div>
                                                                <div class="bottom-text-card">JEANS COLLECTION</div>
                                                            </div>
                                                        </a>
                                                    </li>
                                                </ul>

                                            </div>
                                        </div>
                                    </div>
                                </div>


								</div>
                                <!--end .row -->
                            </div>
                            </div>
                            <!--end .section-body -->
            </section>
            </div>
            <!--end #content-->
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="card">
                        <div class="card-body no-padding">
                            <div class="alert alert-callout alert-info no-margin">

                                <img src=" assets/img/product/sample.jpg" width="95%">

                            </div>
                        </div>
                        <!--end .card-body -->
                    </div>
                    <!--end .card -->
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="card">
                        <div class="card-body no-padding">
                            <div class="alert alert-callout alert-info no-margin">

                                <img src=" assets/img/product/casual-shoes.jpg" width="93%">

                            </div>
                        </div>
                        <!--end .card-body -->
                    </div>
                    <!--end .card -->
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="card">
                        <div class="card-body no-padding">
                            <div class="alert alert-callout alert-info no-margin">

                                <img src="assets/img/product/product-2.jpg" width="95%">

                            </div>
                        </div>
                        <!--end .card-body -->
                    </div>
                    <!--end .card -->
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="card">
                        <div class="card-body no-padding">
                            <div class="alert alert-callout alert-info no-margin">

                                <img src=" assets/img/add/Xolo.jpg">

                            </div>
                        </div>
                        <!--end .card-body -->
                    </div>
                    <!--end .card -->
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="card">
                        <div class="card-body no-padding">
                            <div class="alert alert-callout alert-info no-margin">

                                <img src=" assets/img/dazzling.jpg">

                            </div>
                        </div>
                        <!--end .card-body -->
                    </div>
                    <!--end .card -->
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="card">
                        <div class="card-body no-padding">
                            <div class="alert alert-callout alert-info no-margin">

                                <img src=" assets/img/add/intexbrf.jpg">

                            </div>
                        </div>
                        <!--end .card-body -->
                    </div>
                    <!--end .card -->
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="card">
                        <div class="card-body no-padding">
                            <div class="alert alert-callout alert-info no-margin">

                                <img src=" assets/img/add/Watchesre.jpg">

                            </div>
                        </div>
                        <!--end .card-body -->
                    </div>
                    <!--end .card -->
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="card">
                        <div class="card-body no-padding">
                            <div class="alert alert-callout alert-info no-margin">

                                <img src=" assets/img/add/Xolo.jpg">

                            </div>
                        </div>
                        <!--end .card-body -->
                    </div>
                    <!--end .card -->
                </div>
            </div>
            <!-- END CONTENT -->

              <%@ include file ="menu.jsp"%>
            

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
		   
            <%@ include file="account.jsp"%>
            
           

</body>



</html>