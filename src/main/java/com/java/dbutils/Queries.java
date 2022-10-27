package com.java.dbutils;

public class Queries {
	public static final String StudentCommon = "INSERT INTO STUDENTCOMMON VALUES(?,?,?,?,?,?)";
	
	public static final String UpdateStudentCommon  = "UPDATE STUDENTCOMMON SET  STANDARD=?, SECTION=?, FATHERNAME=?,AREA=?,BUSNO=? WHERE ID=?";
	
	public static final String DeleteStudentCommon = "DELETE FROM STUDENTCOMMON WHERE ID=?";
	
	public static final String SearchStudentCommon = "SELECT * FROM STUDENTCOMMON WHERE ID =?";
	
	public static final String AllStudentCommon = "SELECT * FROM STUDENTCOMMON";
	
	public static final String StudentMarks = "INSERT INTO SSTUDENTMARKS VALUES(?,?,?,?,?,?,?)";
	
	public static final String UpdateMarks = "UPDATE SSTUDENTMARKS SET M1=?,M2=?,M3=?,M4=?,M5=?,M6=? WHERE ID =?";
	
	public static final String DeleteMarks = "DELETE FROM SSTUDENTMARKS WHERE ID = ?";
	
	public static final String AllStudentMarks = "SELECT * FROM SSTUDENTMARKS";
	
	public static final String MarksSearch = "SELECT * FROM SSTUDENTMARKS WHERE ID=?";
	
	public static final String InsertStudent = "INSERT INTO STUDENTS VALUES(?,?,?)";
	
	public static final String LoginStudent = "SELECT ID,DOBFROM STUDENTS WHERE ID=? AND DOB=?";
	
	public static final String Details = "SELECT * FROM STUDENTS WHERE ID = ?";
	
	
	
	
	
	
	
}
