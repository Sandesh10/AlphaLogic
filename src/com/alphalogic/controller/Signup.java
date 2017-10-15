package com.alphalogic.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alphalogic.model.Customer;
import com.alphalogic.services.Insert;


@WebServlet("/signup")
public class Signup extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		//RequestDispatcher rd;
		//System.out.println("In SignUp:::"+request.getParameter("sCustomerEmail")+":::"+request.getParameter("sCustomerRePassword"));
		
		String uname= request.getParameter("username");
		String password = request.getParameter("password");
		String repeat = request.getParameter("re-password");
		
		if(password.equals(repeat)){
		Customer ob = new Customer();
		ob.setEmail(uname);
		ob.setPassword(password);
		 
		String e=request.getParameter("username");
		int index = e.indexOf("@");
		ob.setFirstName(request.getParameter("username").substring(0, index));
		ob.setLastName(" "); //to be filled later
		
		if(Insert.isInserted(ob)){
			/*rd = request.getRequestDispatcher("index.html");
			rd.include(request, response);*/
			out.println(1);
		}
		else{
			/*rd = request.getRequestDispatcher("index.html");
			rd.include(request, response);*/
			out.println(-1);
			
		}
		}
		else{
			out.println("<p style='color:red;'>Sign Up Unsuccessful. Please re-enter the password correctly</p>");
		}
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
