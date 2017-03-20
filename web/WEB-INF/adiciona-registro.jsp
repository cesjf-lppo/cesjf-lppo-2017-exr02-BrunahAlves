<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cria Reclamações</h1>
        <form method="post">
            <div><label>Nome: <input type="text" name="nome"></label></div>
            <div><label>Email: <input type="text" name="email"></label></div>
            <div><label>Descricao: <textarea name="descricao"></textarea></label></div>
            <select name="status" >
                <option value="0">0: Aberto</option>
            </select>
            <div><input type="submit"></div>
        </form>
    </body>
</html>
