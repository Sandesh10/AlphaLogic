package com.alphalogic.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.alphalogic.model.Product;
import com.alphalogic.services.ProductService;

@WebServlet("/fetchdata")
public class Fetchdata extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int productid = Integer.parseInt(request.getParameter("pId"));
		
		Product p = new Product();
		p.setpId(productid);
		
		if(ProductService.isPresent(p)){
			Product item = ProductService.productdetail(p);
			
		HttpSession session = request.getSession();
		request.setAttribute("productdetail",item);
		
		RequestDispatcher rd = request.getRequestDispatcher("product.jsp");
		rd.include(request, response);
		
		}
		else{
			System.out.println("Product not present");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
