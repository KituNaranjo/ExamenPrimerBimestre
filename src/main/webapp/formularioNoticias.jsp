<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="guardarNoticia.jsp" method="post" enctype="multipart/form-data">
    <label for="titulo">Título:</label>
    <input type="text" name="titulo" id="titulo" required>

    <label for="contenido">Contenido:</label>
    <textarea name="contenido" id="contenido" required></textarea>

    <label for="imagen">Imagen:</label>
    <input type="file" name="imagen" id="imagen" required>

    <input type="submit" value="Guardar noticia">
</form>
	
</body>
</html>