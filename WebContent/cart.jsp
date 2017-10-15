<!DOCTYPE html>
<html lang="en">
<!-------------------------------------------------------------- -->
<!--------------------------------Shopping Cart ------------------------------->
<!-------------------------------------------------------------- -->
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
    <script>
                                        function change(va,c,value)
                                        {	
                                        	var x=parseInt(document.getElementById("pp"+va).innerHTML);
                                      	var temp=parseInt(document.getElementById("totalxx").innerHTML)-x*value;
                                        
                                      	if(c==0)
                                        x=parseInt(document.getElementById("pp"+va).innerHTML)+1;
                                        else if(parseInt(document.getElementById("pp"+va).innerHTML)>1)
                                        x=parseInt(document.getElementById("pp"+va).innerHTML)-1;
                                            
                                        document.getElementById("pp"+va).innerHTML=x;
                                      
                                        document.getElementById("cost"+va).innerHTML=value*x;
                                        document.getElementById("totalxx").innerHTML=temp+x*value;
                                        temp=parseInt(document.getElementById("totalxx").innerHTML);
                                        
                                        document.getElementById("totalxy").innerHTML=temp;
                                        if(temp<500)
                                        	{document.getElementById("totalxy").innerHTML=temp+50;
                                        	document.getElementById("ship").innerHTML="* Rs. 50 Delivery Charge";
                                        	}
                                        else 
                                        	{
                                        	document.getElementById("ship").innerHTML="Free Delivery *";
                                        	}
                                        }
                                        </script>
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

        <div class="bh-position-title" style="margin-top:4%;">
            <div class="uk-container uk-container-center">
                <div class="uk-panel">
                    <h1>Cart</h1>
                </div>
            </div>
        </div>

        <div class="bh-position bh-position-default">
            <div class="uk-container uk-container-center">

                <ul class="uk-breadcrumb">
                    <li><a href="index.jsp">Home</a></li>
                    <li><span>Cart</span></li>
                </ul>
				
				<% int finalcart=0;
                            
                            int tot=0;
                           
                            if(session.getAttribute("logindata")== null){
                            HashMap	cart=(HashMap)session.getAttribute("cart");
                            	if(cart!=null)
                            	finalcart=cart.size();
                            	
                            	if(finalcart==0){
                                	out.println("<h4>There are no products in your cart</h4>");
                                }
                            	else{
								%>
									

                			<article class="uk-article">
                    		<div class="uk-grid" data-uk-grid-margin>

                        <div class="uk-width-1-1">
                            <div class="uk-overflow-container">
                                <table class="uk-table uk-table-middle uk-text-nowrap">
                                    <thead>
                                        <tr>
                                            <th>Product</th>
                                            <th>Description</th>
                                            <th class="uk-text-center">Size</th>
                                            <th class="uk-text-center">Quantity</th>
                                            <th class="uk-text-center">Subtotal</th>
                                            <th class="uk-text-center">Delete</th>
                                        </tr>
                                    </thead>

                                    <tbody>                                    
                                    <%
                                    int it=0;
                                    Set<Integer> keys = cart.keySet();
                                    for(Integer key : keys)
									{
										 Product p = (Product)cart.get(key);
										tot+=p.getpUnitPrice();
									%>  
                                        <tr>
                                        
                                    		 
                                            <td>
                                                <a href="fetchdata?pId=<%=p.getpId()%>">
                                                    <img src="<%=p.getpImageUrl()%>" width="100" height="75" alt="Product Image">
                                                </a>
                                            </td>
                                            <td>
                                                <a class="bh-text-uppercase uk-link-reset" href="fetchdata?pId=<%=p.getpId()%>"><%=p.getpName()%></a>
                                                <br>
                                                <span class="uk-text-muted uk-text-small">No. <%=p.getpId()%></span>
                                            </td>
                                            <td class="uk-text-center">Standard Size</td>
                                            <td class="uk-text-center">
                                                
											      <div class="numbers-row">
											      	<button onclick=<%="change("+it+",0,"+p.getpUnitPrice()+")"%>>+</button>
											        <%
											        int quant=p.getUnitinOrder();%>
											        
											        <span id=<%="\"pp"+it+"\"" %>><%=quant%></span>
											        <button onclick=<%="change("+it+",1,"+p.getpUnitPrice()+")"%>>-</button>
											      </div>
											    
                                            </td>
                                            <td class="uk-text-center" id=<%="\"cost"+it+"\"" %>><%=p.getpUnitPrice()%></td>
                                            <td class="uk-text-center"><a href="removeCartItem?pId=<%=p.getpId()%>"><i class="uk-icon-times"></i></a></td>
                                            <td></td>
                                            
                                        </tr>
                                       
                                        <%
                                        it++;
									}
                                        %>
                                        
                                        <tr>
                                            <td colspan="6">
                                                    <div class="uk-width-1-2">
                                                        <input type="text" placeholder="Enter coupon...">
                                                        <button class="uk-button">Apply Coupon</button>
                                                    </div>
                                                    <div class="uk-width-1-2 uk-text-right" style="float:right;">
                                                        
                                                        <a href="checkout.jsp" class="uk-button uk-button-primary">Checkout</a>
                                                    </div>
                                                
                                            </td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <div class="uk-push-1-2 uk-width-medium-1-2">
                            <div class="uk-panel uk-panel-box uk-panel-header">
                                <h3 class="uk-panel-title">Carts Total</h3>
                                <span class="uk-float-left">Cart Subtotal</span>
                                <span class="uk-float-right">Rs<span id="totalxx"> <%= tot%></span></span>
                                <br>
                                <span class="uk-float-left">Shipping </span>
                                <span class="uk-float-right" id="ship"><%
                                		int cash=tot;	
                                        if(cash>500){%>
                                        Free Delivery *
                                        <%}else{ %>
                                        * Rs. 50 Delivery Charge
                                        <%} %></span>
                                <br>
                                <br>
                                <span class="uk-float-left">Order Total Price</span>
                                <span class="uk-float-right" id="totalxy"><%
                                        if(tot>500){%>
                                        	<%= tot %>
                                        <% }
                                        else{%>
                                        <span id="totalxy"> <%= tot+50%></span>
                                <%} %>
                                
                                </span>

                                
                            </div>
                        </div>

                    </div>
                </article>
                <%
                                	        
                            			}
                           			 }
                            else{
                                      
                                        HashMap	logincart=(HashMap)session.getAttribute("logincart");
                            	if(logincart!=null)
                            	finalcart=logincart.size();
                            	
                            	if(finalcart==0){
                                	out.println("<h4>There are no products in your cart</h4>");
                                }
                            	else{
									Set<Integer> keys = logincart.keySet();
									%>
									

                			<article class="uk-article">
                    		<div class="uk-grid" data-uk-grid-margin>

                        <div class="uk-width-1-1">
                            <div class="uk-overflow-container">
                                <table class="uk-table uk-table-middle uk-text-nowrap">
                                    <thead>
                                        <tr>
                                            <th>Product</th>
                                            <th>Description</th>
                                            <th class="uk-text-center">Size</th>
                                            <th class="uk-text-center">Quantity</th>
                                            <th class="uk-text-center">Subtotal</th>
                                            <th class="uk-text-center">Delete</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <%int it=0; 
                                    for(Integer key : keys)
									{
										 Product p = (Product)logincart.get(key);
										tot+=p.getpUnitPrice();
									%>
                                        <tr>
                                        <%
                                        int a=p.getpId();
                                     
                                        	session.setAttribute("customerid",a); 
                                        %>
                                    		 
                                            <td>
                                                <a href="fetchdata?pId=<%=p.getpId()%>">
                                                    <img src="<%=p.getpImageUrl()%>" width="100" height="75" alt="Product Image">
                                                </a>
                                            </td>
                                            <td>
                                                <a class="bh-text-uppercase uk-link-reset" href="fetchdata?pId=<%=p.getpId()%>"><%=p.getpName()%></a>
                                                <br>
                                                <span class="uk-text-muted uk-text-small">No. <%=p.getpId()%></span>
                                            </td>
                                            <td class="uk-text-center">Standard Size</td>
                                            <td class="uk-text-center">
                                                
											      <div class="numbers-row">
											      	<button onclick=<%="change("+it+",0,"+p.getpUnitPrice()+")"%>>+</button>
											        <%
											        int quant=p.getUnitinOrder();%>
											        
											        <span id=<%="\"pp"+it+"\"" %>><%=quant%></span>
											        <button onclick=<%="change("+it+",1,"+p.getpUnitPrice()+")"%>>-</button>
											      </div>
											    
                                            </td>
                                            <td class="uk-text-center" id=<%="\"cost"+it+"\"" %>><%=p.getpUnitPrice()%></td>
                                            <td class="uk-text-center"><a href="removeCartItem?pId=<%=p.getpId()%>"><i class="uk-icon-times"></i></a></td>
                                            <td></td>
                                            
                                        </tr>
                                       
                                       <%
                                       it++;
									}
                                       %> 
                                        <tr>
                                            <td colspan="6">
                                                <form class="uk-form uk-grid" data-uk-margin>
                                                    <div class="uk-width-1-2">
                                                        <input type="text" placeholder="Enter coupon...">
                                                        <button class="uk-button">Apply Coupon</button>
                                                    </div>
                                                    <div class="uk-width-1-2 uk-text-right">
                                                        
                                                        <a href="checkout.jsp" class="uk-button uk-button-primary">Checkout</a>
                                                    </div>
                                                </form>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <div class="uk-push-1-2 uk-width-medium-1-2">
                            <div class="uk-panel uk-panel-box uk-panel-header">
                                <h3 class="uk-panel-title">Carts Total</h3>
                                <span class="uk-float-left">Cart Subtotal</span>
                                <span class="uk-float-right">Rs<span id="totalxx"> <%= tot%></span></span>
                                <br>
                                <span class="uk-float-left">Shipping </span>
                                <span class="uk-float-right" id="ship"><%
                                		int cash=tot;	
                                        if(cash>500){%>
                                        Free Delivery *
                                        <%}else{ %>
                                        * Rs. 50 Delivery Charge
                                        <%} %></span>
                                <br>
                                <br>
                                <span class="uk-float-left">Order Total Price</span>
                                <span class="uk-float-right" id="totalxy"><%
                                        if(tot>500){%>
                                        	<%= tot %>
                                        <% }
                                        else{%>
                                        <span id="totalxy"> <%= tot+50%></span>
                                <%} %>
                                
                                </span>

                                
                            </div>
                        </div>

                    </div>
                </article>
                <%
                                	        }
                            			}
                           			 

      %>      
</div>
</div>
</div>

	<%@ include file="menu.jsp"%>
 
    <!-- BEGIN OFFCANVAS CART -->
    <div class="offcanvas">
		
		<%@ include file="sidebar-cart.jsp"%>
		
    </div>
    <!-- END OFFCANVAS CART-->

 	<%@ include file="account.jsp"%>


</body>

</html>