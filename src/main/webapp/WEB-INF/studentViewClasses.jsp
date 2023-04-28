<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "com.classRegistrations.dao.*" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Classes</title>
<link rel="stylesheet" type="text/css" href="css/styles.css" title="style">
</head>
<body>
<form action="dropClasses" method="GET">
<div class = "stviewClass">
    <div class = "stviewBox">
        <div>
            <h3>My Classes</h3>
        </div>
<%
String userEmail = request.getParameter("userEmail");
String course = request.getParameter("userCourse");
addOrViewClassesDbActivity dbact = new addOrViewClassesDbActivity();
	ResultSet rs1 = dbact.viewStudentClasses(userEmail,course);
	boolean classes = false,tableAdded=false;
	while(rs1.next()){
		classes = true;
		if(!tableAdded){
			%>
			        <div>
            <table>
                <tr>
                    <th>Class Name</th>
                    <th>Faculty Name</th>
                    <th>Subject</th>
                    <th>Day</th>
                    <th>Timings</th>
                    <th>Action</th>
                </tr>
        </div>
        <%tableAdded=true;} %>
        <tr>
        <td><%out.println(rs1.getString(1));%></td>
        <td><%out.println(rs1.getString(2));%></td>
        <td><%out.println(rs1.getString(3));%></td>
        <td><%out.println(rs1.getString(4));%></td>
        <td><%out.println(rs1.getString(5)+" to "+rs1.getString(6));%></td>
        <td><button type = "submit" name="className" value = <%out.println(rs1.getString(1));%>>Drop this class</button>
        <input type = "hidden" name = "userEmail" value = <%out.println(userEmail);%>></input>
        <input type = "hidden" name = "userCourse" value = <%out.println(course);%> ></input></td>
    	</tr>
    	<% 
		}
	if(!classes){%>
	<div><h3>You have not been registered in any class. You can register in maximum of 3 classes.</h3>
	        <input type = "hidden" name = "userEmail" value = <%out.println(userEmail);%>></input>
        <input type = "hidden" name = "userCourse" value = <%out.println(course);%> ></input></div>
	<%}
%>
</table>
  </div>  
</div>
</div>
</form>
</body>
</html>