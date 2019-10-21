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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
        <title>Artista - ProjMusic</title>
    </head>
    <body>
         <div>
            <%@include file="../WEB-INF/jspf/menu.jspf" %>
        </div>
        <div class="bg1">
            <div class="container4 font">
                <h3>Artista</h3>
                <%if(request.getParameter("i")==null){ %>
                    <div>É preciso informar o indice do artista</div>
                <% } else { %>
                    <% try { %>
                        <% int i = Integer.parseInt(request.getParameter("i")); %>
                        <% Artista artista = Db.getArtistas().get(i); %>
                        <h4><%= artista.getNome()%></h4><br/><br/>
                        <h5>Gênero: <%= artista.getGênero()%></h5>
                        <h5>Integrantes: 
                            <%for(String integrante: artista.getIntegrantes()){%>
                                <u><%=integrante%></u>
                            <%}%>
                        </h5>
                        <h5>Discos: </h5>
                        <table align="center">
                            <thead>
                                <tr>
                                    <th>Nome</th>
                                    <th>Ano</th>
                                    <th>Gravadora</th>
                                    <th>Músicas</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%for(Disco disco: artista.getDiscos()){%>
                                <tr>
                                    <td><%= disco.getNome()%></td>
                                    <td  class="td-center"><%= disco.getAno()%></td>
                                    <td><%= disco.getGravadora()%></td>
                                    <td class="td-center"><%= disco.getMusicas().size() %></td>
                                </tr>
                                <%}%>
                            </tbody>
                        </table>
                    <%}catch(Exception e){%>
                        <div>Artista não encontrado.</div>
                    <%}%>
                <% }%><br/>
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
