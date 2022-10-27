package com.java.DAO;
import java.sql.*;
import com.java.dbutils.*;
import com.java.packages.*;

public class DataDAO {
	public String stockdata(Data d) {
		String data = d.getDATA();
		
		try {
			Connection con = null;
			PreparedStatement st = null;
			
			con = DBConnection.getConnection();
			st = con.prepareStatement(DBConstants.data);
			
			st.setString(1, data);
			
			int i = st.executeUpdate();
			if(i != 0) {
				return "sucess";
			}
			
		}
		catch(Exception e) {
			
		}
		
		
		return "Something went wrong";
	}
	
	

}
