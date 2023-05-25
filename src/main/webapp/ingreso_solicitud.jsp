<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<link href="css/estilos.css" rel="stylesheet" type="text/css">
<title>INGRESO SOLICITUD </title>
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
   <h3>INGRESAR SOLICITUD</h3>
		<div align="center" style="padding: 40px;">
    	<form action="ingresarDE.jsp" method="post">
        <label for="cedula"><h3>Cédula:</label>
        <input type="text" name="cedula" id="cedula" required>
        <br><br>
        <label for="nombres"><h3>Nombres:</label>
        <input type="text" name="nombres" id="nombres" required>
        <br><br>
        <label for="correo"><h3>Correo Electrónico:</label>
        <input type="text" name="correo" id="correo" required>
        <br><br>
        <label for="celular"><h3>Celular:</label>
        <input type="text" name="celular" id="celular" required>
        <br><br>
        <label for="hoja_vida"><h3>Hoja de Vida (PDF):</label>
        <input type="file" name="hoja_vida" id="hoja_vida" accept="application/pdf" required>
        <br><br>
        <input type="submit" value="Guardar" class="btn">
    </form>
	</header>
   
  
</body>
</html>
