package com.java.DAO;
import java.sql.*;

import java.util.*;
import com.java.dbutils.*;
import com.java.packages.*;

public class StudentDAO{
	public static int insertStudent1(StudentCommon s) {
		Connection con = null;
		PreparedStatement pst = null;
		int status = 0;
		try {
			con = DBConnection.getConnection();
			pst = con.prepareStatement(Queries.StudentCommon);
			
			pst.setInt(1, s.getId());
			pst.setInt(2, s.getStandard());
			pst.setString(3, s.getSection());
			pst.setString(4, s.getFathersname());
			pst.setString(5, s.getArea());
			pst.setInt(6, s.getBusno());
			
			status = pst.executeUpdate();
			con.close();
			pst.close();		}
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
			catch(Exception e)
			{
				System.out.println(e.getMessage());
			}
		}
		return status;
	}
	
	public static int editStudent1(StudentCommon s) {
		
		Connection con = null;
		PreparedStatement pst = null;
		int status = 0;
		try {
			con = DBConnection.getConnection();
			pst = con.prepareStatement(Queries.UpdateStudentCommon);
			
			pst.setInt(1, s.getStandard());
			pst.setString(2, s.getSection());
			pst.setString(3, s.getFathersname());
			pst.setString(4, s.getArea());
			pst.setInt(5, s.getBusno());
			pst.setInt(6, s.getId());
			
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
			catch(Exception e)
			{
				System.out.println(e.getMessage());
			}
		}
		return status;
	}
	
public static int deleteStudent1(StudentCommon s) {
		
		Connection con = null;
		PreparedStatement pst = null;
		int status = 0;
		try {
			con = DBConnection.getConnection();
			pst = con.prepareStatement(Queries.DeleteStudentCommon);
			
			pst.setInt(1,s.getId());
			
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
			catch(Exception e)
			{
				System.out.println(e.getMessage());
			}
		}
		return status;
		
}

public static StudentCommon StudentById(int id) {
	StudentCommon s = new StudentCommon();
	Connection con = null;
	PreparedStatement pst = null;
	
	try {
		con = 	DBConnection.getConnection();
		pst = con.prepareStatement(Queries.SearchStudentCommon);
		
		pst.setInt(1, id);
		
		ResultSet rs= pst.executeQuery();
		
		if(rs.next()){
			s.setId(rs.getInt(1));
			s.setStandard(rs.getInt(2));
			s.setSection(rs.getString(3));
			s.setFathersname(rs.getString(4));
			s.setArea(rs.getString(5));
			s.setBusno(rs.getInt(6));
			
		}
		con.close();
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
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
	}
	return  s;
}

public static List<StudentCommon> StudentsList() {
	
	StudentCommon s = new StudentCommon();
	Connection con = null;
	PreparedStatement pst = null;
	List<StudentCommon> list = new ArrayList<StudentCommon>();
	
	try {
		con = 	DBConnection.getConnection();
		pst = con.prepareStatement(Queries.AllStudentCommon);
		ResultSet rs = pst.executeQuery();
		while(rs.next()) {
			s.setId(rs.getInt(1));
			s.setStandard(rs.getInt(2));
			s.setSection(rs.getString(3));
			s.setFathersname(rs.getString(4));
			s.setArea(rs.getString(5));
			s.setBusno(rs.getInt(6));
			list.add(s);
			
		}
		con.close();
		pst.close();
	}
	catch(Exception e) {
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

	
} 




