<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.examen.mostrar.Grupo" %>

<%
// Obtener los valores enviados desde el formulario
String cedula = request.getParameter("cedula");
String nombres = request.getParameter("nombres");
String correo = request.getParameter("correo");
String celular = request.getParameter("celular");
String hojaVida = request.getParameter("hoja_vida");
boolean estado = Boolean.parseBoolean(request.getParameter("estado"));

// Crear una instancia de la clase Grupo
Grupo grupo = new Grupo();

// Llamar al método ingresarPostulantes y obtener el resultado
String resultado = grupo.ingresarPostulantes(cedula, nombres, correo, celular, hojaVida, estado);

// Mostrar el resultado en la página
out.print("<p>" + resultado + "</p>");
%>
