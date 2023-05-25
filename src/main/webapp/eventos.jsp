<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
	pageEncoding="ISO-8859-1" import="com.examen.mostrar.*"%>
<!DOCTYPE html>
<html>
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
   
   <header class="contenido_introduccion header">
   <h2 class="introduccion">EVENTOS</h2>
	</header>
	
	<section class="content pagina_inicio">
		<%
    Grupo grupo = new Grupo();
    out.print(grupo.consultarTodo());
    %>
	</section>
	
	<section class="content contactos">
  		<div class="contactos-izquierda">
    		<h4 class="titulo_contactos">Información de contacto</h4>
    			<p>Nos encontramos ubicados:</p>
    			<p>Campus Norte: Av. Isabel La Católica y Madrid</p>
    			<p>Campus Sur: Av. Morán Valverde y Rumichaca Ñan</p>
    			<p><a href="https://www.google.com/maps/d/u/0/edit?mid=15C5bj5iXJNcoAg6SJQmcVor_RD7Yb3w&usp=sharing" class="btn">Ver ubicación</a></p>
  		</div>
  		<div class="contactos-derecha">
   			 <h4 class="titulo_contactos">Contactarse con el docente</h4>
    			<p>Edwin Manuel Ñacato Pizarro</p>
   	 			<p>Docente Técnico</p>
    			<p>Correo Institucional: enacato@ups.edu.ec</p>
    			<p>Número de contacto: +593 96718 5762</p>
  		</div>
  		<div class="derechos-reservados">
    		<p>Todos los derechos reservados Christian Naranjo © 2023 ASU Fútbol</p>
  		</div>
	</section>
</body>
</html>