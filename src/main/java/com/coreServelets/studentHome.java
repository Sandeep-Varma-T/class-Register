package com.coreServelets;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import com.classRegistrations.dao.*;
import com.classRegistartions.beans.*;
@WebServlet("/studentHome")
public class studentHome extends HttpServlet {
	String className,day;
	@Override
	  public void doGet(HttpServletRequest request,
	                    HttpServletResponse response)
	      throws ServletException, IOException {

		String page,address,userEmail,course;
		page = request.getParameter("studentHome");
		userEmail = request.getParameter("userEmail");
		System.out.println(userEmail);
		course = request.getParameter("userCourse");
		System.out.println(course);
		request.setAttribute("userEmail", userEmail);
		request.setAttribute("userCourse", course);
		if(page.equals("View my classes")) {
			address = "/WEB-INF/studentViewClasses.jsp";
		}
		else if(page.equals("Log Out")) {
			address = "/WEB-INF/LoginForm.jsp";
		}
		else if(page.equals("goHome")) {
			address = "/WEB-INF/studentHome.jsp";
		}
		else {
			address = "/WEB-INF/studentAddClasses.jsp";
		}
		
	  	RequestDispatcher dispatcher = request.getRequestDispatcher(address);
	  	dispatcher.forward(request, response);
	  	
	  }
	
	
}




