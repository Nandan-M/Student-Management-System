package com.java.DAO;
import com.java.packages.*;
import java.sql.*;
import com.java.dbutils.*;


public class DetailsDAO {
	
	public static int insertDetails(Student s1) {
		int status = 0;
		Connection con = null;
		PreparedStatement pst = null;
		try {
			con = (DBConnection.getConnection());
			pst = con.prepareStatement(Queries.InsertStudent);
			
			pst.setInt(1, s1.getId());
			pst.setString(2, s1.getName());
			pst.setInt(3, s1.getDate());
			
			status = pst.executeUpdate();
			con.close();
			pst.close();
			
		}
		catch(SQLException e) {
			System.out.println(e);	
		}
		finally {
			try {
				if(pst != null) 
					pst.close();
				if(con != null)
					con.close();
			}
			catch(Exception e) {
				System.out.println(e);
			}
				
			}
		return status;
	}
		
  public static Student StudentById(int id) {
	  Student s = new Student();
	  Connection con = null;
		PreparedStatement pst = null;
		
		try {
			con = 	DBConnection.getConnection();
			pst = con.prepareStatement(Queries.Details);
			
			pst.setInt(1, id);
			
			ResultSet rs= pst.executeQuery();
			if(rs.next()) {
				s.setId(rs.getInt(1));
				s.setName(rs.getString(2));
				s.setDate(rs.getInt(3));
			}
			pst.close();
			con.close();	
		}
		catch(SQLException e){
		    System.out.println(e);
		}
		finally {
			try {
				if(pst != null)
				pst.close();
				if(con != null)
					con.close();	
			}
			catch(Exception e)
			{
				System.out.println(e.getMessage());
			}
		}
		return s;
}
}
