<%-- 
    Document   : index
    Created on : 23/09/2019, 19:52:12
    Author     : a
--%>

<%@page import="br.com.fatecpg.itons.Artista"%>
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
        <h1>Artistas</h1>
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>Gênero</th>
                <th>Integrantes</th>
                <th>Discos</th>
            </tr>
            <% for(Artista artista: Db.getArtistas()) { %>
            <tr>
                <td><%= artista.getNome() %></td>
                <td><%= artista.getGênero() %></td>
                <td>
                    <% for(String integrante: artista.getIntegrantes()) { %>
                        <%= integrante %><br/>
                    <% } %>
                </td>
                <td><%= artista.getDiscos().size() %></td>
            </tr>
            <% } %>
        </table>
    </body>
</html>
