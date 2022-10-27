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
                    <li><a href="viewuser.jsp">Student Bio</a></li>
                     <li><a href="DeletePage.jsp">Search Student</a></li>
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

<form name ="add" onsubmit ="return addUser()" action="addDetails.jsp" method = "post">
<h1>Add New Student</h1> 
<div id = "table">  
 <table>
<tr><td>Student Id:</td><td><input type="number" name="id"/></td></tr>  
<tr><td>Student Name:</td><td>  <input type="text" name="name"/></td></tr>  
<tr><td>Date-Of-Birth:</td><td><input type="number" name="date"/></td></tr>  
</table>
</div>   
<input id="submit" type = "submit" value = "SUBMIT">
</form>
</div>
</div>
<footer id = "footer">
<h3 id = "f1">N - School</h3>
<p id = "f2">Very good School</p>
</footer>

</body>
</html>