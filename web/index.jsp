<%-- 
    Document   : index
    Created on : 23/09/2019, 19:52:12
    Author     : a
--%>

<%@page import="br.com.fatecpg.itons.Db" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Início - iTons</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>Início</h1>
        <h2>Artistas: <u><%= Db.getArtistas().size() %></u></h2>
        <h2>Discos <u><%= Db.getDisco().size() %></u></h2>
        <h2>Artistas: <u><%= Db.getMusicas().size() %></u></h2>
    </body>
</html>
