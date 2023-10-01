package com.patient;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PatientDBUtil {
	
	public static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	

	public static boolean validateLogin(String username, String password) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from patient where username = '"+username+"' and password = '"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Patient> getPatient(String username){
		
		ArrayList<Patient> ptnt = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from patient where username = '"+username+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				int age = rs.getInt(4);
				String gender = rs.getString(5);
				String email = rs.getString(6);
				String phone = rs.getString(7);
				String userU = rs.getString(8);
				String passU = rs.getString(9);
				
				Patient p = new Patient(id, fname, lname, age, gender, email, phone, userU, passU);
				ptnt.add(p);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return ptnt;
	}
	
	public static boolean register(String fname, String lname, int age, String gender, String email, String phone, String username, String password) {
		
		boolean isSuccess = false;
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into patient values (0, '"+fname+"', '"+lname+"', '"+age+"', '"+gender+"', '"+email+"', '"+phone+"', '"+username+"', '"+password+"')";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean updateuser(String id, String fname, String lname, int age, String gender, String email, String phone, String username, String password) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update patient set fname = '"+fname+"', lname = '"+lname+"', age = '"+age+"', gender = '"+gender+"', email = '"+email+"', phone = '"+phone+"', username = '"+username+"', password = '"+password+"'"
					      +"where id = '"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Patient> getUserDetails(String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList<Patient> user = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from patient where id = '"+convertedID+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				int id = rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				int age = rs.getInt(4);
				String gender = rs.getString(5);
				String email = rs.getString(6);
				String phone = rs.getString(7);
				String username = rs.getString(8);
				String password = rs.getString(9);
				
				Patient p = new Patient(id, fname, lname, age, gender, email, phone, username, password);
				user.add(p);
				
			}
			
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return user;
		
	}
	
	public static boolean deletePatient(String id) {
		
		int convId = Integer.parseInt(id);
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "delete from patient where id = '"+convId+"'";
			int result = stmt.executeUpdate(sql);
			
			if(result > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
}
