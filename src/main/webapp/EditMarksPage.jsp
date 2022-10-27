<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<img src="https://images.unsplash.com/photo-1481627834876-b7833e8f5570?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTJ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60">
</div>

<div id = "bar">
<div id = "details">
 <ul>
           <li><a href="index.html">Home</a></li>
                    <li><a href="AddStudent.jsp">Add Student</a></li>
                    <li><a href="member.jsp">Students Marks</a></li>
                    <li><a href="viewuser.jsp">Student Bio</a></li>
                     <li><a href="DeletePage.jsp">Delete Student</a></li>
                    <li><a href="contactus.jsp">Contact Us</a></li>
                   </ul>
</div>
</div>
<div id = "left-bar">
<div id = "ann">

</div>
</div>

<div id = "right-bar">
<div id = main-form>

<%@page import= "com.java.DAO.*,com.java.packages.* , com.java.packages.StudentMarks"%>

<%String id = request.getParameter("id");%>
<%StudentMarks s1 = StudentDAO1.MarksbyId(Integer.parseInt(id)); %>

<form name ="add" action="EditMarks.jsp" method = "post">
<h1>Add Student Marks</h1>    
<table>  
<tr><td>Student Id:</td><td><input type="hidden" name="id" placeholder=<%=s1.getId() %> /></td></tr>  
<tr><td>MATHS:</td><td>  <input type="number" name="m1"  placeholder=<%=s1.getM1() %> /></td></tr>
<tr><td>English:</td><td><input type="number" name="m2" value=<%=s1.getM2() %>/></td></tr>  
<tr><td>Hindi:</td><td>  <input type="number" name="m3" value=<%=s1.getM3()%>/></td></tr>
<tr><td>Telugu:</td><td><input type="number" name="m4" value=<%=s1.getM4()%>/></td></tr>  
<tr><td>Social:</td><td>  <input type="number" name="m5" value=<%=s1.getM5() %>/></td></tr>
<tr><td>Science:</td><td>  <input type="number" name="m6" value=<%=s1.getM6() %>/></td></tr>
</table>
<input type = "submit" value = "SUBMIT">
</form>
</div>
</div>
</body>
</html>