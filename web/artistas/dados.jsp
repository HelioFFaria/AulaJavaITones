<%-- 
    Document   : dados
    Created on : 20/10/2019, 01:25:57
    Author     : helio
--%>
<%@page import="br.com.fatecpg.ProjMusic.Disco"%>
<%@page import="br.com.fatecpg.ProjMusic.Db"%>
<%@page import="br.com.fatecpg.ProjMusic.Artista"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Artista - ProjMusic</title>
    </head>
    <body>
         <%@include file="../WEB-INF/jspf/menu.jspf"%>
         <a href="<%=request.getContextPath()%>/artistas/lista.jsp">Voltar</a>
        <h1>Artista</h1>
        <%if(request.getParameter("i")==null){%>
            <div>É preciso informar o indice do artista</div>
        <% }else{%>
            <% try{%>
                <%int i = Integer.parseInt(request.getParameter("i"));%>
                <%Artista artista = Db.getArtistas().get(i);%>
                <h2>Dados do artista</h2>
                <h3>Nome</h3><div><%= artista.getNome()%></div>
                <h3>Gênero</h3><div><%= artista.getGênero()%></div>
                <h3>Integrantes</h3>
                <div>
                    <%for(String integrante: artista.getIntegrantes()){%>
                    <u><%=integrante%></u>
                    <%}%>
                </div>
                <h3>Discos</h3>
    <table border="i">
        <tr>
            <th>Nome</th>
            <th>Artista</th>
            <th>Ano</th>
            <th>Gravadora</th>
            <th>Músicas</th>
        </tr>
        <%for(Disco disco: artista.getDiscos()){%>
        <tr>
            <td><%= disco.getNome()%></td>
            <td><%= disco.getArtista().getNome()%></td>
            <td><%= disco.getAno()%></td>
            <td><%= disco.getGravadora()%></td>
            <td><%= disco.getMusicas().size() %></td>
        </tr>
        <%}%>
    </table>
                <%}catch(Exception e){%>
                    <div>Artista não encontrado.</div>
            <%}%>
        <% }%><br/>
        <%@include file="../WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
