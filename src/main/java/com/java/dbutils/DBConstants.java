package com.java.dbutils;

public class DBConstants {

public static final String userlogin = " SELECT EMAILMOBILE , PASSWORD FROM STOCKMARKET WHERE EMAILMOBILE=? AND PASSWORD=?";

public static final String userregister = "INSERT INTO STOCKMARKET VALUES(?,?,?,?,?,?,?,?)";

public static final String data = "INSERT INTO STOCKDATA VALUES (?)";

public static final String retrieve = "SELECT * FROM STOCKDATA";
}
