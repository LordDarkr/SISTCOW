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
        <title>Persianas de Aluminio</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="web/css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="web/css/form.css" rel="stylesheet" type="text/css" media="all" />
        <link href='http://fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'>
        <script src="web/js/jquery1.min.js"></script>
        <!-- start menu -->
        <link href="web/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="web/js/megamenu.js"></script>
        <script>$(document).ready(function () {
                $(".megamenu").megamenu();
            });</script>
        <script type="text/javascript" src="web/js/jquery.jscrollpane.min.js"></script>
        <script type="text/javascript" id="sourcecode">
            $(function ()
            {
                $('.scroll-pane').jScrollPane();
            });
        </script>
    </head>
    <body>
        <%
            HttpSession misesion = request.getSession(false);
            UsuariosDTO pr = new UsuariosDTO();
            pr = (UsuariosDTO) misesion.getAttribute("clientLogueado");
        %>
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
                    <%if (misesion.getAttribute("clientLogueado") == null) {%>
                    <ul>
                        <li class="active"><a href="login.jsp">Cuenta</a></li> |
                        <li><a href="checkout.jsp">Carrito</a></li> |
                        <li><a href="login.jsp">Iniciar Sesion</a></li> |
                        <li><a href="register.jsp">Registrarse</a></li>
                    </ul>

                    <%} else {%>
                    <ul>

                        <li><a href="UserQuotes.jsp"><%=pr.getNombres()%> <%=pr.getApellidos()%></a></li> |
                        <li><a href="checkout.jsp">Carrito</a></li> |
                        <li><a href="logout.jsp">Cerrar Sesi&oacute;n</a></li>
                    </ul>
                    <% }%>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div class="header-bottom">
            <div class="wrap">
                <div class="header-bottom-left">
                    <div class="logo">
                        <a href="index.jps"><img src="web/images/logo.png" alt="" width="800px" height="120px"/></a>
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
        <div class="mens">    
            <div class="main">
                <div class="wrap">
                    <div class="cont span_2_of_3">
                        <h2 class="head">Persianas</h2>
                        <div class="mens-toolbar">
                            <div class="sort">
                                <div class="sort-by">

                                </div>
                            </div>
                            <div class="pager">   
                                <div class="limiter visible-desktop">

                                </div>
                                <ul class="dc_pagination dc_paginationA dc_paginationA06">

                                </ul>
                                <div class="clear"></div>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="top-box">
                            <div class="col_1_of_3 span_1_of_3"> 
                                <a href="#modalp1">
                                    <div class="inner_content clearfix">
                                        <div class="product_image">
                                            <img src="web/images/Shutters/pic.jpg" alt=""/>
                                        </div>
                                        <div class="sale-box"><span class="on_sale title_shop">New</span></div>	
                                        <div class="price">
                                            <div class="cart-left">
                                                <p class="title">Reggia Persiana madera</p>
                                                <div class="price1">
                                                    <span class="actual"></span>
                                                </div>
                                            </div>
                                            <div class="cart-right"> </div>
                                            <div class="clear"></div>
                                        </div>				
                                    </div>
                                </a>
                            </div>
                            <div class="col_1_of_3 span_1_of_3">
                                <a href="#modalp2">
                                    <div class="inner_content clearfix">
                                        <div class="product_image">
                                            <img src="web/images/Shutters/pic1.jpg" alt=""/>
                                        </div>
                                        <div class="price">
                                            <div class="cart-left">
                                                <p class="title">Persiana Roller Duo PVC</p>
                                                <div class="price1">
                                                    <span class="actual"></span>
                                                </div>
                                            </div>
                                            <div class="cart-right"> </div>
                                            <div class="clear"></div>
                                        </div>				
                                    </div>
                                </a>
                            </div>
                            <div class="col_1_of_3 span_1_of_3">
                                <a href="#modalp3">
                                    <div class="inner_content clearfix">
                                        <div class="product_image">
                                            <img src="web/images/Shutters/pic2.jpg" alt=""/>
                                        </div>
                                        <div class="sale-box1"><span class="on_sale title_shop">Sale</span></div>	
                                        <div class="price">
                                            <div class="cart-left">
                                                <p class="title">Persiana vertical PVC</p>
                                                <div class="price1">
                                                    <span class="actual"></span>
                                                </div>
                                            </div>
                                            <div class="cart-right"> </div>
                                            <div class="clear"></div>
                                        </div>				
                                    </div>
                                </a>
                            </div>
                            <div class="clear"></div>
                        </div>	
                        <div class="top-box">
                            <div class="col_1_of_3 span_1_of_3">
                                <a href="#modalp4">
                                    <div class="inner_content clearfix">
                                        <div class="product_image">
                                            <img src="web/images/Shutters/pic3.jpg" alt=""/>
                                        </div>
                                        <div class="price">
                                            <div class="cart-left">
                                                <p class="title">Persiana PVC verde lima</p>
                                                <div class="price1">
                                                    <span class="actual"></span>
                                                </div>
                                            </div>
                                            <div class="cart-right"> </div>
                                            <div class="clear"></div>
                                        </div>				
                                    </div>
                                </a>
                            </div>
                            <div class="col_1_of_3 span_1_of_3">
                                <a href="#modalp5">
                                    <div class="inner_content clearfix">
                                        <div class="product_image">
                                            <img src="web/images/Shutters/pic4.jpg" alt=""/>
                                        </div>
                                        <div class="sale-box"><span class="on_sale title_shop">New</span></div>	
                                        <div class="price">
                                            <div class="cart-left">
                                                <p class="title">Persiana PVC azul marino</p>
                                                <div class="price1">
                                                    <span class="actual"></span>
                                                </div>
                                            </div>
                                            <div class="cart-right"> </div>
                                            <div class="clear"></div>
                                        </div>				
                                    </div>
                                </a>
                            </div>
                            <div class="col_1_of_3 span_1_of_3">
                                <a href="#modalp6">
                                    <div class="inner_content clearfix">
                                        <div class="product_image">
                                            <img src="web/images/Shutters/pic5.jpg" alt=""/>
                                        </div>
                                        <div class="price">
                                            <div class="cart-left">
                                                <p class="title"> Persiana pvc trigo</p>
                                                <div class="price1">
                                                    <span class="actual"></span>
                                                </div>
                                            </div>
                                            <div class="cart-right"> </div>
                                            <div class="clear"></div>
                                        </div>				
                                    </div>
                                </a>

                            </div>
                            <div class="clear"></div>
                        </div>			 							 			    		    
                    </div>
                    <div class="rsidebar span_1_of_left">

                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
        <script src="web/js/jquery.easydropdown.js"></script>
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

        <!-- Modals -->
        <div id="modalp1" class="modalmask">
            <div class="modalbox movedown">
                <a href="#close" title="Close" class="close">X</a>
                <p><div class="inner_content clearfix">
                    <div class="product_image">
                        <img src="web/images/Shutters/pic.jpg" alt=""/>
                    </div>
                    <div class="sale-box"><span class="on_sale title_shop">New</span></div>	
                    <div class="price">
                        <div class="cart-left">
                            <p class="title">Reggia Persiana madera</p>
                            <fieldset>
                                <form name="Especificaciones" action="#" method="post" id="Especificaciones">

                                    <tr>
                                        <td width="21%" >Alto(Cms)</td>
                                        <td width="82%"><input type="text" size="12" name="T1" value=""></td>
                                    </tr>
                                    <tr>
                                        <td width="21%">Ancho(Cms)</td>
                                        <td width="79%"><input type="text" size="12" name="T2" value=""></td>
                                    </tr>
                                    <tr>
                                        </br>
                                        <td width="23%">Tipo de Material</td>
                                        <td width="79%">
                                            <select tabindex="4" name="Tela">
                                                <option value="234">Aluminio</option>
                                                <option value="365">Madera</option>
                                                <option value="481">Plastico</option>
                                            </select></td>
                                    </tr>
                                    <tr>
                                        </br>
                                        <td width="21%">Color</td>
                                        <td width="79%">
                                            <select tabindex="4" name="Color">
                                                <option value="234">Azul</option>
                                                <option value="365">Gris</option>
                                                <option value="481">Rojo</option>
                                            </select></td>
                                        </br>
                                    <input type="image" action="" src="web/images/cart.png" >
                                </form>
                            </fieldset> 
                            <p>&nbsp;</p>
                            <div class="price1">
                                <span class="actual"></span>
                            </div>
                        </div>
                        <div class="cart-right"> </div>
                        <div class="clear"></div>
                    </div>				
                </div></p>

            </div>
        </div>
        <!-- end modalp1 -->
        <div id="modalp2" class="modalmask">
            <div class="modalbox movedown">
                <a href="#close" title="Close" class="close">X</a>
                <p><div class="inner_content clearfix">
                    <div class="product_image">
                        <img src="web/images/Shutters/pic1.jpg" alt=""/>
                    </div>
                    <div class="price">
                        <div class="cart-left">
                            <p class="title">Persiana Roller Duo </p>
                            <fieldset>
                                <form name="Especificaciones" action="#" method="post" id="Especificaciones">

                                    <tr>
                                        <td width="21%" >Alto(Cms)</td>
                                        <td width="82%"><input type="text" size="12" name="T1" value=""></td>
                                    </tr>
                                    <tr>
                                        <td width="21%">Ancho(Cms)</td>
                                        <td width="79%"><input type="text" size="12" name="T2" value=""></td>
                                    </tr>
                                    <tr>
                                        </br>
                                        <td width="23%">Tipo de Material</td>
                                        <td width="79%">
                                            <select tabindex="4" name="Tela">
                                                <option value="234">Aluminio</option>
                                                <option value="365">Madera</option>
                                                <option value="481">Plastico</option>
                                            </select></td>
                                    </tr>
                                    <tr>
                                        </br>
                                        <td width="21%">Color</td>
                                        <td width="79%">
                                            <select tabindex="4" name="Color">
                                                <option value="234">Azul</option>
                                                <option value="365">Gris</option>
                                                <option value="481">Rojo</option>
                                            </select></td>
                                        </br>
                                    <input type="image" action="" src="web/images/cart.png" >
                                </form>
                            </fieldset>                        
                            <div class="price1">
                                <span class="actual"></span>
                            </div>
                        </div>
                        <div class="cart-right"> </div>
                        <div class="clear"></div>
                    </div>				
                </div></p>

            </div>
        </div>
        <!-- end modalp2 -->
        <div id="modalp3" class="modalmask">
            <div class="modalbox movedown">
                <a href="#close" title="Close" class="close">X</a>
                <p><div class="inner_content clearfix">
                    <div class="product_image">
                        <img src="web/images/Shutters/pic2.jpg" alt=""/>
                    </div>
                    <div class="sale-box1"><span class="on_sale title_shop">Sale</span></div>	
                    <div class="price">
                        <div class="cart-left">
                            <p class="title">Persiana vertical </p>
                            <fieldset>
                                <form name="Especificaciones" action="#" method="post" id="Especificaciones">

                                    <tr>
                                        <td width="21%" >Alto(Cms)</td>
                                        <td width="82%"><input type="text" size="12" name="T1" value=""></td>
                                    </tr>
                                    <tr>
                                        <td width="21%">Ancho(Cms)</td>
                                        <td width="79%"><input type="text" size="12" name="T2" value=""></td>
                                    </tr>
                                    <tr>
                                        </br>
                                        <td width="23%">Tipo de Material</td>
                                        <td width="79%">
                                            <select tabindex="4" name="Tela">
                                                <option value="234">Aluminio</option>
                                                <option value="365">Madera</option>
                                                <option value="481">Plastico</option>
                                            </select></td>
                                    </tr>
                                    <tr>
                                        </br>
                                        <td width="21%">Color</td>
                                        <td width="79%">
                                            <select tabindex="4" name="Color">
                                                <option value="234">Azul</option>
                                                <option value="365">Gris</option>
                                                <option value="481">Rojo</option>
                                            </select></td>
                                        </br>
                                    <input type="image" action="" src="web/images/cart.png" >
                                </form>
                            </fieldset> 
                            <div class="price1">
                                <span class="actual"></span>
                            </div>
                        </div>
                        <div class="cart-right"> </div>
                        <div class="clear"></div>
                    </div>				
                </div></p>

            </div>
        </div>
        <!-- end modalp3 -->
        <div id="modalp4" class="modalmask">
            <div class="modalbox movedown">
                <a href="#close" title="Close" class="close">X</a>
                <p><div class="inner_content clearfix">
                    <div class="product_image">
                        <img src="web/images/Shutters/pic3.jpg" alt=""/>
                    </div>
                    <div class="price">
                        <div class="cart-left">
                            <p class="title">Persiana  verde lima</p>
                            <fieldset>
                                <form name="Especificaciones" action="#" method="post" id="Especificaciones">

                                    <tr>
                                        <td width="21%" >Alto(Cms)</td>
                                        <td width="82%"><input type="text" size="12" name="T1" value=""></td>
                                    </tr>
                                    <tr>
                                        <td width="21%">Ancho(Cms)</td>
                                        <td width="79%"><input type="text" size="12" name="T2" value=""></td>
                                    </tr>
                                    <tr>
                                        </br>
                                        <td width="23%">Tipo de Material</td>
                                        <td width="79%">
                                            <select tabindex="4" name="Tela">
                                                <option value="234">Aluminio</option>
                                                <option value="365">Madera</option>
                                                <option value="481">Plastico</option>
                                            </select></td>
                                    </tr>
                                    <tr>
                                        </br>
                                        <td width="21%">Color</td>
                                        <td width="79%">
                                            <select tabindex="4" name="Color">
                                                <option value="234">Azul</option>
                                                <option value="365">Gris</option>
                                                <option value="481">Rojo</option>
                                            </select></td>
                                        </br>
                                    <input type="image" action="" src="web/images/cart.png" >
                                </form>
                            </fieldset>               
                            <div class="price1">
                                <span class="actual"></span>
                            </div>
                        </div>
                        <div class="cart-right"> </div>
                        <div class="clear"></div>
                    </div>				
                </div></p>

            </div>
        </div>
        <!-- end modalp4 -->
        <div id="modalp5" class="modalmask">
            <div class="modalbox movedown">
                <a href="#close" title="Close" class="close">X</a>
                <p><div class="inner_content clearfix">
                    <div class="product_image">
                        <img src="web/images/Shutters/pic4.jpg" alt=""/>
                    </div>
                    <div class="sale-box"><span class="on_sale title_shop">New</span></div>	
                    <div class="price">
                        <div class="cart-left">
                            <p class="title">Persiana  azul marino</p>
                            <fieldset>
                                <form name="Especificaciones" action="#" method="post" id="Especificaciones">

                                    <tr>
                                        <td width="21%" >Alto(Cms)</td>
                                        <td width="82%"><input type="text" size="12" name="T1" value=""></td>
                                    </tr>
                                    <tr>
                                        <td width="21%">Ancho(Cms)</td>
                                        <td width="79%"><input type="text" size="12" name="T2" value=""></td>
                                    </tr>
                                    <tr>
                                        </br>
                                        <td width="23%">Tipo de Material</td>
                                        <td width="79%">
                                            <select tabindex="4" name="Tela">
                                                <option value="234">Aluminio</option>
                                                <option value="365">Madera</option>
                                                <option value="481">Plastico</option>
                                            </select></td>
                                    </tr>
                                    <tr>
                                        </br>
                                        <td width="21%">Color</td>
                                        <td width="79%">
                                            <select tabindex="4" name="Color">
                                                <option value="234">Azul</option>
                                                <option value="365">Gris</option>
                                                <option value="481">Rojo</option>
                                            </select></td>
                                        </br>
                                    <input type="image" action="" src="web/images/cart.png" >
                                </form>
                            </fieldset>   
                            <div class="price1">
                                <span class="actual"></span>
                            </div>
                        </div>
                        <div class="cart-right"> </div>
                        <div class="clear"></div>
                    </div>				
                </div></p>

            </div>
        </div>
        <!-- end modalp5 -->
        <div id="modalp6" class="modalmask">
            <div class="modalbox movedown">
                <a href="#close" title="Close" class="close">X</a>
                <p><div class="inner_content clearfix">
                    <div class="product_image">
                        <img src="web/images/Shutters/pic5.jpg" alt=""/>
                    </div>
                    <div class="price">

                        <div class="cart-left">
                            <p class="title"> Persiana trigo</p>
                            <fieldset>
                                <form name="Especificaciones" action="#" method="post" id="Especificaciones">

                                    <tr>
                                        <td width="21%" >Alto(Cms)</td>
                                        <td width="82%"><input type="text" size="12" name="T1" value=""></td>
                                    </tr>
                                    <tr>
                                        <td width="21%">Ancho(Cms)</td>
                                        <td width="79%"><input type="text" size="12" name="T2" value=""></td>
                                    </tr>
                                    <tr>
                                        </br>
                                        <td width="23%">Tipo de Material</td>
                                        <td width="79%">
                                            <select tabindex="4" name="Tela">
                                                <option value="234">Aluminio</option>
                                                <option value="365">Madera</option>
                                                <option value="481">Plastico</option>
                                            </select></td>
                                    </tr>
                                    <tr>
                                        </br>
                                        <td width="21%">Color</td>
                                        <td width="79%">
                                            <select tabindex="4" name="Color">
                                                <option value="234">Azul</option>
                                                <option value="365">Gris</option>
                                                <option value="481">Rojo</option>
                                            </select></td>
                                        </br>
                                    <input type="image" action="" src="web/images/cart.png" >
                                </form>
                            </fieldset> 
                            <div class="price1">
                                <span class="actual"></span>
                            </div>
                        </div>
                        <div class="cart-right"> </div>
                        <div class="clear"></div>
                    </div>				
                </div></p>

            </div>
        </div>
    </body>
</html>