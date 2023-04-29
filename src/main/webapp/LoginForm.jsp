<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container mt-3">
  	<c:if test="${msg=='error'}">
	 	<div class="alert alert-danger" role="alert">
	  	Usuario o contrase�a mal
		</div>
  	</c:if>
  	
   	<c:if test="${msg=='logout'}">
		 <div class="alert alert-success" role="alert">
		  Logout realizado
		</div>
  	</c:if>
	  
  	<form action="Loguear" method="POST">
	 	nombre <input type="text" name="nombre" value="ikaslea"/><br><br>
	 	password <input type="text" name="contrasena" value="plaiaundi"/><br><br>
	 	<input type="submit" value="logear"/>
 	</form>
  </div>
</body>
</html>