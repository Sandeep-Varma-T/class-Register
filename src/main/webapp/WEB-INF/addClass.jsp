<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.classRegistrations.dao.*" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add class</title>
<link rel="stylesheet" type="text/css" href="css/styles.css" title="style">
</head>
<body>
<div class = "addClasscontainer">
<form action="addClasses" method = "GET">
    <div class = "addClasses">
        <div>
            <h3>Course : ${course}</h3>
        </div>
        <div>
            <h3>Day : ${day} </h3>
        </div>
        <div>
            <h3>Available Classes (in 24hr format): You can only add one class at a time</h3>
        </div>
        <div>
        
        <%
           addOrViewClassesDbActivity db = new addOrViewClassesDbActivity();
           ResultSet rs = db.getAvailableClasses(request.getParameter("course"),request.getParameter("day"));
           request.setAttribute("day",request.getParameter("day"));
           request.setAttribute("course", request.getParameter("course"));
           boolean classesAvailable = false;
        	while(rs.next()){ classesAvailable = true;%>
             <div><input type="radio" class = "radioBtnAdd" name="className" value=<%out.println(rs.getString(1));%> required>
    	        <label  for="class1"><%
    	        out.println("class : "+rs.getString(2) +" to "+ rs.getString(3));%>
    	        </label></div>
        	
        	<%	
        	}
        	if(classesAvailable){%>
                </div>
                <div>
                    <div class = "addTimeBtn"><input type="submit" name = "addTime" value = "Release this class to the students"></input>
                     <input type="hidden" name="course" value=<%out.println(request.getParameter("course")); %>>
                      <input type="hidden" name="day" value=<%out.println(request.getParameter("day")); %>></div>
                </div>
            </div>
            </form>
        	
	<%} else{%>
	<div>
	<h3>No classes available.</h3>
	</div>
	<%} %>
	
</div>
</body>
</html>