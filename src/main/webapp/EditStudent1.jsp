<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import = "com.java.DAO.StudentDAO" %>
<jsp:useBean id="s" class = "com.java.packages.StudentCommon"></jsp:useBean>
<jsp:setProperty property="*" name="s"/>

<%
int i = StudentDAO.editStudent1(s);
if(i > 0){
	response.sendRedirect("EditStudent.jsp");
	
}
%>
</body>
</html>