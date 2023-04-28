package com.classRegistrations.dao;

import java.sql.*;

public class userAuthDbConnect {

	private String pass="",fname,lname,type,course;
	private boolean loginSuccess = false;
	
	public userAuthDbConnect(String email) {
		
		 String url   = "jdbc:mysql://localhost:3306/class_registartions";
	     final String username = "root";
	     final String password = "";
	     
	     try {
	    
	    	 Class.forName("com.mysql.cj.jdbc.Driver");
		     Connection con = DriverManager.getConnection(url,username,password);
		     Statement stmt = con.createStatement();
		     String sel = "select password,firstname,lastname,type,course from users where email = '"+email+"';";
		     ResultSet rs = stmt.executeQuery(sel);
		     while(rs.next()) { 
		    	 pass = rs.getString(1);
		    	 fname=rs.getString(2);
		    	 lname=rs.getString(3);
		    	 type=rs.getString(4);
		    	 course=rs.getString(5);
		    	 loginSuccess=true;
		     }
	     }
	     catch(Exception e) {
	    	 System.out.println(e.getMessage());
	     }				
	}
	
	public String getPass() {
		return pass;
	}
	public String getFname() {
		return fname;
	}
	public String getLname() {
		return lname;
	}
	public String getType() {
		return type;
	}
	public String getCourse() {
		return course;
	}
    public boolean authUser() {
    	return loginSuccess;
    }
	
}
