<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="com.examen.mostrar.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<link href="css/estilos.css" rel="stylesheet" type="text/css">
<title>ESTADO</title>
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
   <header class="content pagina_inicio header">
   <h2 class="introduccion">ESTADO</h2>
    		<%Grupo post = new Grupo();
	out.print(post.consultarEstado());%>
	</header>
	
</body>
</html>