<%-- 
    Document   : index
    Created on : 23/09/2019, 19:52:12
    Author     : a
--%>

<%@page import="br.com.fatecpg.itons.Disco"%>
<%@page import="br.com.fatecpg.itons.Db" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Artistas</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/menu.jspf" %>
        <h1>Discos</h1>
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>Artista</th>
                <th>Ano</th>
                <th>Gravadora</th>
                <th>Músicas</th>
            </tr>
            <% for(Disco disco: Db.getDisco()) { %>
            <tr>
                <td><%= disco.getNome() %></td>
                <td><%= disco.getArtista().getNome() %></td>
                <td><%= disco.getAno() %></td>
                <td><%= disco.getGravadora() %></td>
                <td><%= disco.getMusicas().size() %></td>
            </tr>
            <% } %>
        </table>
    </body>
</html>
