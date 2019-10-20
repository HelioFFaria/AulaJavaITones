
<%@page import="br.com.fatecpg.ProjMusic.Musica"%>
<%@page import="br.com.fatecpg.ProjMusic.Db" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Artistas</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/menu.jspf" %>
        <h1>Musicas</h1>
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>Artista</th>
                <th>Disco</th>
                <th>Duração</th>
                <th>Gênero</th>
                <th>Autoria</th>
            </tr>
            <% for(Musica musicas: Db.getMusicas()) { %>
            <tr>
                <td><%= musicas.getNome() %></td>
                <td><%= musicas.getArtista().getNome() %></td>
                <td><%= musicas.getDisco().getNome() %></td>
                <td><%= musicas.getDuração() %></td>
                <td><%= musicas.getGênero() %></td>
                <td><%= musicas.getAutoria() %></td>
            </tr>
            <% } %>
        </table><br/>
        <%@include file="../WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
