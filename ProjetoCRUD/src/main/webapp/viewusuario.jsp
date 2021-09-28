<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Visualiza��o de Usu�rios</title>
</head>
<body>

<%@ page import="com.crudjsjava.dao.UsuarioDao, com.crudjsjava.bean.*, java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h1>Listagem de Usu�rios</h1>

<% 

/*String pageid = request.getParameter("page");
int id = Integer.parseInt(pageid);
int total = 5;

if(id == 1) {
	
} else {
	id = id - 1;
	id = id * total + 1;
} */

List<Usuario> list = UsuarioDao.getAllUsuarios();
//List<Usuario> list = UsuarioDao.getRecords(id, total);
request.setAttribute("list", list);
%>

<table border="1">

     <tr>
     
     <th>ID</th>
     <th>Nome</th>
     <th>Password</th>
     <th>E-mail</th>
     <th>Sexo</th>
     <th>Pa�s</th>
     <th>Editar</th>
     <th>Excluir</th>
     
     <c:forEach items="${list}" var="usuario">
        <tr>
        
        <td>${usuario.getId()}</td>
        <td>${usuario.getNome()}</td>
        <td>${usuario.getPassword()}</td>
        <td>${usuario.getEmail()}</td>
        <td>${usuario.getSexo()}</td>
        <td>${usuario.getPais()}</td>
        <td><a href="editformjsp.jsp?id=${usuario.getId()}">Editar</a></td>
        <td><a href="deleteusuario.jsp?id=${usuario.getId()}">Excluir</a></td>
     
        </tr>
     </c:forEach>
     
     </tr>
     
</table>

<br>

<br>

<a href="addform.jsp">Adicionar novo Usu�rio</a>

</body>
</html>