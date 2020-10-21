<!-- <%
//Scriptlet
//Não há mais a necessidade de uso quando se utiliza ${}
String nomeEmpresa = (String)request.getAttribute("empresa");
System.out.println(nomeEmpresa);
%> -->

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<body>
	<c:if test="${not empty empresa}">
	Empresa ${empresa} cadastrada com sucesso!
	<!-- Pode-se usar um = no local de out.print, assim não precisando do ; -->
	</c:if>
	
	<c:if test="${empty empresa}">
	Nenhuma empresa cadastrada.
	<!-- Pode-se usar um = no local de out.print, assim não precisando do ; -->
	</c:if>
</body>
</html>
