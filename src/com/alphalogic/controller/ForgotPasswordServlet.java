package com.alphalogic.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.alphalogic.mail.MailSender;
import com.alphalogic.mail.RandomKeyword;
import com.alphalogic.model.Customer;
import com.alphalogic.services.Check;
import com.alphalogic.services.SetPassword;

/**
 * Servlet implementation class ForgotPasswordServlet
 */
@WebServlet("/forgotPassword")
public class ForgotPasswordServlet extends HttpServlet {   
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
	
		String email=request.getParameter("username");
		
		
		Customer cus = new Customer();
		cus.setEmail(email);
		
		
		String randomkey=(RandomKeyword.generatekey(16)).toString();
		
		if(Check.isPresent(cus)){
			if(SetPassword.newPassword(randomkey, cus)){
				cus.setPassword(randomkey);
				System.out.println("status"+cus.getPassword());
				
				if(MailSender.sendMail(cus.getEmail(), randomkey)){
				out.println("<p style='text-align:center'>New Password has been sent to your email</p>");
			}
				else
					out.println("<p style='text-align:center;color:red'>This email is not registered</p>");
		}
		}
		else
			out.println("<p style='text-align:center;color:pink'>This email is not registered</p>");

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
