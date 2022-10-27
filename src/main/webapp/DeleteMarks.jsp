<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import = "com.java.DAO.StudentDAO1" %>
<jsp:useBean id="s" class = "com.java.packages.StudentMarks"></jsp:useBean>
<jsp:setProperty property="*" name="s"/>

<%
int i = StudentDAO1.DeleteMarks(s);
if(i > 0){
	
	response.sendRedirect("DeletePage1.jsp");
}

%>
</body>
</html>