<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>


<form Action ="ModificarUsuario" method="get" >
<input type = "hidden" name= "id" value="${usuario.id}" >${usuario.id}
	<input type="text" name="nombre"  placeholder="usuario" value="${usuario.nombre}"><br>
	<br>
	<input type="password" name="password" placeholder="password" value="${usuario.password}"><br>
	<br>
	<input type="date" name="fecha_login" placeholder="fecha.login" value="${usuario.fecha_login}"><br>
	<br>
		Rol:<select name ="rol">
			<option ></option>
			 <c:forEach items="${roles}" var="rol">
				<c:choose>
					<c:when test="${usuario.rol.id==rol.id}">
						<option selected value="${rol.nombre}">${rol.nombre}</option>
					</c:when>
					<c:when test="${usuario.rol.id!=rol.id}">
						<option value="${rol.nombre}">${rol.nombre}</option>
					</c:when>
					</c:choose>
				</c:forEach>
		</select>
	
	
	
	<br>
	<input type=submit value="Modificar"/>

</form>
		<a href="Principal" class="btn">Volver</a>
</body>
</html>