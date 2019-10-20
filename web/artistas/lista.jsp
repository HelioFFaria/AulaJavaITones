<%-- 
    Document   : dados
    Created on : 20/10/2019, 01:25:57
    Author     : helio
--%>
<%@page import="br.com.fatecpg.ProjMusic.Artista"%>
<%@page import="br.com.fatecpg.ProjMusic.Db" %>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Artistas</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/menu.jspf"%>
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
                <td>
                    <a href="dados.jsp?i=<%=Db.getArtistaIndex(artista)%> ">
                        <%= artista.getNome()%>
                    </a>
                </td>
                <td><%= artista.getNome() %></td>
                <td>
                    <% for(String integrante: artista.getIntegrantes()) { %>
                        <%= integrante %><br/>
                    <% } %>
                </td>
                <td><%= artista.getDiscos().size() %></td>
            </tr>
            <% } %>
        </table><br/>
         <%@include file="../WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
