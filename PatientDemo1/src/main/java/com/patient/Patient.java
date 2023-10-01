package com.patient;

public class Patient {

	private int id;
	private String fname;
	private String lname;
	private int age;
	private String gender;
	private String email;
	private String phone;
	private String username;
	private String password;
	
	public Patient(int id, String fname, String lname, int age, String gender, String email, String phone, String username,
			String password) {
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.age = age;
		this.gender = gender;
		this.email = email;
		this.phone = phone;
		this.username = username;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public String getFname() {
		return fname;
	}

	public String getLname() {
		return lname;
	}
	
	public int getAge() {
		return age;
	}

	public String getGender() {
		return gender;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}

}
