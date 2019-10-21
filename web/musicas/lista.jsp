
<%@page import="br.com.fatecpg.ProjMusic.Musica"%>
<%@page import="br.com.fatecpg.ProjMusic.Db" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
        <title>Músicas</title>
    </head>
    <body>
        <div>
            <%@include file="../WEB-INF/jspf/menu.jspf"%>
        </div>
        <div class="bg1">
            <div class="container1 font">
                <div class="center"><br/>
                    <h3>Musicas</h3>
                </div>
                <div><br/><br/>
                    <table>
                        <thead>
                            <tr>
                                <th>Nome</th>
                                <th>Artista</th>
                                <th>Disco</th>
                                <th>Duração</th>
                                <th>Gênero</th>
                                <th>Autoria</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for(Musica musicas: Db.getMusicas()) { %>
                            <tr>
                                <td><%= musicas.getNome() %></td>
                                <td><%= musicas.getArtista().getNome() %></td>
                                <td><%= musicas.getDisco().getNome() %></td>
                                <td class="td-center"><%= musicas.getDuração() %></td>
                                <td><%= musicas.getGênero() %></td>
                                <td><%= musicas.getAutoria() %></td>
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
