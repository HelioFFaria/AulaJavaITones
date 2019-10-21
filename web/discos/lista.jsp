
<%@page import="br.com.fatecpg.ProjMusic.Disco"%>
<%@page import="br.com.fatecpg.ProjMusic.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
        <title>Álbuns</title>
    </head>
    <body>
        <div>
            <%@include file="../WEB-INF/jspf/menu.jspf"%>
        </div>
        <div class="bg1">
            <div class="container4 font">
                <div class="center"><br/>
                    <h3>Álbuns</h3>
                </div>
                <div><br/><br/>
                    <table align="center">
                        <thead>
                            <tr>
                                <th>Nome</th>
                                <th>Artista</th>
                                <th>Ano</th>
                                <th>Gravadora</th>
                                <th>Músicas</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for(Disco disco: Db.getDisco()) { %>
                            <tr>
                                <td><%= disco.getNome() %></td>
                                <td><%= disco.getArtista().getNome() %></td>
                                <td class="td-center"><%= disco.getAno() %></td>
                                <td><%= disco.getGravadora() %></td>
                                <td class="td-center"><%= disco.getMusicas().size() %></td>
                            </tr>
                            <% } %>
                        <tbody>
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
