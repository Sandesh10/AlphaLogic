package com.alphalogic.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.alphalogic.model.Customer;
import com.alphalogic.model.Product;

/**
 * Servlet implementation class BuyServlet
 */
@WebServlet("/buy")
public class BuyServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String pName = request.getParameter("pName");
		String pDescription = request.getParameter("pDescription");
		String pUnitPrice = request.getParameter("pUnitPrice");
		
		Product p = new Product();
		p.setpName(pName);
		p.setpDescription(pDescription);
		p.setpUnitPrice(Integer.parseInt(pUnitPrice));
		
		HttpSession session = request.getSession();
		session.setAttribute("productinfo", p);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
