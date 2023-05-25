<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true" import="com.examen.seguridad.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" type="text/css">
<link href="css/estilos.css" rel="stylesheet" type="text/css">
<title>MENU</title>
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
    	<%String usuario;
	HttpSession sesion = request.getSession();
	if (sesion.getAttribute("usuario") == null) {
	%>
	<jsp:forward page="login.jsp">
	<jsp:param name="error" value="Debe registrarse correctamente en el sistema."/>
 	</jsp:forward>
 	<%
 	}
 	else
 	{
 	usuario=(String)sesion.getAttribute("usuario");
 	int perfil=(Integer)sesion.getAttribute("perfil");
 	%>
 	<h2 class="introduccion">SITIO PRIVADO</h2>
 	<h2 class="introduccion">BIENVENIDO</h2>
	<%
	%>
	<%
	Pagina pagina=new Pagina();
	String menu=pagina.mostrarMenu(perfil);
	out.print("<h2 style=\"color: orange;\">"+menu+"</h2>");
 	}
	%>
	</header>
</main>
</body>
</html>