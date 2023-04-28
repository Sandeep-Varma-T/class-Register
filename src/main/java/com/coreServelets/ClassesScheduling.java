package com.coreServelets;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import com.classRegistrations.dao.*;
import com.classRegistartions.beans.*;
@WebServlet("/ClassesScheduling")
public class ClassesScheduling extends HttpServlet {

	String user,pass,firstName,lastName,type,address;
	@Override
	  public void doGet(HttpServletRequest request,
	                    HttpServletResponse response)
	      throws ServletException, IOException {
		

				String course,day,page,address="";
				course = request.getParameter("course");
				day = request.getParameter("day");
				page = request.getParameter("adminClassesAction");
				System.out.println(page);
				if(page.equals("Release Classes to students for the day")) {
					
					address = "/WEB-INF/addClass.jsp";
				}
				else if(page.equals("LogOut")) {
					
					address = "/WEB-INF/LoginForm.jsp";
				}
				else {
					
					address = "/WEB-INF/viewClasses.jsp";
				}
				request.setAttribute("course", course);
				request.setAttribute("day", day);
					RequestDispatcher dispatcher = request.getRequestDispatcher(address);
					dispatcher.forward(request, response);
		
	  }
}




