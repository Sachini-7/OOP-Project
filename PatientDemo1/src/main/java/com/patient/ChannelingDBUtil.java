package com.patient;

	import java.sql.Connection;
	import java.sql.ResultSet;
	import java.sql.Statement;

	public class ChannelingDBUtil {

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static boolean channeling(String fname, String lname, int age, String doctor, String date, String status, String phone, String email) {
		
		boolean isSuccess = false;
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into channeling values (0, '"+fname+"', '"+lname+"', '"+age+"', '"+doctor+"', '"+date+"', '"+status+"', '"+phone+"', '"+email+"')";
			
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
}

