<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
<title>ASU F�TBOL</title>
</head>
<body>
	<div class="head">
        <div class="logo">
    		<a href="index.jsp"><img src="imagenes/UPS.png" alt="ASU F�tbol"></a>
		</div>
        <nav class="barra_navegacion">
            <a href="index.jsp">Inicio</a>
            <a href="informacion.jsp">Informaci�n</a>
            <a href="sobremi.jsp">Sobre mi</a>
            <a href="eventos.jsp">Eventos</a>
            <a href="login.jsp">Login</a>
        </nav>
   </div>
   
   <header class="contenido_login header">
    <%
	Grupo gro = new Grupo();
    int id_per = 2;
    String str_id = request.getParameter("id");
	int id_us = Integer.parseInt(str_id);
	String nombre_us = request.getParameter("nombre");
	String direccion_us = request.getParameter("direccion");
	String correo_us = request.getParameter("correo");
	String clave_us = request.getParameter("clave");

	String mensaje = gro.ingresarNuevo(id_us, id_per, nombre_us, direccion_us, correo_us, clave_us);
	out.print("<p style=\"color: #fff;\">" + mensaje + "</p>");
	%>
	</header>
</body>
</html>
