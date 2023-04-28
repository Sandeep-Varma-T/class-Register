package com.classRegistrations.dao;
import java.sql.*;

public class addOrViewClassesDbActivity {

	private String username="root",url="jdbc:mysql://localhost:3306/class_registartions",pass="";
	
	
	public ResultSet getAvailableClasses(String course, String day) {
		
		try {
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,username,pass);
		Statement stmt = con.createStatement();
		String sel="";
		if(course.equals("cis")) {
		
			sel = "SELECT className,classStart,classEnd from cisclasses where day = '"+day+"' and isAvailable = 1;";
		}
		else if(course.equals("cs")) {
			sel = "SELECT className,classStart,classEnd from csclasses where day = '"+day+"' and isAvailable = 1;";
		}
		else {
			sel = "SELECT className,classStart,classEnd from cyberclasses where day = '"+day+"' and isAvailable = 1;";
		}
		
		ResultSet rs = stmt.executeQuery(sel);
		return rs;
		
		}
		
		catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
		return null;
		
		
	}
	
	public boolean addNewClass(String className, String facName, String subName) {
		try {
			
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,username,pass);
		Statement stmt = con.createStatement();
		String insToClasses = "insert into classes values ('"+className+"','"+facName+"','"+subName+"');";
		String updateClasses,checkUpdate;
		if(className.contains("CIS")) {
			updateClasses = "update cisclasses set isAvailable = 0 where className ='"+className+"';";
			checkUpdate = "select isAvailable from cisclasses where className = '"+className+"';";
		}
		else if(className.contains("CS")) {
			updateClasses = "update csclasses set isAvailable = 0 where className ='"+className+"';";
			checkUpdate = "select isAvailable from csclasses where className = '"+className+"';";
		}
		else {
			updateClasses = "update cyberclasses set isAvailable = 0 where className ='"+className+"';";
			checkUpdate = "select isAvailable from cyberclasses where className = '"+className+"';";
		}
		
		ResultSet rs = stmt.executeQuery(checkUpdate);
		String exists = "0";
		if(rs.next()) {
			exists = rs.getString(1);
		}
		
		if(exists.equals("0")) {
			return false;
		}
		else {
			rs.close();
			stmt.executeUpdate(insToClasses);
			stmt.executeUpdate(updateClasses);
			stmt.close();
			con.close();
			return true;
		}
		
		}
		catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return false;
	}
	
	public ResultSet viewClasses(String course, String day) {
		
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,username,pass);
		Statement stmt = con.createStatement();
		String sel;
		if(course.equals("cis")) {
			sel = "SELECT a.className, a.FacultyName, a.subject, b.classStart, b.classEnd FROM classes a join cisclasses b on a.className = b.className WHERE b.day = '"+day+"' and b.isAvailable = 0;";
		}
		else if(course.equals("cs")) {
			
			sel = "SELECT a.className, a.FacultyName, a.subject, b.classStart, b.classEnd FROM classes a join csclasses b on a.className = b.className WHERE b.day = '"+day+"' and b.isAvailable = 0;";
		}
		else {
			
			sel = "SELECT a.className, a.FacultyName, a.subject, b.classStart, b.classEnd FROM classes a join cyberclasses b on a.className = b.className WHERE b.day = '"+day+"' and b.isAvailable = 0;";
		}
		
		ResultSet rs = stmt.executeQuery(sel);
		return rs;
		
		}
		catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
		
	}

	public boolean deleteClass(String className) {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,pass);
			Statement stmt = con.createStatement();
			String del="delete from classes where className = '"+className+"';";
			String updt = "";
			System.out.println(className);
			if(className.contains("CIS")) {
				
				updt = "update cisclasses set isAvailable = 1 where className = '"+className+"';";
				
			}
			else if(className.contains("CS")) {
				
				updt= "update csclasses set isAvailable = 1 where className = '"+className+"';";
				
			}
			else {
				
				updt= "update cyberclasses set isAvailable = 1 where className = '"+className+"';";
				
			}
			int delExec = stmt.executeUpdate(del);
			int updtExec = stmt.executeUpdate(updt);
			stmt.close();
			con.close();
			if(delExec > 0 && updtExec > 0) {
				return true;
			}
			}
			catch(Exception e) {
				System.out.println(e.getMessage());
			}
			return false;
		}
	
	public ResultSet viewClassesForTheCourse(String course, String userEmail) {
		
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,username,pass);
		Statement stmt = con.createStatement();
		String sel;
		if(course.equals("cis") || course.equals("CIS")) {
			sel = "SELECT a.className, a.FacultyName, a.subject, b.day, b.classStart, b.classEnd FROM classes a join cisclasses b on a.className = b.className WHERE b.isAvailable = 0 and a.className not in (SELECT className from studentclassmapping where studentEmail = '"+userEmail+"');";
		}
		else if(course.equals("cs") || course.equals("CS")) {
			
			sel = "SELECT a.className, a.FacultyName, a.subject, b.day, b.classStart, b.classEnd FROM classes a join csclasses b on a.className = b.className WHERE b.isAvailable = 0 and a.className not in (SELECT className from studentclassmapping where studentEmail = '"+userEmail+"');";
		}
		else {
			
			sel = "SELECT a.className, a.FacultyName, a.subject, b.day, b.classStart, b.classEnd FROM classes a join cyberclasses b on a.className = b.className WHERE b.isAvailable = 0 and a.className not in (SELECT className from studentclassmapping where studentEmail = '"+userEmail+"');";
		}
		
		ResultSet rs = stmt.executeQuery(sel);
		return rs;
		
		}
		catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
		
	}
	
	public ResultSet viewStudentClasses(String email, String course) {
		
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,username,pass);
		Statement stmt = con.createStatement();
		String sel;
		if(course.equals("cis")) {
			sel = "SELECT a.className, a.FacultyName, a.subject,b.day, b.classStart, b.classEnd FROM classes a join cisclasses b on a.className = b.className WHERE a.className in (select className from studentclassmapping where studentEmail = '"+email+"');";
		}
		else if(course.equals("cs")) {
			
			sel = "SELECT a.className, a.FacultyName, a.subject,b.day, b.classStart, b.classEnd FROM classes a join csclasses b on a.className = b.className WHERE a.className in (select className from studentclassmapping where studentEmail = '"+email+"');";
		}
		else {
			
			sel = "SELECT a.className, a.FacultyName, a.subject,b.day, b.classStart, b.classEnd FROM classes a join cyberclasses b on a.className = b.className WHERE a.className in (select className from studentclassmapping where studentEmail = '"+email+"');";
		}
		
		ResultSet rs = stmt.executeQuery(sel);
		return rs;
		
		}
		catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
		
	}
	
	public int deleteClass(String className, String userEmail) {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,pass);
			Statement stmt = con.createStatement();
			String del = "delete from studentclassmapping where studentEmail = '"+userEmail+"' and className = '"+className+"';";
			int ret = stmt.executeUpdate(del);
			return ret;
		}
		catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return -1;
		
	}
}
	

