package com.classRegistrations.dao;
import java.sql.*;

public class studentDbActivity {

	private String username="root",url="jdbc:mysql://localhost:3306/class_registartions",pass="";
	
	public int getStudentCount(String className) {
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,username,pass);
		Statement stmt = con.createStatement();
		String sel = "select count(*) from studentclassmapping where className = '"+className+"';";
		ResultSet rs = stmt.executeQuery(sel);
		int count=0;
		while(rs.next()) {
			count+=1;
		}
		return count;
		}
		catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return -1;
	}
	
	public ResultSet viewStudentClasses(String userEmail) {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,pass);
			Statement stmt = con.createStatement();
			String sel = "select * from studentclassmapping where studentEmail = '"+userEmail+"';";
			ResultSet rs = stmt.executeQuery(sel);
			return rs;
			}
			catch(Exception e) {
				System.out.println(e.getMessage());
			}
			return null;
		
	}
	
	public int addNewClass(String className, String email) {
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,pass);
			Statement stmt = con.createStatement();
			String ins = "insert into studentclassmapping values('"+email+"','"+className+"');";
			String sel = "select * from studentclassmapping where studentEmail = '"+email+"' and className = '"+className+"';";
			ResultSet rs1 = stmt.executeQuery(sel);
			boolean isAdded = false;
			while(rs1.next()) {
				isAdded = true;
			}
			if(isAdded) {
				return -1;
			}
			int ret = stmt.executeUpdate(ins);
			return ret;
		}
		catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return -1;
		
	}
	
}
