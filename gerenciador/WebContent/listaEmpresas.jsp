<%@page import="br.com.alura.gerenciador.servlet.Empresa"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List, br.com.alura.gerenciador.servlet.Empresa" %>
<!-- Importa��o da taglib para usar o forEach -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${not empty empresa}">
	<p>Empresa ${empresa} cadastrada com sucesso!</p>
	<!-- Pode-se usar um = no local de out.print, assim n�o precisando do ; -->
	</c:if>
	
	<c:if test="${empty empresa}">
	<p>Nenhuma empresa cadastrada.</p>
	<!-- Pode-se usar um = no local de out.print, assim n�o precisando do ; -->
	</c:if>
	
	<p>Lista de empresas:</p>
	<ul>
		<!--  Baixar jstl-1.2.jar e colar em WebContent -> WEB-INF -> lib -->
		<c:forEach items="${empresas}" var="empresa">
			<li>${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/></li>
		</c:forEach>
	</ul>
</body>
</html>