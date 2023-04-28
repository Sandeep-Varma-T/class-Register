package com.coreServelets;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import com.classRegistrations.dao.*;
import com.classRegistartions.beans.*;
@WebServlet("/addClasses")
public class addClasses extends HttpServlet {
	String className,day;
	@Override
	  public void doGet(HttpServletRequest request,
	                    HttpServletResponse response)
	      throws ServletException, IOException {
				String address = "/WEB-INF/addClassDetails.jsp";	
				className = request.getParameter("className");
				day = request.getParameter("day");
				request.setAttribute("className", className);
				request.setAttribute("day", day);
			  	RequestDispatcher dispatcher = request.getRequestDispatcher(address);
			  	dispatcher.forward(request, response);
	  }
	
	
}




