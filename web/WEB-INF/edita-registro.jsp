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
            <div><label>Descricao: <textarea name="descricao">${pessoa.descricao}</textarea></label></div>
            <select name="status" value="${pessoa.status}">
                <option value="0" ${pessoa.status==0?"selected":""}>0: Aberto</option>
                <option value="1" ${pessoa.status==1?"selected":""}>1: Confirmado</option>
                <option value="2" ${pessoa.status==2?"selected":""}>2: Recusado</option>
                <option value="3" ${pessoa.status==3?"selected":""}>3: Em execução</option>
                <option value="4" ${pessoa.status==4?"selected":""}>4: Resolvido</option>
            </select>
            <div><input type="submit"></div>
        </form>
    </body>
</html>