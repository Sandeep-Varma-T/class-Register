<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
<link rel="stylesheet" type="text/css" href="css/styles.css" title="style">
</head>
<body>
    <form action="LoginAuth" method="POST">
    <div id="loginPage">
	    <div id="loginPageContainer">
	      <div><label for="uname" name ="type" value="student"><b>Email</b></label></div>
	      <div><input id="login" type="text" placeholder="Enter Email" name="uname" required></div>
	      <div><label for="psw"><b>Password</b></label></div>
	      <div><input id="login" type="password" placeholder="Enter Password" name="psw" required></div>    
	      <div><button id="loginBtn" type="submit">Login</button></div>
	    </div>
    </div>
  </form>
</body>
</html>