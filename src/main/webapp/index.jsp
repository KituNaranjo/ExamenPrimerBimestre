<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
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
   <h2 class="introduccion">ASU FÚTBOL</h2>
    	<h3>
        	"Eres un apasionado del fútbol? Únete al equipo universitario más emocionante
        	de la Sede Quito. Vive la emoción de cada partido, apoya a tus compañeros y forma
        	parte de una comunidad que comparte su pasión por el deporte. ¡Sé parte del legado
        	de ASU Fútbol y prepárate para llevar tu juego al siguiente nivel!"
    	</h3>
	</header>
	
	<section class="content pagina_inicio">
		<h1 class="titulos">Video Promocional</h1>
			<video controls class="video">
				<source src="videos/VideoASU.mp4" type="video/mp4">
    		</video>
    	<h1 class="titulos noticias-titulo">Noticias</h1>
    	<div class="seccion-noticias">
  			<div class="noticias-items">
    			<h2 class="titulos-noticias">El Grupo Asu Fútbol celebra su aniversario número 10 con una gran fiesta</h2>
    			<center>
    				<img src="imagenes/aniversario.jpg" alt="aniversario" width="300" height="200">
    			</center>
    			<h6>El Grupo Asu Fútbol, reconocido equipo de fútbol local, celebró su décimo aniversario con una fiesta 
    			   llena de emociones. Jugadores, entrenadores y aficionados se reunieron para conmemorar una década de 
    			   pasión por el deporte y resaltar los logros alcanzados durante este tiempo.</h6>
    			<a href="noticia1.jsp" class="btn">Leer más</a>
  			</div>
  			<div class="noticias-items">
    			<h2 class="titulos-noticias">Asu Fútbol firma acuerdo de patrocinio con reconocida marca deportiva</h2>
    			<center>
    				<img src="imagenes/marathon.png" alt="Marca Deportiva">
    			</center>
    			<br>
    			<h6>El Grupo Asu Fútbol ha asegurado un valioso acuerdo de patrocinio con una prestigiosa marca deportiva. 
    			   Este acuerdo permitirá al equipo recibir apoyo financiero y acceso a productos de alta calidad para el 
    			   desarrollo de sus actividades. Ambas partes esperan fortalecer su relación y trabajar juntas en beneficio 
    			   del fútbol local.</h6>
    			<a href="noticia2.jsp" class="btn">Leer más</a>
  			</div>
  			<div class="noticias-items">
    			<h2 class="titulos-noticias">Asu Fútbol se corona campeón de la liga regional</h2>
    			<center>
    				<img src="imagenes/Campeon.jpg" alt="Campeon" width="325" height="250">
    			</center>
    			<br>
    			<h6>En una emocionante temporada, el Grupo Asu Fútbol logró consagrarse campeón de la liga regional. Después 
    			   de intensos partidos y un desempeño destacado, el equipo se alzó con el título, ganando reconocimiento no 
    			   solo por su talento en el campo, sino también por su espíritu de equipo y determinación.</h6>
    			<a href="noticia3.jsp" class="btn">Leer más</a>
  			</div>
			</div>
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