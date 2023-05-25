<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<link href="css/estilos.css" rel="stylesheet" type="text/css">
<title>LOGIN</title>
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
   <h2 class="introduccion">LOGIN</h2>
		<div align="center" style="padding: 40px;">
	  	<form action="verificarLogin.jsp" method="post">
		   	<table border="0" >
		   		<tr><td><h3>Correo electrónico:</h3></td><td>
		   			<input type="text" name="usuario" required/></td></tr>
				<tr><td><h3>Clave:</h3></td><td>
					<input type="text" name="clave" required/></td></tr>
				<tr>
					<td><input type="submit" class="btn"/></td>
					<td><input type="reset" class="btn"/></td>
				</tr>		
			</table>
		</form>
		<br>
		<h3>¿No tienes cuenta? Es momento de que te registres. <a href="nuevoRegistro.jsp"> Regístrate</a></h3>
	</header>
</html>
