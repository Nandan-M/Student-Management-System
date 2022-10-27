package com.java.DAO;
import com.java.dbutils.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public class LoginDAO {
public static boolean checkUser(String EMAILMOBILE,String PASSWORD) {
		
		boolean b = false;
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement st = con.prepareStatement(DBConstants.userlogin);
			
			st.setString(1, EMAILMOBILE);
			st.setString(2, PASSWORD);
			
			ResultSet rs = st.executeQuery();
	        b = rs.next();
		}
		catch(Exception e) {
			
		}
		return b;
	}
}
