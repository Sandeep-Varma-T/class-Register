<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>class added</title>
</head>
<link rel="stylesheet" type="text/css" href="css/styles.css" title="style">
<body>
<%  String added = request.getAttribute("added").toString();
	String userEmail = request.getParameter("userEmail");
	String course = request.getParameter("course");
	System.out.println("3:- "+course);
	if(added.equals("1")){%>
	<form action = "studentHome" method = "GET">
		<div class = "addedOrErrorContainer">
	    <div class = "addedOrErrorBox">
	        <div class = "errorHead"><b>Success</b></div>
		        <div>You have been successfully registered to the class</div>
		        <div><button id="exitBtn" type="submit">Go to Home</button>
		        <input type="hidden" name="studentHome" value="goHome">
		        <input type = "hidden" name="userEmail" value=<%out.println(userEmail);%>></input>
		        <input type = "hidden" name="userCourse" value=<%out.println(course);%>></input>
	        </div>
	    </div>
	</div>
<%}else{%>
<div class = "addedOrErrorContainer">
    <div class = "addedOrErrorBox">
        <div class = "errorHead"><b>Error</b></div>
        <div>Unable to register you to the class : <br> support@ucmo.edu</div>
        <div><button id="exitBtn" type="submit">Go to Home</button>
        <input type="hidden" name="studentHome" value="goHome">
        <input type = "hidden" name="userEmail" value=<%out.println(userEmail);%>></input>
        <input type = "hidden" name="userCourse" value=<%out.println(course);%>></input>
        </div>
    </div>
</div>
</form>
<%}%>
</body>
</html>