package com.classRegistartions.beans;

public class UserBean {
	
	String fname,lname,email,type,course;

	public UserBean() {}
	
	public void setFirstName(String fname) {
		this.fname = fname;
	}
	public void setLastName(String lname) {
		this.lname = lname;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setType(String type) {
		this.type = type;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	
	public String getFirstName() {
		return fname;
	}
	public String getLastName() {
		return lname;
	}
	public String getEmail() {
		return email;
	}
	public String getType() {
		return type;
	}
	public String getCourse() {
		return course;
	}
}
