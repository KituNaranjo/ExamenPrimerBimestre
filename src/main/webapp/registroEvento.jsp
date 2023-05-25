<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.examen.mostrar.Grupo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MENSAJE</title>
</head>
<body>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<link href="css/estilos.css" rel="stylesheet" type="text/css">
<title>ASU FÚTBOL</title>
</head>
<body>
	<div class="head">
        <div class="logo">
    		<a href="index.jsp"><img src="imagenes/UPS.png" alt="ASU Fútbol"></a>
		</div>
        <nav class="barra_navegacion">
            <a href="index.jsp">Inicio</a>
            <a href="informacion.jsp">Información</a>
            <a href="sobremi.jsp">Sobre mi</a>
            <a href="eventos.jsp">Eventos</a>
            <a href="login.jsp">Login</a>
        </nav>
   </div>
   
   <header class="contenido_login header">
    <%
	Grupo gro = new Grupo();

	String str_id = request.getParameter("id");
	int id = Integer.parseInt(str_id);
	String nombre = request.getParameter("nombre");
	String descripcion = request.getParameter("descripcion");
	String str_fecha = request.getParameter("fecha");
	String ubicacion = request.getParameter("ubicacion");

	String mensaje = gro.ingresarEvento(id, nombre, descripcion, str_fecha, ubicacion);
	out.print("<p style=\"color: #fff;\">" + mensaje + "</p>");
	%>
	</header>
</body>
</html>