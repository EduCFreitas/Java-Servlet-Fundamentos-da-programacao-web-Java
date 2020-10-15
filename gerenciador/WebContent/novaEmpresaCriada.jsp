<!-- <%
//Scriptlet
//Não há mais a necessidade de uso quando se utiliza ${}
String nomeEmpresa = (String)request.getAttribute("empresa");
System.out.println(nomeEmpresa);
%> -->

<html>
<body>
	Empresa ${empresa} cadastrada com sucesso!
	<!-- Pode-se usar um = no local de out.print, assim não precisando do ; -->
</body>
</html>
