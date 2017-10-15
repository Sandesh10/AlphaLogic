<%@page import="com.alphalogic.model.Product"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
            <div id="offcanvas-cart" class="bh-offcanvas-light">
                <table>
					<% int cartitems=0;
                            
                            int total=0;
                            if(session.getAttribute("logindata")== null){
                            HashMap	cart=(HashMap)session.getAttribute("cart");
                            	if(cart!=null)
                            	cartitems=cart.size();
                            	
                            	if(cartitems==0){
                                	out.println("There are no products in your cart");
                                }
                            	else{
									Set<Integer> keys = cart.keySet();
		
									for(Integer key : keys)
									{
										 Product p = (Product)cart.get(key);
										total+=p.getpUnitPrice();
									%>
                    <tr class="row-border-cart">
                        <td><img src="<%=p.getpImageUrl()%>" width="100px" height="100px" class="cart-img"></td>
                        <td><b><%=p.getpName()%></b>
                            <table>
                                <tr>
                                    <td class="cart-tble"><b>Price</b> </td>

                                    <td>Rs <%=p.getpUnitPrice()%></td>
                                </tr>
                                <tr>
                                    <td>
                                    	<a href="removeCartItem?pId=<%=p.getpId()%>">Remove</a>
                                    </td>
                                </tr>
                                </table>
                                </td>
                                </tr>
                                <%
    								}
                            	}
                            }
                            else {
                            	HashMap logincart=(HashMap)session.getAttribute("logincart");	
                            	if(logincart!=null)
                                	cartitems=logincart.size();
                               
                               if(cartitems==0){
                            	out.println("There are no products in your cart");
                            }
                            else{
                            	Set<Integer> keys = logincart.keySet();
                        		
								for(Integer key : keys)
								{
									 Product p = (Product)logincart.get(key);
									total+=p.getpUnitPrice();
									%>
							<tr class="row-border-cart">
			                        <td><img src="<%=p.getpImageUrl()%>" width="100px" height="100px" class="cart-img"></td>
			                        <td><b><%=p.getpName()%></b>
			                            <table>
			                                <tr>
			                                    <td class="cart-tble"><b>Price</b> </td>

			                                    <td>Rs <%=p.getpUnitPrice()%></td>
			                                </tr>
			                                <tr>
			                                    <td>
                                    	<a href="removeCartItem?pId=<%=p.getpId()%>">Remove</a>
                                    </td>   
			                                </tr>
			                                </table>
			                                </td>
			                                </tr>
			                              <%
    								}
                            	}
                            }%>  		
                            </table>
                        </td>
                    </tr>
                </table>
                <a href="cart.jsp">
                    <div type="button" class="btn btn-block ink-reaction btn-info" style="margin-top:10px;">View Cart</div>
                </a>

                <a href="checkout.jsp">
                    <div type="button" class="btn btn-block ink-reaction btn-info" style="margin-top:10px;">Checkout</div>
                </a>

            </div>


        </div>