package com.java.DAO;
import java.sql.*;
import java.util.*;
import com.java.dbutils.*;
import com.java.packages.*;

public class StudentDAO1 {
	public static int StudentMarks1(StudentMarks s) {
		Connection con = null;
		PreparedStatement pst = null;
		int status = 0;
		try {
			con = DBConnection.getConnection();
			pst = con.prepareStatement(Queries.StudentMarks);
			
		pst.setInt(1, s.getId());
		pst.setInt(2, s.getM1());
		pst.setInt(3, s.getM2());
		pst.setInt(4, s.getM3());
		pst.setInt(5, s.getM4());
		pst.setInt(6, s.getM5());
		pst.setInt(7, s.getM6());
		
		
		status = pst.executeUpdate();
		con.close(); 
		pst.close();		}
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
		return status;
	}
	
	public static int EditMarks(StudentMarks s1) {
		int status = 0;
		Connection con = null;
		PreparedStatement pst = null;
		
	try {
		con = DBConnection.getConnection();
		pst = con.prepareStatement(Queries.UpdateMarks );
		
		pst.setInt(1, s1.getM1());
		pst.setInt(2, s1.getM2());
		pst.setInt(3, s1.getM3());
		pst.setInt(4, s1.getM4());
		pst.setInt(5, s1.getM5());
		pst.setInt(6, s1.getM6());
		pst.setInt(7, s1.getId());
		
		status = pst.executeUpdate();
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
		return status;
	}
	
	public static int DeleteMarks(StudentMarks s) {
int status = 0;
Connection con = null;
PreparedStatement pst = null;
		try {
			con = DBConnection.getConnection();
			pst = con.prepareStatement(Queries.DeleteMarks );
			
			pst.setInt(1, s.getId());
			
			status = pst.executeUpdate();
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
		return status;
	}
	
	public static List<StudentMarks> getMarks(){
		StudentMarks s1 = new StudentMarks();
		Connection con = null;
		PreparedStatement pst = null;
		List<StudentMarks> list = new ArrayList<StudentMarks>();
		try {
			con = 	DBConnection.getConnection();
			pst = con.prepareStatement(Queries.AllStudentMarks);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				s1.setId(rs.getInt(1));
				s1.setM1(rs.getInt(2));
				s1.setM2(rs.getInt(3));
				s1.setM3(rs.getInt(4));
				s1.setM4(rs.getInt(5));
				s1.setM5(rs.getInt(6));
				s1.setM6(rs.getInt(7));
				
				list.add(s1);
				con.close();
				pst.close();
			}
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
		return list;
	}
	
	public static StudentMarks MarksbyId(int id) {
		StudentMarks s1 = new StudentMarks();
		Connection con = null;
		PreparedStatement pst = null;
		try {
			con = DBConnection.getConnection();
			pst =con.prepareStatement(Queries.MarksSearch);
			
			pst.setInt(1, id);
			
			ResultSet rs= pst.executeQuery();
			
			if(rs.next()) {
				s1.setId(rs.getInt(1));
				s1.setM1(rs.getInt(2));
				s1.setM2(rs.getInt(3));
				s1.setM3(rs.getInt(4));
				s1.setM4(rs.getInt(5));
				s1.setM5(rs.getInt(6));
				s1.setM6(rs.getInt(7));
			}
			con.close();
			pst.close();
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
		
		return s1;
	}

}
