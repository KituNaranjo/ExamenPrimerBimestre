<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "com.examen.seguridad.*"%>
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
   <h3 class="tINTRODUCCION">CAMBIO DE CLAVE</h3>
    <form method="post" action="cambioClave.jsp">
    <table>
        <tr>
            <td><h3>Usuario:</td>
            <td><input type="text" name="login" required></td>
        </tr>
        <tr>
            <td><h3>Contraseña actual:</td>
            <td><input type="password" name="claveActual" required></td>
        </tr>
        <tr>
            <td><h3>Nueva contraseña:</td>
            <td><input type="password" name="nuevaContrasena" required></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Cambiar contraseña" class="btn"></td>
        </tr>
    </table>
	</form>
    <%
    Usuario user= new Usuario();
    String login = request.getParameter("login");
    String claveActual = request.getParameter("claveActual");
    String nuevaContrasena = request.getParameter("nuevaContrasena");
    boolean cambio = user.cambiarClave(login, claveActual, nuevaContrasena);
    if (cambio) {
        response.sendRedirect("menu.jsp");
        out.println("¡Contraseña cambiada exitosamente!");
    } else {
        out.println("No se pudo cambiar la contraseña. Por favor, inténtalo nuevamente.");
    }

    %>
	</header>
	
	
</body>
</html>