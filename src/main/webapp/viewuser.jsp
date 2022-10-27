<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import= "com.java.DAO.*" %> 
<%@page import = "com.java.packages.*" %>
<%@page import = "com.java.dbutils.*" %>
<%@page import = "java.util.*" %>
<%@page import = "java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href = "mainpage.css" rel = "stylesheet" type = "text/css">
</head>

<body>
<header id = "header">
<nav id =  "navbar">
<h1 id = "logo">Student Details</h1>
</nav>
</header>

<div id = "image">
</div>

<div id = "bar">
<div id = "details">
 <ul>
           <li><a href="index.html">Home</a></li>
                    <li><a href="AddStudent.jsp">Add Student</a></li>
                    <li><a href="member.jsp">Students Marks</a></li>
                    <li><a href="viewuser.jsp">Student Data</a></li>
                     <li><a href="DeletePage.jsp">Delete Student</a></li>
                    <li><a href="contactus.jsp">Contact Us</a></li>
                   </ul>
</div>
</div>

<div id = "right-bar">
<div id = main-form>

<%
Connection con = null;
PreparedStatement pst =null;
ResultSet rs;
%>

<!-- <jsp:useBean id="s" class = "com.java.packages.StudentCommon"></jsp:useBean>
<jsp:setProperty property="*" name="s"/>*\ -->

<!--
<h1>User Data</h1>
<%List<StudentCommon> list = StudentDAO.StudentsList();
Iterator<StudentCommon> it=list.iterator();
%>


<table border="1" >  
<tr><th>Id</th><th>Standard</th><th>Section</th><th>fathers name</th>  
<th>Area</th><th>Bus no</th><th>Edit</th><th>Delete</th></tr> 
<%while(it.hasNext()){ %>
<tr><td><%=s.getId()%></td><td><%=s.getSection()%></td><td><%=s.getStandard()%></td>  
<td><%=s.getFathersname()%></td><td><%=s.getArea()%></td><td><%=s.getBusno()%></td>  
<td><a href="EditStudent.jsp?id=<%=s.getId()%>">Edit</a></td>  
<td><a href="DeleteStudent.jsp?id<%=s.getId()%>">Delete</a></td></tr>  
<% } %>

 
</table>  
-->
<table border="1" >  
<tr><th>Id</th><th>Standard</th><th>Section</th><th>fathers name</th><th>Area</th><th>Bus no</th><th>Edit</th><th>Delete</th></tr> 
<% 
try{
con = 	DBConnection.getConnection();
pst = con.prepareStatement(Queries.AllStudentCommon);
rs = pst.executeQuery();
while(rs.next()){
%>
<tr><th><%=rs.getInt("id")%></th><th><%=rs.getInt("standard")%></th><th><%=rs.getString("section")%></th><th><%=rs.getString("fathersname")%></th><th><%=rs.getString("area")%></th><th><%=rs.getInt("busno")%></th><th>Edit</th><th>Delete</th></tr> 
<%
} 
}catch(Exception e){
	System.out.println(e);
	}
	
%>
</table>

</div>
</div>



</body>
</html>n