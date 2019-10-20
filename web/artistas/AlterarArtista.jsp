<%-- 
    Document   : AlterarArtista
    Created on : 20/10/2019, 02:20:02
    Author     : helio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="br.com.fatecpg.ProjMusic.Artista"%>
<%@page import="br.com.fatecpg.ProjMusic.Db"%>
<%@page import="br.com.fatecpg.ProjMusic.Disco"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (request.getParameter("Cancelar") != null) {
        response.sendRedirect("artistas.lista.jsp");
    }
    if (request.getParameter("set") != null) {
        int index = Integer.parseInt(request.getParameter("index"));
        String nome = request.getParameter("nome");
        String gênero = request.getParameter("gênero");
        String integrantes = request.getParameter("integrantes");
        Db.getArtista(Disco disco).set(index, new Artista(nome, gênero, integrantes));
        response.sendRedirect("artistas.lista.jsp");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Artista</title>
    </head>
    <body>
        
            <%@include file="WEB-INF/jspf/header.jspf" %>
       
        
            <h4>Alterar Artista</h4><br/>
                    <%try {%>
                    <%int index = Integer.parseInt(request.getParameter("index"));%>
                    <%banda banda = dbBanda.getBanda().get(index);%>            
            <form>
                <div>
                    Indice: <br/>
                    <%=index%> <br/>
                    <input type="hidden" name="index" value="<%=index%>"/>
                </div>
                <div>
                    Nome:<br/>
                    <input type="text" name="Nome" required style="color: #8219ab; padding: 5px;" value="<%=banda.getNome()%>"/>
                </div><br/>
                <div>
                    Gênero:<br/>
                    <input type="text" name="Genero" required style="color: #8219ab; padding: 5px;" value="<%=banda.getGenero()%>"/>
                </div><br/>
                <div>
                    Ano:<br/>
                    <input type=" text" name="Ano" required style="color: #8219ab; padding: 5px;" value="<%=banda.getAno()%>"/>
                </div><br/><br/>

                <input class="btn-custom" type="submit" name="set" value="Alterar"/><br/><br/> 

            </form>
            <%} catch (Exception ex) {%>
            <h3> Erro ao processar formulario</h3>
            <%}%>
        </div>
        <footer class="footer">
            <%@include file="WEB-INF/jspf/footer.jspf" %>
        </footer>
    </body>
</html>

