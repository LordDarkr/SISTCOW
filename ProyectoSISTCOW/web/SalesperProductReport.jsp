
<%@page import="Dtos.VentaDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.daos.VentaDAO"%>
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
        <link rel="stylesheet" href="web/css/mbcsmbmcp.css" type="text/css" />
        <link rel="stylesheet" href="web/css/redbtn.css" type="text/css" />
        <script type="text/javascript" src="web/js/jquery1.min.js"></script>
        <!-- start menu -->
        <link href="web/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="web/js/megamenu.js"></script>
        <!-- submenu -->
        <script type="text/javascript" src="submenureports_files/mbjsmbmcp.js"></script>
        <!-- submenu -->
        <script type="text/javascript">
            function aExcel()
                    vEcxel = window.open("excel.jsp,"",status=0,toolbar=0,location=0,menubar=0,resizable=0,with=400,height=200");        </script>

        <script type="text/javascript" src="web/js/paging.js"></script>

        <script>$(document).ready(function () {
                $(".megamenu").megamenu();
            });</script>
        <script src="web/js/jquery.easydropdown.js"></script>		
        <script type="text/javascript" src="web/js/mbjsmbmcp.js"></script>
        <!-- filtro multicriterio -->
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.1/jquery.min.js"></script>
        <script type="text/javascript" src="web/js/jquery_table.js"></script>
        <!-- JS QUE SE ENCARGA AL PRINCIPIO UNA VEZ LEIDO EL HTML EL CLIENTE (como el evento onload del body) -->
        <script type="text/javascript">
            $(document).ready(function () {
                $('#results').buscoloquemesaledelospeones('inputFiltro');
            });
        </script>
        <!-- ------- -->

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
            <div class="header-bottom-right">
                <div class="tag-list"> </div>
            </div>
            <div class="clear"></div>
        </div>
        <div class="mens">    

            <div class="main">

                <center>
                    <div id="mbmcpebul_wrapper" style="max-width: 944px;">
                        <ul id="mbmcpebul_table" class="mbmcpebul_menulist css_menu">
                            <li><div class="buttonbg" style="width: 76px;"><a href="AdminIndex.jsp">Inicio</a></div></li>
                            <li><div class="buttonbg" style="width: 99px;"><a href="MonthlySalesReport.jsp">Reportes</a></div></li>
                            <li><div class="buttonbg" style="width: 93px;"><a href="Odersperdate.jsp">Pedidos</a></div></li>
                            <li><div class="buttonbg"><a href="AdminInvent.jsp">Inventario</a></div></li>
                            <li><div class="buttonbg" style="width: 177px;"><a href="AdminUsers.jsp">Administrar Usuarios</a></div></li>
                            <li><div class="buttonbg" style="width: 174px;"><a href="AdminChangePass.jsp">Cambiar Contrase&ntilde;a</a></div></li>
                            <li><div class="buttonbg" style="width: 127px;"><a href="Index.jsp">Cerrar sesi&oacute;n</a></div></li>
                        </ul>
                    </div>
                </center> 

                </br>
                <center>
                    <h3 class="m_3">Reportes</h3></center>
                <center>
                    <div class="search1">	  
                        <input type="text" id="inputFiltro" name="buscar" class="textbox" value="Buscar" onfocus="this.value = '';" onblur="if (this.value == '') {
                                    this.value = 'Buscar';
                                }">
                        <input type="submit" value="#" id="submit" name="submit">

                    </div> 
                    </br>
                    <!-- submenu -->
                    <div id="mbmcpebul_wrapper" style="max-width: 586px;">
                        <ul id="mbmcpebul_table" class="mbmcpebul_menulist css_menu">
                            <li><div class="buttonbg" style="width: 173px;" ><a href="SalesperProductReport.jsp	">Ventas (Producto)</a></div></li>
                            <li><div class="buttonbg" style="width: 220px;"><a href="MonthlySalesReport.jsp">Reporte Mensual de Ventas</a></div></li>
                        </ul>
                    </div>
                    <!-- submenu -->
                    <%
                        VentaDAO VDao = new VentaDAO();
                        ArrayList<VentaDTO> Ventas = new ArrayList();
                        Ventas = (ArrayList<VentaDTO>) VDao.listarVentasProducto();

                    %>
                    <form action="" method="get" enctype="application/x-www-form-urlencoded">
                        <table cellspacing='0' id="results" > <!-- cellspacing='0' is important, must stay -->

                            <!-- Table Header -->
                            <thead>

                                <tr id="titulo">
                                    <th>Producto</th>
                                    <th>Cantidad</th>
                                    <th>Tipo de Cortina</th>
                                    <th>Tela</th>
                                    <th>Color</th>
                                    <th>Estado de Venta</th>
                                </tr>
                            </thead>
                            <!-- Table Header -->

                            <!-- Table Body -->
                            <tbody>
                                <%                for (VentaDTO v : Ventas) {
                                %>
                                <tr>
                                    <td><%=v.getProducto()%></td>
                                    <td><%=v.getCantidad()%></td>
                                    <td><%=v.getTipodeCortina()%></td>
                                    <td><%=v.getTela()%></td>
                                    <td><%=v.getColor()%></td>
                                    <td><%=v.getEstadodeVenta()%></td>
                                </tr>    

                            </tbody>
                            <!-- Table Body -->

                            <%
                                }
                            %>
                        </table>
                    </form>

                    <div id="pageNavPosition" class="active"></div>

                    <script type="text/javascript"><!--
                    var pager = new Pager('results', 4);
                        pager.init();
                        pager.showPageNav('pager', 'pageNavPosition');
                        pager.showPage(1);
                        //--></script>

                    </br>

                    <a href="#" class="redbtn">Exportar a PDF</a> </br> 
                    </br>
                    </br>
                    <a href="ExcelReports/ReportSalesperProduct.jsp" class="greenbtn">Exportar a Excel</a>
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
                        <p>� 2014 Template by <a href="http://w3layouts.com" target="_blank">w3layouts</a></p>
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