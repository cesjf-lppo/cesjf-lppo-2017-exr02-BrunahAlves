<%-- 
    Document   : lista-registros
    Created on : 17/03/2017, 17:57:02
    Author     : aluno
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
              <h1>Listagem de Registros</h1>
        <table>
            <tr>
                <th>Id</th>
                <th>Nome</th>
                <th>Email</th>
                <th>Descricao</th>
                <th>Status</th>
            </tr>
            <c:forEach var="pessoa" items="${pessoas}">
                <tr>
                    <td><a href="edita.html?id=${pessoa.id}">${pessoa.id}</a></td>
                    <td>${pessoa.nome}</td>
                    <td>${pessoa.email}</td>
                    <td>${pessoa.descricao}</td>
                    <td>${pessoa.status}</td>
                    <td><a href="exclui.html?id=${pessoa.id}">X</a></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
