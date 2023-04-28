package com.coreServelets;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import com.classRegistrations.dao.*;

@WebServlet("/studentAddNewClass")
public class studentAddNewClass extends HttpServlet {
	String address = "";
	@Override
	  public void doGet(HttpServletRequest request,
	                    HttpServletResponse response)
	      throws ServletException, IOException {

		String className = request.getParameter("className");
		String userEmail = request.getParameter("userEmail");
		String course = request.getParameter("course");
		System.out.println("2 :- "+course);
		request.setAttribute("userEmail", userEmail);
		request.setAttribute("course", course);
		studentDbActivity dbact = new studentDbActivity();
		int ret = dbact.addNewClass(className, userEmail);
		if(ret>0) {
			request.setAttribute("added", "1");
		}
		else {
			request.setAttribute("added", "0");
		}
		
		address = "/WEB-INF/newClassAddedConfirm.jsp";
		
	  	RequestDispatcher dispatcher = request.getRequestDispatcher(address);
	  	dispatcher.forward(request, response);
	  	
	  }
	
	
}




