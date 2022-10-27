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
                    <li><a href="viewuser.jsp">Student Data</a></li>
                     <li><a href="DeletePage.jsp">Search Student</a></li>
                    <li><a href="contactus.jsp">Contact Us</a></li>
                   </ul>
</div>
</div>

<div id = "right-bar">
<div id = main-form>

<%@page import= "com.java.DAO.*,com.java.packages.* , com.java.packages.StudentCommon"%>

<%
String id = request.getParameter("id");
%>
<%Student s2 = DetailsDAO.StudentById(Integer.parseInt(id));%>
<table>
<tr><th>NAME :</th><th><%=s2.getName()%> </th><th>DOB:</th><th> <%=s2.getDate()%></th></tr>
</table>
<%StudentCommon s = StudentDAO.StudentById(Integer.parseInt(id)); %>
<h1>Student Details</h1>
<table border="1">  
<tr><th>Id</th><th>Standard</th><th>Section</th><th>Fathers name</th><th>Area</th><th>Bus No</th><th>Edit</th><th>Delete</th></tr> 
<tr><th><%=s.getId()%></th><th><%=s.getStandard() %></th><th><%=s.getSection() %></th><th><%=s.getFathersname()%></th><th><%=s.getArea() %></th><th><%=s.getBusno() %></th><th><a href = "EditStudent.jsp?id=<%=s.getId()%>">Edit</a></th><th><a href = "DeleteStudent.jsp?id=<%=s.getId()%>" >Delete</a></th></tr> 
</table>
<%
StudentMarks s1 = StudentDAO1.MarksbyId(Integer.parseInt(id));
%>
<h1>Student Marks</h1>
<table border = "1">
<tr><th>MATHS</th><th>ENGLISH</th><th>HINDI</th><th>TELUGU</th><th>SOCIAL</th><th>SCIENCE</th><th>Edit</th><th>Delete</th></tr> 
<tr><th><%=s1.getM1()%></th><th><%=s1.getM2() %></th><th><%=s1.getM3() %></th><th><%=s1.getM4()%></th><th><%=s1.getM5()%></th><th><%=s1.getM6() %></th><th><a href = "EditMarksPage.jsp?id=<%=s1.getId()%>">Edit</a></th><th><a href = "DeleteMarks.jsp?id=<%=s1.getId()%>">Delete</a></th></tr>
</table>
</div>
</div>

</body>
</html>