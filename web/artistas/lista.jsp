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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
        <title>Artistas</title>
    </head>
    <body>
        <div>
            <%@include file="../WEB-INF/jspf/menu.jspf"%>
        </div>
        <div class="bg1">
            <div class="container4 font">
                <div class="center"><br/>
                    <h3>Artistas</h3>
                </div>
                <div><br/><br/>
                    <table align="center">
                        <thead>
                            <tr>
                                <th>Nome</th>
                                <th>Gênero</th>
                                <th>Integrantes</th>
                                <th>Discos</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for(Artista artista: Db.getArtistas()) { %>
                            <tr class="td-center">
                                <td>
                                    <a  href="dados.jsp?i=<%=Db.getArtistaIndex(artista)%>"
                                    style="color: inherit !important;
    text-decoration: none !important;"><%= artista.getNome()%>
                                    </a>
                                </td>
                                <td class="td-center"><%= artista.getGênero() %></td>
                                <td class="td-center">
                                    <% for(String integrante: artista.getIntegrantes()) { %>
                                        <%= integrante %><br/>
                                    <% } %>
                                </td>
                                <td class="td-center"><%= artista.getDiscos().size() %></td>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div><br/><br/><br/>
            </div>
        </div>
        <footer class="footer font">
            <%@include file="../WEB-INF/jspf/footer.jspf"%>
        </footer>
        <script src="https://code.jquery.com/jquery-3.4.1.js"
                integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous">
        </script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    </body>
</html>
