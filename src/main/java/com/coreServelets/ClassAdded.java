package com.coreServelets;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import com.classRegistrations.dao.*;
import com.classRegistartions.beans.*;
@WebServlet("/ClassAdded")
public class ClassAdded extends HttpServlet {
	String className,day;
	@Override
	  public void doGet(HttpServletRequest request,
	                    HttpServletResponse response)
	      throws ServletException, IOException {
				
				String page = request.getParameter("page");
				String address="",error;
				if(page.equals("home")) {
					address = "/WEB-INF/adminHome.jsp";
				}
				else {
					address="/WEB-INF/classAddedOrError.jsp";
					error="1";
					String className,faculty,subject;
					className=request.getParameter("className");
					faculty = request.getParameter("fname");
					subject = request.getParameter("subject");
					addOrViewClassesDbActivity dbact = new addOrViewClassesDbActivity();
					if(dbact.addNewClass(className,faculty,subject)) {
						error = "0";
					}
			
					request.setAttribute("errorCode", error);
				}
			  	RequestDispatcher dispatcher = request.getRequestDispatcher(address);
			  	dispatcher.forward(request, response);
	  }
	
	
}




