package com.coreServelets;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import com.classRegistrations.dao.*;

@WebServlet("/DeleteClass")
public class DeleteClass extends HttpServlet {
	
	@Override
	  public void doGet(HttpServletRequest request,
	                    HttpServletResponse response)
	      throws ServletException, IOException {
		
		String address="";
		String del = "0";
		addOrViewClassesDbActivity dbact = new addOrViewClassesDbActivity();
		String className = request.getParameter("delete");
		String courseName = request.getParameter("courseName");
		String userEmail = request.getParameter("userEmail");
		if(dbact.deleteClass(className)) {
			del = "1";
		}
		address = "/WEB-INF/classDeleteConfirm.jsp";
		request.setAttribute("delSuccess", del);
		request.setAttribute("courseName", courseName);
		request.setAttribute("userEmail",userEmail);
		
	  	RequestDispatcher dispatcher = request.getRequestDispatcher(address);
	  	dispatcher.forward(request, response);
		
	  }
}




