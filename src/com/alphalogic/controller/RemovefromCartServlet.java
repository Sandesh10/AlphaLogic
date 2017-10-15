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

import com.alphalogic.model.Product;
import com.alphalogic.services.ProductService;

/**
 * Servlet implementation class RemovefromCartServlet
 */
@WebServlet("/removeCartItem")
public class RemovefromCartServlet extends HttpServlet {
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out= response.getWriter();
		response.setContentType("text/html");
		
		int productId = Integer.parseInt(request.getParameter("pId"));
		
		HttpSession session = request.getSession();
		if(session.getAttribute("logindata")== null){
            HashMap<Integer, Product> cart=(HashMap<Integer, Product>)session.getAttribute("cart");
            if(cart.containsKey(productId))
            	cart.remove(productId);
            session.setAttribute("cart", cart);
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.include(request, response);
            
		}
		else{
			HashMap<Integer, Product> logincart=(HashMap<Integer, Product>)session.getAttribute("logincart");
            if(logincart.containsKey(productId))
            	logincart.remove(productId);
            session.setAttribute("logincart", logincart);
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.include(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
