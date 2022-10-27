package com.java.DAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.java.dbutils.DBConnection;
import com.java.dbutils.DBConstants;
import com.java.dbutils.Queries;
import com.java.packages.*;

public class StudentLog {
	
	public static boolean user(int id, int date) {
		boolean b =false;
		

		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement st = con.prepareStatement(Queries.LoginStudent);
			
			st.setInt(1, id);
			st.setInt(2, date);
			
			ResultSet rs = st.executeQuery();
	        b = rs.next();
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return b;
	}
	

}
