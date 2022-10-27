<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import = "com.java.DAO.DetailsDAO"%>
<%@page import = "com.java.packages.*" %>
<jsp:useBean id="s1" class = "com.java.packages.Student"></jsp:useBean>
<jsp:setProperty name="s1" property="*"  />

<%
int i = DetailsDAO.insertDetails(s1);
if(i > 0){
	response.sendRedirect("home.jsp");
}
%>




</body>
</html>