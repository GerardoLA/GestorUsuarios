<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="modelo.Usuario" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Usuario usuarioLogueado = (Usuario)session.getAttribute("usuarioLogueado");
%>
<div class="container mt-3">
  	<h1>Hello, ${sessionScope.usuarioLogueado.nombre}!</h1>
  	<h1>Kaixo, <%=usuarioLogueado.getNombre()%></h1>
    <a href="Logout">Logout</a>
  </div>
</body>
</html>>