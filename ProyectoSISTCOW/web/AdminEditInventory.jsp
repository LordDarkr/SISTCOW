
<%@page import="Dtos.UsuariosDTO"%>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@page import="java.util.ArrayList"%>
<%@page import="Dtos.ProductosDTO"%>
<%@page import="modelo.daos.ProductosDAO"%>
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

            } else {
                UsuariosDTO pr = new UsuariosDTO();
                pr = (UsuariosDTO) misesion.getAttribute("admLogueado");
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
                        <li><a href="logout.jsp">Cerrar Sesi&oacute;n</a></li>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div class="header-bottom">
            <div class="wrap">
                <div class="header-bottom-left">
                    <div class="logo">
                        <a href="index.html"><img src="web/images/logo.png" alt="" width="800px" height="120px"/></a>
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

            <div class="clear"></div>
        </div>
        <div class="clear"></div>

        <div class="mens">    

            <div class="main">
                <center>

                    <br/>
                    <center> <h3 class="m_3">Editar Inventario</h3></center>
                    <center> <h3 class="m_3"> </h3></center>
                    <center>
                        <div class="col_1_of_CHP span_1_of_CHP">

                            <form action="EditInventory?idprod=<%=request.getParameter("idp")%>" method="post" name="editinv" id="login-form">	  <fieldset class="input">

                                    <label for="codprod">Codigo</label>
                                    <input  type="text" name="codprod" class="inputbox" size="18" value="<%=request.getParameter("idp")%>" disabled="true">
                                    </p>
                                    <label for="nompro">Nombre </label>
                                    <input type="text" name="nompro" value="<%=request.getParameter("nomp")%>" class="inputbox" size="18" disabled="true">
                                    </p>
                                    <label for="cantidad">Cantidad</label>
                                    <input type="text" name="cantidad" value="<%=request.getParameter("canp")%>" class="inputbox" size="18" REQUIRED>
                                    </p>
                                    <label for="tc">Tipo de Cortina</label>
                                    </br>
                                    <select name="tc" style="width: 200px;" disabled="true">
                                        <option value=""><%=request.getParameter("tco")%></option>
                                        
                                    </select>
                                    </p>
                                    <label for="tt">Tipo de Tela</label>
                                    </br>
                                    <select name="tt" style="width: 200px;" disabled="true">   
                                        <option value=""><%=request.getParameter("tte")%></option>
                                        
                                    </select>
                                    </p>
                                    <label for="color">Color</label>
                                    </br>
                                    <select name="color" style="width: 200px;" disabled="true">  
                                        <option value=""><%=request.getParameter("col")%></option>
                                        
                                    </select>
                                    </p>
                                    <div class="remember">
                                        <p id="login-form-remember">
                                        </p>
                                        <center> <input type="submit" name="editI" class="button" value="Modificar"> </center>
                                        <div class="clear"></div>
                                    </div>
                                </fieldset>

                            </form>
                        </div>                         
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
                            <li class="active"><a href="about.jsp">Nosotros</a></li> |
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
