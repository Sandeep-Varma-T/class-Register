package com.coreServelets;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import com.classRegistrations.dao.*;
import com.classRegistartions.beans.*;
@WebServlet("/LoginAuth")
public class LoginAuth extends HttpServlet {

	String user,pass,firstName,lastName,type,address,course;
	@Override
	  public void doPost(HttpServletRequest request,
	                    HttpServletResponse response)
	      throws ServletException, IOException {
		
		user = request.getParameter("uname");
		pass = request.getParameter("psw");
		  
		userAuthDbConnect dbcon = new userAuthDbConnect(user);
		if(dbcon.authUser()) {
			
			if(dbcon.getPass().equals(pass)) {
			
			firstName = dbcon.getFname();
			lastName = dbcon.getLname();
			type = dbcon.getType();
			course = dbcon.getCourse();
			
			UserBean bean = new UserBean();
			bean.setFirstName(firstName);
			bean.setLastName(lastName);
			bean.setEmail(user);
			bean.setType(type);
			bean.setCourse(course);
			
			request.setAttribute("userBean", bean);
			request.setAttribute("userEmail", user);
			request.setAttribute("userCourse", course);
			HttpSession session = request.getSession();
				if(type.equals("admin")) {
					address = "/WEB-INF/adminHome.jsp";
				}
				else {
					address = "/WEB-INF/studentHome.jsp";
				}	
			}
			else {
				address = "/WEB-INF/loginFailure.jsp";
			}
		}
		else {
			address = "/WEB-INF/loginFailure.jsp";
		}
		
	  	RequestDispatcher dispatcher = request.getRequestDispatcher(address);
	  	dispatcher.forward(request, response);
		
	  }
	
}
