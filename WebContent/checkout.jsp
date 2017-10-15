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
                    <h1>Checkout</h1>
                </div>
            </div>
        </div>

        <div class="bh-position bh-position-default">
            <div class="uk-container uk-container-center">

                <ul class="uk-breadcrumb">
                    <li><a href="index.jsp">Home</a></li>
                    <li><span>Checkout</span></li>
                </ul>
				
				<% int finalcart=0;
                            
                            int tot=0;
                           
                            if(session.getAttribute("logindata")== null){
                            
                                	out.println("<h4>You have to LogIn to Checkout</h4>");
                                }
                           	else{
                            	%>
                       <form method="post" action="checkout" method="post">     	
                       <article class="uk-article">
            				<div class="uk-grid" data-uk-grid-margin> 	
                           		
                           		<div class="uk-width-medium-1-2">
                                <h2 class="bh-headline-bottom-border"><span>Billing Address</span></h2>
                                    <div class="uk-grid" data-uk-margin="{cls:'uk-margin-small-top'}">

                                        <div class="uk-width-1-2">
                                            <label class="uk-form-label" for="firstname">First Name</label>
                                            <input type="text" class="uk-form-large uk-width-1-1" name="firstname">
                                        </div>

                                        <div class="uk-width-1-2">
                                            <label class="uk-form-label" for="shop-checkout-billing-lastname">Last Name</label>
                                            <input type="text" class="uk-form-large uk-width-1-1" name="lastname">
                                        </div>

                                        <div class="uk-width-1-1">
                                            <label class="uk-form-label" for="address">Address</label>
                                            <input type="text" class="uk-form-large uk-width-1-1" name="address">
                                        </div>

                                        <div class="uk-width-1-2">
                                            <label class="uk-form-label" for="city">City</label>
                                            <input type="text" class="uk-form-large uk-width-1-1" name="city">
                                        </div>

                                        <div class="uk-width-1-2">
                                            <label class="uk-form-label" for="zipcode">Zip Code</label>
                                            <input type="text" class="uk-form-large uk-width-1-1" name="zipcode">
                                        </div>

                                        <div class="uk-width-1-1">
                                            <label class="uk-form-label" for="email">Email Address</label>
                                            <input type="text" class="uk-form-large uk-width-1-1" name="email">
                                        </div>

                                        <div class="uk-width-1-1">
                                            <label class="uk-form-label" for="phone">Phone Number</label>
                                            <input type="text" class="uk-form-large uk-width-1-1" name="phone">
                                        </div>

                                    </div>
                            </div>
                            
                            <div class="uk-width-medium-1-2">
                    <h2 class="bh-headline-bottom-border"><span>Shipping Address</span></h2>
                        <div class="uk-grid" data-uk-margin="{cls:'uk-margin-small-top'}">


                            <div class="uk-width-1-2">
                                <label class="uk-form-label" for="shipping-firstname">First Name</label>
                                <input type="text" class="uk-form-large uk-width-1-1" name="shipping-firstname">
                            </div>

                            <div class="uk-width-1-2">
                                <label class="uk-form-label" for="shipping-lastname">Last Name</label>
                                <input type="text" class="uk-form-large uk-width-1-1" name="shipping-lastname">
                            </div>

                            <div class="uk-width-1-1">
                                <label class="uk-form-label" for="shipping-address">Address</label>
                                <input type="text" class="uk-form-large uk-width-1-1" name="shipping-address">
                            </div>

                            <div class="uk-width-1-2">
                                <label class="uk-form-label" for="shipping-city">City</label>
                                <input type="text" class="uk-form-large uk-width-1-1" name="shipping-city">
                            </div>

                            <div class="uk-width-1-2">
                                <label class="uk-form-label" for="shipping-zip">Zip Code</label>
                                <input type="text" class="uk-form-large uk-width-1-1" name="shipping-zip">
                            </div>

                             <div class="uk-width-1-1">
                                <label class="uk-form-label" for="shop-checkout-note">Order Note</label>
                                <textarea rows="5" class="uk-form-large uk-width-1-1" placeholder="Notes about your order, Special Notes for Delivery" name="shop-checkout-note"></textarea>
                            </div>

                        </div>
                </div>

            </div>
            
            <%
            HashMap	logincart=(HashMap)session.getAttribute("logincart");
                                    	if(logincart!=null)
                                    	finalcart=logincart.size();
                                    	
                                    	if(finalcart==0){
                                        	out.println("There are no products in your cart");
                                        }
                                    	else{
                                            int it=0; 
                                            Set<Integer> keys = logincart.keySet();
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
            <%}
                           	
            %>
                            
                <div class="uk-grid uk-margin-large-top">

                <div class="uk-width-1-1">
                    <h2 class="bh-headline-bottom-border"><span>Select payment method</span></h2>
                    <div class="uk-panel">
                        <label><input type="radio" onclick="javascript:yesnoCheck();" name="shop-payment" id="first" value="Online Payment"> Online Payment</label>
                        <div id="if-first" style="visibility:hidden">
    						Enter your visa card number<br>
        					<input type='text' id='acc' name='acc'/>
						</div>
					</div>	
                        
                    <div class="uk-panel">
                        <label><input class="uk-margin-right" type="radio" name="shop-payment" value="Cash On Delivery"> Cash On Delivery</label>
                        
                    </div>
                    <hr>
                    <div class="uk-panel">
                        <label><input class="uk-margin-right" type="radio" name="shop-payment" value="Paypal"> Paypal</label>
                       <div>2.5% extra charge will be incured as Service Charge</div>
                    </div>
                </div>

            </div>

            <div class="uk-grid">

                <div class="uk-width-1-1">
                    <button type="submit" class="uk-button uk-button-primary">Place order</button>
                </div>

            </div>
        </article>
      	</form> 
	<%	}
                       
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
<script type="text/javascript">
function yesnoCheck() {
    if (document.getElementById('first').checked) {
        document.getElementById('if-first').style.visibility = 'visible';
    } else {
        document.getElementById('if-first').style.visibility = 'hidden';
    }
}

$(function() {

    $(".numbers-row").append('<button class="inc button">+</button><button class="dec button">-</button>');

});

$(".button").on("click", function() {

	  var $button = $(this);
	  var oldValue = $button.parent().find("input").val();

	  if ($button.value() == "+") {
		  var newVal = parseFloat(oldValue) + 1;
		} else {
	   // Don't allow decrementing below zero
	    if (oldValue > 0) {
	      var newVal = parseInt(oldValue) - 1;
	    } else {
	      newVal = 0;
	    }
	  }
	  $button.parent().find("input").val(newVal);

});
</script>

</body>

</html>