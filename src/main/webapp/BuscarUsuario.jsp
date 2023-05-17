<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BuscarUsuario</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body>

<form action="VerUsuario">

		<label >Introduzca ID:</label>
		<input type = "text" name="id">
		<input type = "submit" value = "Buscar" class ="btn btn-primary">
		
</form>

<form action= "Principal">
	<input type = "submit" value = "Ir a Principal" class ="btn btn-primary">
</form>

</body>
</html>