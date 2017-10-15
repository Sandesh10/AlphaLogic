package com.alphalogic.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Out;

import com.alphalogic.services.Insert;

/**
 * Servlet implementation class CheckoutServlet
 */
@WebServlet("/checkout")
public class CheckoutServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String firstname=request.getParameter("firstname");
		String lastname =request.getParameter("lastname");
		String address=request.getParameter("address");
		String city = request.getParameter("city");
		String zipcode =request.getParameter("zipcode");
		String email = request.getParameter("email");
		String phone=request.getParameter("phone");
		
		HttpSession session = request.getSession();
		int id = (Integer)session.getAttribute("customerid");
		
		if( Insert.insertdata(phone, city, address, zipcode,id)){
			out.println("Your product has been placed");
			
		}
	}

}
