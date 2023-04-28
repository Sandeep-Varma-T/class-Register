<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>drop class</title>
</head>
<body>
<%if(request.getAttribute("del").equals("1")){
String courseName = request.getParameter("userCourse");
String userEmail = request.getParameter("userEmail");%>
<form action="studentHome" method="GET">
<div class = "deleteConfirmContainer">
    <div class = "deleteConfirmBox">
        <h3>Class has been successfully dropped</h3>
    </div>
    <div>
        <input class = "goHomeBtn" type="submit" name = "exit" value = "Go to Homepage"></input>
        <input type="hidden" name="studentHome" value= "goHome">
        <input type="hidden" name="userCourse" value=<%out.println(courseName);%>>
        <input type="hidden" name="userEmail" value=<%out.println(userEmail);%>>
        
    </div>
</div>
</form>
<%}else{ 
String courseName = request.getParameter("courseName");
String userEmail = request.getParameter("userEmail");%>%>
<form action="studentHome" method="GET">
<div class = "deleteConfirmContainer">
    <div class = "deleteConfirmBox">
        <h3>Unable to drop the class or the class has been already dropped. Please contact : support@ucmo.edu</h3>
    </div>
    <div>
        <input class = "goHomeBtn" type="submit" name = "exit" value = "Go to Homepage"></input>
        <input type="hidden" name="studentHome" value="goHome">
         <input type="hidden" name="userCourse" value=<%out.println(courseName);%>>
        <input type="hidden" name="userEmail" value=<%out.println(userEmail);%>>
    </div>
</div>
<%} %>
</body>
</html>