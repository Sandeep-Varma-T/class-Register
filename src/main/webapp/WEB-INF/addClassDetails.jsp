<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Class Details</title>
<link rel="stylesheet" type="text/css" href="css/styles.css" title="style">
</head>
<body>
<div class = "addDetailsContainer">
    <div class = "addDetailsBox">
    <form action="ClassAdded" method="GET">
        <div><h3>Class Name : <% out.println(request.getParameter("className")); %></h3></div>
        <div><label for="fname" name ="type" value="fname"><b>Enter Faculty Name: </b></label></div>
        <div><input class = "fname" type="text" name="fname" required></div>
        <div><label for="subject" name ="type" value="subject"><b>Subject Name: </b></label></div>
        <div><input class = "sub" type="text" name="subject" required></div>
        <div><button id="addClassDetailsBtn" type="submit">Add Class</button>
        <input type = "hidden" name = "className" value=<%out.println(request.getParameter("className"));%>>
        <input type="hidden" name="page" value="null">
        </div>
    </form>
    </div>
    </div>
</body>
</html>