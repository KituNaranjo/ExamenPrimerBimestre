<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<link href="css/estilos.css" rel="stylesheet" type="text/css">
<title>GESTION EVENTOS</title>
</head>
<body>
<main>
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
    	<div align="left" style="padding: 40px;">
	<%String usuario;
		HttpSession sesion = request.getSession();
		if (sesion.getAttribute("usuario") == null) {
	%>
 		<jsp:forward page="login.jsp">
 		<jsp:param name="error" value="Debes registrarse"/>
 		</jsp:forward>
 	<%
 	} else {
 		usuario=(String)sesion.getAttribute("usuario");
 		int perfil=(Integer)sesion.getAttribute("perfil");
 	%>
 		<h3 class="introduccion">GESTIÓN DE EVENTOS</h3>
	<%
		
 	}
	%>
	<ul style="list-style-type: none;">
		<li><a href="nuevoEvento.jsp"><h3>Nuevos Eventos</h3></a></li>
		<li><a href="ModificarEvento.jsp"><h3>Modificar o Eliminar Eventos</h3></a></li>
	</ul>
  	</div>
	</header>
</main>
</body>
</html>