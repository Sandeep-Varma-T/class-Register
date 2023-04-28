<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>class deletion</title>
<link rel="stylesheet" type="text/css" href="css/styles.css" title="style">
</head>
<body>
<%if(request.getAttribute("delSuccess").equals("1")){%>
<form action="ClassAdded" method="GET">
<div class = "deleteConfirmContainer">
    <div class = "deleteConfirmBox">
        <h3>Class has been successfully deleted from the system</h3>
    </div>
    <div>
        <input class = "goHomeBtn" type="submit" name = "exit" value = "Go to Homepage"></input>
        <input type="hidden" name="page" value="home">
    </div>
</div>
</form>
<%}else{ %>
<form action="ClassAdded" method="GET">
<div class = "deleteConfirmContainer">
    <div class = "deleteConfirmBox">
        <h3>Unable to delete the class. Please contact : support@ucmo.edu</h3>
    </div>
    <div>
        <input class = "goHomeBtn" type="submit" name = "exit" value = "Go to Homepage"></input>
        <input type="hidden" name="page" value="home">
    </div>
</div>
<%} %>
</body>
</form>
</html>