<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin-home</title>
<link rel="stylesheet" type="text/css" href="css/styles.css" title="style">
</head>
<body>
<body>
    <form action="ClassesScheduling" action ="POST">
    <div class = "adminHomeContainer">
        <div>
            <h2>Welcome  ${userBean.getFirstName()}</h2>
        </div>
        <div class = "adminHomeBox">
        <div>
            <h3>Choose Course :</h3>
        </div>
        <div class = "courses">
            <div class = "btn">
	            <div><input  class = "radioBtn" type="radio" name="course" value="cis" required>
	            <label for="CIS">CIS</label></div>
	            <div><input type="radio" class = "radioBtn" name="course" value="cs">
	            <label for="CS">CS</label></div>
	            <div><input type="radio" class = "radioBtn" name="course" value="cyber">
	            <label  for="cyber">Cyber Security</label></div>
        	</div>
        </div>
                <div>
            <h3>Choose Day :</h3>
        </div>
        <div class = "courses">
            <div class = "btn">
	            <div><input  type="radio" class = "radioBtn" name="day" value="monday" required>
	            <label for="Monday">Monday</label></div>
	            <div><input class = "radioBtn" type="radio" name="day" value="tuesday">
	            <label for="Tuesday">Tuesday</label></div>
	            <div><input class = "radioBtn" type="radio" name="day" value="wednesday">
	            <label  for="Wednesday">Wednesday</label></div>
	           	<div><input  class = "radioBtn" type="radio" name="day" value="thursday">
	            <label for="Thursday">Thursday</label></div>
	            <div><input class = "radioBtn" type="radio" name="day" value="friday">
	            <label for="Friday">Friday</label></div>
	            <div><input class = "radioBtn" type="radio" name="day" value="saturday">
	            <label  for="cyber">Saturday</label></div>
        	</div>
        </div>
        <div class="adminHomeBtn">
            <div class = "addClassBtn"><input class = "addClass" type="submit" name = "adminClassesAction" value = "Release Classes to students for the day"></input></div>
            <div class = "viewClassBtn"><input class = "viewClass" type="submit" name = "adminClassesAction" value = "View Classes of the day"></input></div>
            <div class = "viewClassBtn"><input class = "viewClass" type="submit" name = "adminClassesAction" value = "LogOut"></input></div>
        </div>
    </div>
</div>
</form>
</body>
</body>
</html>