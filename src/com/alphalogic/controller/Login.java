package com.alphalogic.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.alphalogic.model.Customer;
import com.alphalogic.services.Authorize;


@WebServlet("/login")
public class Login extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String u=request.getParameter("username");
		String p=request.getParameter("password");
		System.out.println("In Login:::"+u+":::"+p);
		Customer ob= new Customer();
		ob.setEmail(u);
		ob.setPassword(p);
		
		RequestDispatcher rd;
		HttpSession session = request.getSession();
		if(Authorize.isAuthorize(ob)){
			//creating session
			
			session.setAttribute("logindata",ob);
			
			//retriving session
			//String un = (String)session.getAttribute("username");
			System.out.println("Login Successful"); 
			session.setAttribute("messagedisplay", true);
			rd=request.getRequestDispatcher("index.jsp");
			rd.include(request, response);
			
		}else{
			System.out.println("Login Not  Successful"); 
			session.setAttribute("messagedisplay", false);
			rd=request.getRequestDispatcher("index.jsp");
			rd.include(request, response);
			
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
