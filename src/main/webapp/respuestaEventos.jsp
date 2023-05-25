<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="com.examen.mostrar.Grupo" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
    <%
    int idEvento = Integer.parseInt(request.getParameter("id"));
    String nombre = request.getParameter("nombre");
    String descripcion = request.getParameter("descripcion");
    String fechaString = request.getParameter("fecha");
    java.sql.Date fecha = java.sql.Date.valueOf(fechaString);
    String ubicacion = request.getParameter("ubicacion");

    Grupo evento = new Grupo();
    evento.setId(idEvento);
    evento.setNombre(nombre);
    evento.setDescripcion(descripcion);
    evento.setFecha(fecha);
    evento.setUbicacion(ubicacion);

    boolean actualizado = evento.ModificarEvento(evento);
    %>
    <% if (actualizado) { %>
        <p>El evento ha sido actualizado exitosamente.</p>
    <% } else { %>
        <p>Ocurrió un error al actualizar el evento.</p>
    <% } %>
</body>
</html>
