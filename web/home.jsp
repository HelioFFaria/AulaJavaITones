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
        <link rel="stylesheet" type="text/css" href="css/base.css" />
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
        <title>Início - ProjMusic</title>
    </head>
    <body>
        <div>
            <%@include file="WEB-INF/jspf/menu.jspf"%>
        </div>
        <div class="bg2">
            <div class="container1" >
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <a href="<%= request.getContextPath() %>/artistas/lista.jsp">
                                <img class="d-block w-100" src="img/5.PNG" width="400px" height="450px" alt="Primeiro Slide">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5 color="white">Artistas</h5>
                                    <p color="white">Acompanhe seus artistas e bandas favoritas.<br/>
                                        Com o nosso acervo de <%= Db.getArtistas().size()%> artistas cadastrados</p>
                                </div>
                            </a>
                        </div>
                        <div class="carousel-item">
                            <a href="<%= request.getContextPath() %>/discos/lista.jsp">
                                <img class="d-block w-100" src="img/4.PNG" width="400px" height="450px" alt="Segundo Slide">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5 color="white">Álbuns</h5>
                                    <p color="white">Encontre sempre atualizados com as músicas que você procura<br/>
                                    Possuímos <%= Db.getDisco().size()%> álbuns cadastrados, para você curtir</p>
                                </div>
                            </a>
                        </div>
                        <div class="carousel-item">
                            <a href="<%= request.getContextPath() %>/musicas/lista.jsp">
                                <img class="d-block w-100" src="img/6.PNG" width="400px" height="450px" alt="Terceiro Slide">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5 color="white">Músicas</h5>
                                    <p color="white">Encontre informações das suas músicas favoritas<br/>
                                    Contamos atualmente com <%= Db.getMusicas().size()%> cadastradas</p>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Anterior</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Próximo</span>
                </a>
            </div>
        </div>
        <div class="bg1"><br/>
            <div class="container2 font">
                <div>
                    <h3>Colaboradores</h3>
                </div><br/><br/>
                <div class="row">
                    <div class="col sbase">
                        <img src="img/alex.jpg" class="avatar"/><br/>
                        <p class="a" style="color: white"><span>Alex Vaz</span><br/>
                        INTERFACE</p>
                    </div>
                    <div class="col sbase">
                        <img src="img/emerson.jpg" class="avatar"/><br/>
                        <p class="a" style="color: white"><span>Emerson Matheus</span><br/>
                        GERAL</p>
                    </div>
                    <div class="col sbase">
                        <img src="img/helio.jpg" class="avatar"/><br/>
                        <p class="a" style="color: white"><span>Helio Faria</span><br/>
                            MÚSICAS</p>
                    </div>
                    <div class="col sbase">                   
                        <img src="img/julio.jpg" class="avatar"/><br/>
                        <p class="a" style="color: white"><span>Julio Takeda</span><br/>
                            ÁLBUNS</p>
                    </div>
                    <div class="col sbase">
                        <img src="img/tales.jpg" class="avatar"/><br/>
                        <p class="a" style="color: white"><span>Tales Parisotto</span><br/>
                            BANDAS</p>
                    </div> 
                </div>
            </div><br/><br/><br/>
        </div>

        <footer class="footer font">
            <%@include file="WEB-INF/jspf/footer.jspf"%>
        </footer>
        <script src="https://code.jquery.com/jquery-3.4.1.js"
                integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous">
        </script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
    </body>
</html>
