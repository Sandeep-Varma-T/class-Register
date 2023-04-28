package com.coreServelets;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {

	
	@Override
	  public void doPost(HttpServletRequest request,
	                    HttpServletResponse response)
	      throws ServletException, IOException {
		  	String address="";
		  	String action = request.getParameter("login");
		  	if(action.equals("Sign Student/Admin")) {
		  		address = "/WEB-INF/LoginForm.jsp";
		  	}
		  	RequestDispatcher dispatcher = request.getRequestDispatcher(address);
		  	dispatcher.forward(request, response);
	  }
	
}
