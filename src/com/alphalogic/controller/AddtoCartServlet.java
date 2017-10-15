package com.alphalogic.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.alphalogic.model.Cart;
import com.alphalogic.model.Product;
import com.alphalogic.services.ProductService;

@WebServlet("/addtocart")
public class AddtoCartServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out= response.getWriter();
		response.setContentType("text/html");
		
		int productId = Integer.parseInt(request.getParameter("pId"));
		
		Product p = new Product();
		p.setpId(productId);
		Product order = ProductService.productdetail(p);
		
		HttpSession session = request.getSession();
		HashMap<Integer, Product> shoppingCart = (HashMap)session.getAttribute("cart");
		if(session.getAttribute("logindata")== null)
		{
	
		if(shoppingCart == null){
	          shoppingCart = new HashMap<Integer,Product>();
	          session.setAttribute("cart", shoppingCart);
	        }
		
        shoppingCart.put(order.getpId(),order);
        session.setAttribute("cart", shoppingCart);
		}
		else if(session.getAttribute("logindata")!= null) {
			HashMap<Integer, Product> loginShoppingCart= (HashMap)session.getAttribute("logincart"); 
			
			if(loginShoppingCart == null){
		          loginShoppingCart = new HashMap<Integer,Product>();
		          session.setAttribute("logincart", loginShoppingCart);
		        }
			
	        loginShoppingCart.put(order.getpId(),order);
	        session.setAttribute("logincart", loginShoppingCart);
			
		}
		
        RequestDispatcher rd = request.getRequestDispatcher("fetchdata?pId="+productId);
        rd.include(request,response);
        
        	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
