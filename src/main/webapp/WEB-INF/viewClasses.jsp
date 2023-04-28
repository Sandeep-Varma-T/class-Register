<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.classRegistrations.dao.*" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Classes</title>
<link rel="stylesheet" type="text/css" href="css/styles.css" title="style">
</head>
<body>
<form action="DeleteClass" method="GET">
<div class = "tableContainer">
    <div class = "tableBox">
    	<div class = "classHead"><h3>Course : ${course} </h3></div>
    	<div class = "dayHead"><h3>Day    : ${day}</h3></div>
    	<div class = "dayHead"><h3>Sections :</h3></div>
    	
    	<% addOrViewClassesDbActivity dbact = new addOrViewClassesDbActivity();
    	studentDbActivity db = new studentDbActivity();
    	ResultSet rs = dbact.viewClasses(request.getParameter("course"),request.getParameter("day"));
    	boolean classesAvailable = false;
    	boolean headeradded = false;
    	while(rs.next()){
    		classesAvailable = true;
    		if(!headeradded){%>
    	        <table>
                <tr>
                    <th>ClassName</th>
                    <th>Timings</th>
                    <th>Faculty Name</th>
                    <th>Subject</th>
                    <th>Number Of Students enrolled</th>
                    <th>Action</th>
                </tr>
     <%headeradded=true;
     }
     int count = db.getStudentCount(rs.getString(1));
     %>
            <tr>
            <td><%out.println(rs.getString(1));%></td>
            <td><%out.println(rs.getString(4)+" to "+rs.getString(5));%></td>
            <td><%out.println(rs.getString(2));%></td>
            <td><%out.println(rs.getString(3));%></td>
            <td><%out.println(count-1);%></td>
            <td><button type = "submit" name="delete" value = <%out.println(rs.getString(1));%>>Delete this class</button></td>
        </tr>	
    	<%}%>
            
        </table>
        <%if(!classesAvailable){%>
        <div><br>There are no classes scheduled for this day.</div>
        <%}%>
    </div>
</form>
</body>
</html>