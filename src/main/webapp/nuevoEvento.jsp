<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.io.*, java.sql.*, com.examen.datos.Conexion" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<link href="css/estilos.css" rel="stylesheet" type="text/css">
<title>INGRESAR NUEVO EVENTO</title>
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
   <h2 class="introduccion">INGRESAR NUEVO EVENTO</h2>
    	 <form action="registroEvento.jsp" method="post">
        <label for="id"><h3>ID:</label>
        <input type="number" name="id" id="id" required>
        <br>
        <br>
        <label for="nombre"><h3>Nombre del Evento:</label>
        <input type="text" name="nombre" id="nombre" required>
        <br>
        <br>
        <label for="descripcion"><h3>Descripción:</label>
        <textarea name="descripcion" id="descripcion" required></textarea>
        <br>
        <br>
        <label for="fecha"><h3>Fecha:</label>
        <input type="date" name="fecha" id="fecha" required>
        <br>
        <br>
        <label for="ubicacion"><h3>Ubicación:</label>
        <input type="text" name="ubicacion" id="ubicacion" required>
        <br>
        <input type="submit" value="Guardar" class="btn">
    </form>
	</header>
</body>
</html>
