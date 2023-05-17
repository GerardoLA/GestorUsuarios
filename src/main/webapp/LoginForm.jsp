<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" >
</head>
<body>
	<form method="POST" action="Login">
		<input type="text" name="usuario" placeholder="usuario"/><br>
		<br>
		<input type="password" name="password" placeholder="password"/><br>
		<br>
		<input type=submit  class="btn btn-primary" value="Enviar"/>
	</form>
</body>
</html>