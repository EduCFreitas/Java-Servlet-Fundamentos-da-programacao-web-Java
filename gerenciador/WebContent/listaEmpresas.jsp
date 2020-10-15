<%@page import="br.com.alura.gerenciador.servlet.Empresa"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List, br.com.alura.gerenciador.servlet.Empresa" %>
<!-- Importação da taglib para usar o forEach -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Lista de empresas:</h3>
	<ul>
		<!--  Baixar jstl-1.2.jar e colar em WebContent -> WEB-INF -> lib -->
		<c:forEach items="${empresas}" var="empresa">
			<li>${empresa.nome}</li>
		</c:forEach>
	</ul>
</body>
</html>