<%-- 
    Document   : edita-registro
    Created on : 13/03/2017, 23:18:05
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edita Reclamações</title>
    </head>
    <body>
        <h1>Edita Reclamações</h1>
        <form method="post">
            <div><input type="hidden" name="id" value="${pessoa.id}"/>id: ${pessoa.id}</div>
            <div><label>Nome: <input type="text" name="nome" value="${pessoa.nome}"</label></div>
            <div><label>Email: <input type="text" name="email" value="${pessoa.email}"</label></div>
            <div><label>Descricao: <input type="text" name="descricao" value="${pessoa.descricao}"</label></div>
            <select name="status" value="${pessoa.status}">
                <option value="0">0: Aberto</option>
                <option value="1">1: Confirmado</option>
                <option value="2">2: Recusado</option>
                <option value="3">3: Em execução</option>
                <option value="4">4: Resolvido</option>
            </select>
            <div><input type="submit"></div>
        </form>
    </body>
</html>