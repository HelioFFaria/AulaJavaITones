<%-- 
    Document   : dados
    Created on : 20/10/2019, 01:25:57
    Author     : helio
--%>
<%@page import="br.com.fatecpg.ProjMusic.Db" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Início - ProjMusic</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf"%>
        <h1>Início</h1>
        <h2>Artistas: <u><%= Db.getArtistas().size() %></u></h2>
        <h2>Discos <u><%= Db.getDisco().size() %></u></h2>
        <h2>Artistas: <u><%= Db.getMusicas().size() %></u></h2><br/>
        <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
