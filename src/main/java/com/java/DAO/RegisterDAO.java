package com.java.DAO;
import java.sql.*;
import com.java.dbutils.*;
import com.java.packages.*;

public class RegisterDAO {
	public String registeruser(Beans b) {
		String firstname = b.getFIRSTNAMME();
		String lastname = b.getLASTNAME();
		String email = b.getEMAILMOBILE();
		String password = b.getPASSWORD();
		int date = b.getDATE();
		String month = b.getMONTH();
		int year = b.getYEAR();
		String gender = b.getGENDER();
		
		Connection con = null;
		PreparedStatement st = null;
		
		try {
			con = DBConnection.getConnection();
			st = con.prepareStatement(DBConstants.userregister);
			st.setString(1, firstname);
			st.setString(2, lastname);
			st.setString(3, email);
			st.setString(4, password);
			st.setInt(5, date);
			st.setString(6, month);
			st.setInt(7, year);
			st.setString(8, gender);
			
			int i = st.executeUpdate();
			if(i != 0)
				return "sucess";
			
			
		}
		catch(Exception e) {
			System.out.println("error");
		}
		return "Something is wrong";
	}

	

}
