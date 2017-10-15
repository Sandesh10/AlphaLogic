package com.alphalogic.controller;

import java.io.IOException;
import java.util.ArrayList;

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
 * Servlet implementation class SearchActionServlet
 */
@WebServlet("/search")
public class SearchActionServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String keyword = request.getParameter("keyword");
		
		try{
			ArrayList<Product> searchlist = ProductService.search(keyword);
			HttpSession session = request.getSession();
			session.setAttribute("search", searchlist);
						
			RequestDispatcher rd = request.getRequestDispatcher("SearchResult.jsp");
			rd.include(request, response);
			
		}
		catch(Exception e){
			System.out.println("Exception in SearchActionServlet :" +e);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
