<%@page import="com.alphalogic.model.Customer"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script>
		function createXMLHttp()
		{
			var xmlhttp = null;
			if (window.XMLHttpRequest)
			{   // code for IE7+, Firefox, Chrome, Opera, Safari
				xmlhttp=new XMLHttpRequest();
			}
			else
			{   // code for IE6, IE5
				xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
			}
			return xmlhttp;
		}
		var xmlhttp = createXMLHttp();
		function methodA()
		{
			var str = document.getElementById("searchspace").value;	
			xmlhttp.open("GET","getSearch.jsp?searchdata="+str,true);		  
			xmlhttp.onreadystatechange=dataHandler;
			xmlhttp.send();
		}

		function dataHandler()
		{
			if (xmlhttp.readyState==4)
			{
				if(xmlhttp.status==200)
				{				
					document.getElementById("myDiv").innerHTML=xmlhttp.responseText;			
				}
			}
		}


    </script>

 <!-- BEGIN HEADER-->
    <header id="header">
        <div class="headerbar">
 
            <div class="headerbar-left">
                <ul class="header-nav header-nav-options">
                    
                    <li class="header-nav-brand">
                        <div class="brand-holder">
                            <a href="index.jsp">
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
            
            <!-- Search Notification ACCOUNT AND CART-->
            
            <div class="headerbar-right">
                <ul class="header-nav header-nav-options ">
                    <li>
                    
                        <!-- SEARCH FORM STARTS -->
                        <form class="navbar-search" >
                            <div class="form-group">
                               <input type="text" onkeyup="methodA()" id="searchspace" class="form-control" name="keyword" placeholder="Keyword">
                            	<div id="myDiv" style="width:230px;border:1px grey"></div>
                            </div>
                            <button class="btn btn-icon-toggle ink-reaction"><i class="fa fa-search"></i></button>
                        </form>
                    </li>
                       <!-- SEARCH FORM ENDS -->
                       
                    <!--OFFER  STARTS-->
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
                                    <img class="pull-right img-circle dropdown-avatar" src="assets/img/dazzling.jpg" alt="" />
                                    <strong>Women Sale</strong>
                                    <br/>
                                    <small>50% off season sale.</small>
                                </a>
                            </li>
                            <li>
                                <a class="alert alert-callout alert-info" href="javascript:void(0);">
                                    <img class="pull-right img-circle dropdown-avatar" src=" assets/img/dazzling.jpg" alt="" />
                                    <strong>Women's outbust sale</strong>
                                    <br/>
                                    <small>20%+30% off limited sale</small>
                                </a>
                            </li>
                            <li class="dropdown-header">Options</li>
                            <li><a href="#">View all Offers <span class="pull-right"><i class="fa fa-arrow-right"></i></span></a></li>
                        </ul>                        
                    </li>
                   <!--OFFER ENDS-->
                   
					<!--TRACKING STARTS-->
                    <li class="dropdown hidden-xs header-spacing">
                        <a href="javascript:void(0);" class="btn btn-icon-toggle btn-default" data-toggle="dropdown">
                            <i class="fa fa-truck fa-2x" aria-hidden="true"></i>
                            <div class="header-text">Tracking </div>
                        </a>
                        <ul class="dropdown-menu animation-expand">
                            <li class="dropdown-header">OrderTracker</li>
                           
                            <li class="dropdown-progress">
                                <a href="javascript:void(0);">
                                    <div class="dropdown-label text-center small">
                                        <div class="form-group floating-label">
                                            <input type="text" class="form-control form-style" id="regular2">
                                            <label for="regular2">Enter Your Order No.</label>
                                        </div>
                                            <h5>OR</h5>
                                        <div class="form-group floating-label">
                                             
                                            <input type="text" class="form-control form-style" id="regular2">
                                            <label for="regular2">Registered Mobile No.</label>
                                        </div>
                                    </div>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-success" style="width: 100%"></div>
                                    </div>
                                </a>
                            </li>
                            <li class="dropdown-progress">
                                <a href="javascript:void(0);">
                                    <div class="dropdown-label">
                                        <button type="submit" class="btn btn-block ink-reaction btn-info">SUBMIT</button>
                                    </div>

                                </a>
                            </li>
                        </ul>
                    </li>
                    <!--TRACKING FORM ENDS-->

					<!--ACCOUNT FORM STARTS-->
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
                            <li>

                                <a href="javascript:void(0);" class="dropdown-toggle ink-reaction" data-toggle="dropdown">
                                    <img src=" assets/img/images.png" alt="sample image" />
                                    <span class="profile-info"><br>
							<%if(session.getAttribute("logindata")!= null)
							{
							Customer customer= (Customer)session.getAttribute("logindata");%>
							<%=customer.getEmail()%>
							<% } %>
									
								</span>
                                </a>
                            </li>
                            
                            <li><a href=" html/pages/profile.html">My profile</a></li>
                            <li><a href=" html/pages/blog/post.html">My Offers <span class="badge style-danger pull-right">2</span></a></li>
                            <li><a href=" html/pages/calendar.html">My Wishlist</a></li>
                            <li><a href="logout"><i class="fa fa-fw fa-power-off text-danger"></i> Logout</a></li>
						
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
                            if(session.getAttribute("logindata")== null){
                            HashMap map=(HashMap)session.getAttribute("cart");
                            if(map!=null)
                            	cartsize=map.size();
                            }
                            else{
                            	HashMap loginmap=(HashMap)session.getAttribute("logincart");	
                            	if(loginmap!=null)
                                	cartsize=loginmap.size();
                            }
                            
						%>
						 <sup class="badge style-danger"><%= cartsize %></sup> 
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