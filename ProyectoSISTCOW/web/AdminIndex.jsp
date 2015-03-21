<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@page import="Dtos.UsuariosDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <%
            response.setHeader("Cache-Control", "no-cache");
            response.setHeader("Cache-Control", "no-store");
            response.setDateHeader("Expires", 0);
        %>
        <title>Sistcoweb</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="web/css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href='http://fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="web/css/mbcsmbmcp.css" type="text/css" />
        <script type="text/javascript" src="web/js/jquery1.min.js"></script>
        <!-- start menu -->
        <link href="web/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="web/js/megamenu.js"></script>
        <script>$(document).ready(function () {
                $(".megamenu").megamenu();
            });</script>
        <script src="web/js/jquery.easydropdown.js"></script>

        <script type="text/javascript" src="web/js/mbjsmbmcp.js"></script>
    </head>
    <body>
        <%
            HttpSession misesion = request.getSession(false);

            if (misesion.getAttribute("admLogueado") == null) {
                response.sendRedirect("login.jsp?msg= Debe iniciar sesion para acceder");
                UsuariosDTO pr = new UsuariosDTO();
                pr = (UsuariosDTO) misesion.getAttribute("admLogueado");

            } else {
                misesion.removeAttribute("logueado");
                misesion.invalidate();
                 response.sendRedirect("Index.html?msg= Sesion cerrada");
            
            
            
                
        %>
        <div class="header-top">
            <div class="wrap"> 
                <div class="header-top-left">
                    <div class="box">
                        <select tabindex="4" class="dropdown">
                            <option value="" class="label" value="">Idioma :</option>
                            <option value="1">Ingles</option>
                            <option value="2">Espa&ncaron;ol</option>
                        </select>
                    </div>

                    <div class="clear"></div>
                </div>
                <div class="cssmenu">
                    <ul>
                        <li><a href="#">Bienvenido, <%=pr.getNombres()%> <%=pr.getApellidos()%></a></li> |
                        <li><a href="Login?action=admLogueado">Cerrar Sesi&oacute;n</a></li>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div class="header-bottom">
            <div class="wrap">
                <div class="header-bottom-left">
                    <div class="logo">
                        <a href="index.jsp"><img src="web/images/logo.png" alt="" width="800px" height="120px"/></a>
                    </div>
                    <div class="menu">
                        <ul class="megamenu skyblue">
                            <li class="active grid"><a href="Smooth_Curtains.jsp">Cortinas Lisas	</a></li>
                            <li><a class="color4" href="Roman_Curtains.jsp">Cortinas Romanas</a>

                            </li>				
                            <li><a class="color5" href="Japanese_Panels.jsp">Paneles Japoneses</a>
                            </li>
                            <li><a class="color6" href="Shutters.jsp">Persianas</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="header-bottom-right">

            </div>
            <div class="clear"></div>
        </div>
        <div class="mens">    

            <div class="main">

                <center>
                    <div id="mbmcpebul_wrapper" style="max-width: 944px;">
                        <ul id="mbmcpebul_table" class="mbmcpebul_menulist css_menu">
                            <li><div class="buttonbg" style="width: 76px;"><a href="AdminIndex.jsp">Inicio</a></div></li>
                                <%if (pr.getTipoUsuario().equals("Administrador")) {%>
                            <li><div class="buttonbg" style="width: 99px;"><a href="MonthlySalesReport.jsp">Reportes</a></div></li>
                                <%};%>
                            <li><div class="buttonbg" style="width: 93px;"><a href="Odersperdate.jsp">Pedidos</a></div></li>
                            <li><div class="buttonbg"><a href="AdminInvent.jsp">Inventario</a></div></li>
                                <%if (pr.getTipoUsuario().equals("Administrador")) {%>
                            <li><div class="buttonbg" style="width: 177px;"><a href="AdminUsers.jsp">Administrar Usuarios</a></div></li> 
                                <%};%>

                            <li><div class="buttonbg" style="width: 174px;"><a href="AdminChangePass.jsp">Cambiar Contrase&ntilde;a</a></div></li>
                        </ul>
                    </div>
                </center> 

                </br>
                <center>
                    <h3 class="m_3">Bienvenido</h3>
                    </br>
                    <h3 class="m_3"><strong>  <%=pr.getNombres()%> </strong> </h3>  </center>

                <center>

                    </br>
                    <img src="web/images/Logo Ambientes1A.png">

                </center>


                <div class="clear"></div>
            </div>
        </div>
        <div class="footer">
            <div class="footer-top">
                <div class="wrap">
                    <div class="section group example">
                        <div class="col_1_of_2 span_1_of_2">
                            <ul class="f-list">
                                <li><img src="web/images/2.png"><span class="f-text">Envios puerta a puerta</span><div class="clear"></div></li>
                            </ul>
                        </div>
                        <div class="col_1_of_2 span_1_of_2">
                            <ul class="f-list">
                                <li><img src="web/images/3.png"><span class="f-text">Llamanos! 222-555-6666 </span><div class="clear"></div></li>
                            </ul>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="wrap">
                    <div class="copy">
                        <p>© 2014 Template by <a href="http://w3layouts.com" target="_blank">w3layouts</a></p>
                    </div>
                    <div class="f-list2">
                        <ul>
                            <li class="active"><a href="about.jsp">Nosotros</a></li>
                            <li><a href="contact.jsp">Contactanos</a></li> 
                        </ul>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
        <%}%>
    </body>
</html>