<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	HttpSession cerrar = request.getSession();
	cerrar.invalidate();
	%>
	<jsp:forward page="login.jsp"/>
</body>
</html>