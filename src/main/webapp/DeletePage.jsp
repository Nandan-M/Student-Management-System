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
                    <li><a href="marksAddPage.jsp">Students Marks</a></li>
                    <li><a href="viewuser.jsp">Students Data</a></li>
                     <li><a href="DeletePage.jsp">Search Student</a></li>
                    <li><a href="contactus.jsp">Contact Us</a></li>
                   </ul>
</div>
</div>

<div id = "right-bar">
<div id = main-form>
<h1>Student Search</h1>
<form action="detailsSearch1.jsp"  method = "post">
Student ID : <input type = "number" name = "id"><br>
<input type = "submit" value= submit>
</form>

</div>
</div>

</body>
</html>