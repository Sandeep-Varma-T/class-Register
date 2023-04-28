<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>student-Home</title>
<link rel="stylesheet" type="text/css" href="css/styles.css" title="style">
</head>
<body>
<form action = "studentHome" method = "GET">
<div class = "studetHomeContainer">
    <div class = "studentHomeBox">
        <div><h3>Welcome :  ${userBean.getFirstName()}</h3></div>
        <div><h3>Your Course : ${userBean.getCourse()}</h3></div>
        <div><h3>For this Semester you will only be able to enroll to maximum of 3 classes</h3></div>
        <div class = "studentHomeBtn">
            <div><input class = "studentHomeBtnView" type="submit" name = "studentHome" value = "View my classes"></iput></div>
            <div><input class = "studentHomeBtnAdd" type="submit" name = "studentHome" value = "Register for classes"></iput>
            <input type = "hidden" name = "userEmail" value = ${userEmail}></input>
            <input type = "hidden" name = "userCourse" value = ${userCourse} ></input></div>
            <div><input class = "studentHomeBtnAdd" type="submit" name = "studentHome" value = "Log Out"></iput></div>
        </div>
        
    </div>
</div>
</form>
</body>
</html>