<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
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
   
   <header class="contenido_introduccion header">
   <h2 class="introduccion">ASU F�TBOL</h2>
    	<h3>
        	"Eres un apasionado del f�tbol? �nete al equipo universitario m�s emocionante
        	de la Sede Quito. Vive la emoci�n de cada partido, apoya a tus compa�eros y forma
        	parte de una comunidad que comparte su pasi�n por el deporte. �S� parte del legado
        	de ASU F�tbol y prep�rate para llevar tu juego al siguiente nivel!"
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
    			<h2 class="titulos-noticias">El Grupo Asu F�tbol celebra su aniversario n�mero 10 con una gran fiesta</h2>
    			<center>
    				<img src="imagenes/aniversario.jpg" alt="aniversario" width="300" height="200">
    			</center>
    			<h6>El Grupo Asu F�tbol, reconocido equipo de f�tbol local, celebr� su d�cimo aniversario con una fiesta 
    			   llena de emociones. Jugadores, entrenadores y aficionados se reunieron para conmemorar una d�cada de 
    			   pasi�n por el deporte y resaltar los logros alcanzados durante este tiempo.</h6>
    			<a href="noticia1.jsp" class="btn">Leer m�s</a>
  			</div>
  			<div class="noticias-items">
    			<h2 class="titulos-noticias">Asu F�tbol firma acuerdo de patrocinio con reconocida marca deportiva</h2>
    			<center>
    				<img src="imagenes/marathon.png" alt="Marca Deportiva">
    			</center>
    			<br>
    			<h6>El Grupo Asu F�tbol ha asegurado un valioso acuerdo de patrocinio con una prestigiosa marca deportiva. 
    			   Este acuerdo permitir� al equipo recibir apoyo financiero y acceso a productos de alta calidad para el 
    			   desarrollo de sus actividades. Ambas partes esperan fortalecer su relaci�n y trabajar juntas en beneficio 
    			   del f�tbol local.</h6>
    			<a href="noticia2.jsp" class="btn">Leer m�s</a>
  			</div>
  			<div class="noticias-items">
    			<h2 class="titulos-noticias">Asu F�tbol se corona campe�n de la liga regional</h2>
    			<center>
    				<img src="imagenes/Campeon.jpg" alt="Campeon" width="325" height="250">
    			</center>
    			<br>
    			<h6>En una emocionante temporada, el Grupo Asu F�tbol logr� consagrarse campe�n de la liga regional. Despu�s 
    			   de intensos partidos y un desempe�o destacado, el equipo se alz� con el t�tulo, ganando reconocimiento no 
    			   solo por su talento en el campo, sino tambi�n por su esp�ritu de equipo y determinaci�n.</h6>
    			<a href="noticia3.jsp" class="btn">Leer m�s</a>
  			</div>
			</div>
	</section>
	
	<section class="content contactos">
  		<div class="contactos-izquierda">
    		<h4 class="titulo_contactos">Informaci�n de contacto</h4>
    			<p>Nos encontramos ubicados:</p>
    			<p>Campus Norte: Av. Isabel La Cat�lica y Madrid</p>
    			<p>Campus Sur: Av. Mor�n Valverde y Rumichaca �an</p>
    			<p><a href="https://www.google.com/maps/d/u/0/edit?mid=15C5bj5iXJNcoAg6SJQmcVor_RD7Yb3w&usp=sharing" class="btn">Ver ubicaci�n</a></p>
  		</div>
  		<div class="contactos-derecha">
   			 <h4 class="titulo_contactos">Contactarse con el docente</h4>
    			<p>Edwin Manuel �acato Pizarro</p>
   	 			<p>Docente T�cnico</p>
    			<p>Correo Institucional: enacato@ups.edu.ec</p>
    			<p>N�mero de contacto: +593 96718 5762</p>
  		</div>
  		<div class="derechos-reservados">
    		<p>Todos los derechos reservados Christian Naranjo � 2023 ASU F�tbol</p>
  		</div>
	</section>
</body>
</html>