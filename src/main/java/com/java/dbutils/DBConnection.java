package com.java.dbutils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	public static Connection getConnection() throws SQLException
	{
		Connection con  = null;
		try {
			Class.forName("org.hsqldb.jdbc.JDBCDriver");
			con=DriverManager.getConnection("jdbc:hsqldb:hsql://localhost/testdb","SA",""); 
			}
		     catch (Exception e) {
		    	 e.printStackTrace(System.out);
		     }
	         return con;
    }
}
