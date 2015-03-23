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
        <script>
function comprobarClave(){
   var c1 = document.reg.pass1.value;
   var c2 = document.reg.pass2.value;

    if (c1 != c2){
       
    alert("Las contrase�as no coinciden");
    return false;
    }
}
</script> 
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
    <div class="register_account">
        <div class="wrap">
            <h4 class="title">Crea una cuenta</h4>
            <form action="Register" method="post" name="reg" onsubmit="return comprobarClave()">
                <div class="col_1_of_2 span_1_of_2">
                    <label> C�dula de ciudadan�a</label>
                    <div><input type="text" title="Introduzca su Cedula" name="cc"value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                     this.value = '';
                                                 }"required></div>
                    <!--Este campo es tipo hidden para tomar el tipo de usuario-->
                    <div><input type="hidden" name="tipo" value="Cliente"></div>
                    <!--El campo se crea pero nunca es visible para el usuario-->
                    <label> Nombres</label>
                    <div><input type="text" title="Introduzca su Nombre" name="nombres"value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                     this.value = '';
                                                 }"required></div>
                    <label> Apellidos</label>
                    <div><input type="text" title="Introduzca su Apellido" value="" name ="apellidos" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                    this.value = '';
                                                }"required></div>
                    <label> Tel�fono</label>
                    <div><input type="text" title="Telefono" value="" name ="telefono" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                    this.value = '';
                                                }"required></div>
                    <label> Direcci�n</label>
                    <div><input type="text" title="Direcci�n" value="" name ="direccion" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                    this.value = '';
                                                }"required></div>
                    <label> E-Mail</label>
                    <div><input type="text" title="Introduzca su Correo Electronico" name="mcorreo" value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                    this.value = '';
                                                }"required></div>
                    <div>
                        </br> 
                        <label> Contrase&ntilde;a</label>
                        <input type="password" value="" name="pass1" title="Introduzca su contrase�a" onfocus="this.value = '';" onblur="if (this.value == '') {
                                    this.value = '';
                                }"required>
                        <label>Repita su Contrase&ntilde;a</label>
                        <input type="password" value="" name="pass2" title="Rectifique si contrase�a" onfocus="this.value = '';" onblur="if (this.value == '') {
                                    this.value = '';
                                }"required>
                        </br> 
                        </br> 

                        <button class="grey" name="resgistrausuario">Registrarse</button>

                    </div>
                </div>


                <div class="clear"></div>



            </form>
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