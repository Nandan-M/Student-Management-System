<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import = "com.java.DAO.*" %>
<jsp:useBean id="s1" class = "com.java.packages.StudentMarks"></jsp:useBean>
<jsp:setProperty property="*" name="s1"/>

<%
int i = StudentDAO1.EditMarks(s1);
if(i > 0){
	response.sendRedirect("EditMarksPage.jsp");
}

%>
</body>
</html>