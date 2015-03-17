<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
    <head>
        <title>Sistcoweb</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="web/css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href='http://fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="web/js/jquery1.min.js"></script>
        <!-- start menu -->
        <link href="web/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="web/js/megamenu.js"></script>
        <script>$(document).ready(function () {
        $(".megamenu").megamenu();
    });</script>
        <!-- dropdown -->
        <script src="web/js/jquery.easydropdown.js"></script>
    </head>
    <body>
        <div class="header-top">
            <div class="wrap"> 
                <div class="header-top-left">
                    <div class="box">
                        <select tabindex="4" class="dropdown">
                            <option value="" class="label" value="">Idioma :</option>
                            <option value="1">Ingles</option>
                            <option value="2">Espa&ntilde;ol</option>
                        </select>
                    </div>

                    <div class="clear"></div>
                </div>
                <div class="cssmenu">
                    <ul>
                        <li class="active"><a href="login.jsp">Cuenta</a></li> |
                        <li><a href="checkout.jsp">Carrito</a></li> |
                        <li><a href="login.jsp">Iniciar Sesion</a></li> |
                        <li><a href="register.jsp">Registrarse</a></li>
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
            
            <div class="clear"></div>
        </div>
    <div class="login">
        <div class="wrap">
            <div class="col_1_of_login span_1_of_login">
                <h4 class="title">Nuevos usuarios </h4>
                <p>Sistcow es un sistema de informacion que te permite ofertar productos de cortiner&iacute;a en l&iacute;nea con la empresa Ambientes1A, brindandote las opciones para que selecciones el producto de acuerdo a tus especificaciones. Ademas puedes conocer la informaci&oacute;n del producto ofertado y gestionar m&agrave;s de una compra si as&iacute;­ lo deseas. </p>
                <div class="button1">
                    <a href="register.jsp"><input type="submit" name="Submit" value="Crear Cuenta"></a>
                </div>
                <div class="clear"></div>
            </div>
            <div class="col_1_of_login span_1_of_login">
                <div class="login-title">
                    <h4 class="title">Usuario</h4>
                    <div id="loginbox" class="loginbox">
                        <form action="Login" method="post" name="login" id="login-form">
                            <fieldset class="input">
                                <p id="login-form-username">
                                    <label for="modlgn_username">Email</label>
                                    <input id="modlgn_username" title="Introduzca su Correo Electronico" type="email" name="email" class="inputbox" size="18" autocomplete="off"required>
                                </p>
                                <p id="login-form-password">
                                    <label for="modlgn_passwd">Contrase&ntilde;a</label>
                                    <input id="modlgn_passwd" title="Introduzca su Contraseña" type="password" name="password" class="inputbox" size="18" autocomplete="off"required>
                                </p>
                                <div class="remember">
                                    <p id="login-form-remember">

                                    </p>
                                    <input type="submit" name="login" class="button" value="Entrar"><div class="clear"></div>
                                </div>
                            </fieldset>
                        </form>
                        <%
                        if (request.getParameter("msg")!=null){
                            out.print(request.getParameter("msg"));
                        }
                        %>
                    </div>
                </div>
            </div>
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
</body>
</html>