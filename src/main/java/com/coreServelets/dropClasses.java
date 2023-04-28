package com.coreServelets;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import com.classRegistrations.dao.*;
import com.classRegistartions.beans.*;
@WebServlet("/dropClasses")
public class dropClasses extends HttpServlet {
	String className,userEmail,address = "",del="0",userCourse;
	@Override
	  public void doGet(HttpServletRequest request,
	                    HttpServletResponse response)
	      throws ServletException, IOException {
				
				String className = request.getParameter("className");
				System.out.println(className);
				String userEmail = request.getParameter("userEmail");
				String userCourse = request.getParameter("userCourse");
				
				addOrViewClassesDbActivity dbact = new addOrViewClassesDbActivity();
				int ret = dbact.deleteClass(className,userEmail);
				
				if(ret>0) {
					del="1";
				}
				
				request.setAttribute("del", del);
				request.setAttribute("userEmail", userEmail);
				request.setAttribute("userCourse", userCourse);
				
				address = "/WEB-INF/classDelConfirm.jsp";
				
			  	RequestDispatcher dispatcher = request.getRequestDispatcher(address);
			  	dispatcher.forward(request, response);
	  }
	
	
}




