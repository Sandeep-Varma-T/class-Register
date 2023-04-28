<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.classRegistrations.dao.*" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Classes</title>
<link rel="stylesheet" type="text/css" href="css/styles.css" title="style">
</head>
<body>
<form action = "studentAddNewClass" method = "GET">
<div class = "registerContainer">
    <div class = "registerBox">  
        <%addOrViewClassesDbActivity dbact = new addOrViewClassesDbActivity();
       	  studentDbActivity dbStu = new studentDbActivity();
       	  String userEmail = request.getParameter("userEmail");
       	  String course = request.getParameter("userCourse");
       	  System.out.println("1 :-" + course);
       	  ResultSet rs = dbStu.viewStudentClasses(userEmail);
       	  int count = 0;
       	  while(rs.next()){
       		  count+=1;
       	  }
       	System.out.println(count);
        if(count==3){
        %>
        <div>
            <h3>Register for classes</h3>
        </div>
        <div>
            You have already registered for 3 classes. Hence you cannot register for more classes this SEM. You can go back and drop classes to add another class.
        </div>
        <%}else{%>   
        <div>
            You can register for an extra of : <%out.println((3-count)); %> classes only <br><br> Below are the classes available to add for your course.
        </div>
        <%ResultSet rs2 = dbact.viewClassesForTheCourse(course,userEmail);
        
          boolean classes = false,tableConstructed = false;
            		
          while(rs2.next()){
        	  classes = true;
        	  if(!tableConstructed){
        		  %>
        		  <div>
            	<table>
                <tr>
                    <th>Class Name</th>
                    <th>Faculty Name</th>
                    <th>Subject</th>
                    <th>Day</th>
                    <th>Time</th>
                    <th>Action</th>
                </tr>
                <%
                tableConstructed = true;
        	  }%>
        	          
                <tr>
                    <td><%out.println(rs2.getString(1));%></td>
                    <td><%out.println(rs2.getString(2));%></td>
                    <td><%out.println(rs2.getString(3));%></td>
                    <td><%out.println(rs2.getString(4));%></td>
                    <td><%out.println(rs2.getString(5)+" to "+rs2.getString(6)); %></td>
                    <td><input type="submit" name="registerBtn" value="Add Class"></input>
                    <input type = "hidden" name = "className" value=<%out.println(rs2.getString(1));%>></input>
                    <input type = "hidden" name="userEmail"value=${userEmail}></input>
                    <input type = "hidden" name="course"value=<%out.println(course);%>></input></td>
                </tr>
        <%
          }%>
            </table>
                      <%
          if(!classes){
       	%>
       	<div><h3>There are no new classes released</h3>
       	<input type = "hidden" name="course"value=<%out.println(course);%>></input></div>
       	<%} %>
        </div>
        <%}%>
	</div>
</div>
</form>
</body>
</html>