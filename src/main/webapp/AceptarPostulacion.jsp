<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.examen.mostrar.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%String cedula = request.getParameter("cod");
	Grupo post = new Grupo();
	boolean falso = post.PostulacionAceptar(cedula);
	if(falso == true) {
		response.sendRedirect("gestion_postulantes.jsp");
	}%>
</body>
</html>