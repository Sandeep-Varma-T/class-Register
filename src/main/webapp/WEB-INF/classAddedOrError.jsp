<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>class registration</title>
<link rel="stylesheet" type="text/css" href="css/styles.css" title="style">
</head>
<body>

<% String error = request.getAttribute("errorCode").toString();
	if(error.equals("0")){%>
	<form action = "ClassAdded" method = "GET">
		<div class = "addedOrErrorContainer">
	    <div class = "addedOrErrorBox">
	        <div class = "errorHead"><b>Success</b></div>
		        <div>Class has been successfully released for the students to register.</div>
		        <div><button id="exitBtn" type="submit">Go to Home</button>
		        <input type="hidden" name="page" value="home">
	        </div>
	    </div>
	</div>
	</form>
<%}else{%>
<form action = "ClassAdded" method = "GET">
<div class = "addedOrErrorContainer">
    <div class = "addedOrErrorBox">
        <div class = "errorHead"><b>Error</b></div>
        <div>unable to add class. Contact Support : <br> support@ucmo.edu</div>
        <div><button id="exitBtn" type="submit">Go to Home</button>
        <input type="hidden" name="page" value="home">
        </div>
    </div>
</div>
</form>
<%}%>
</body>
</html>