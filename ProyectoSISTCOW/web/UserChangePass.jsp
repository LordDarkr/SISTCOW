<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<%@page import="modelo.daos.UsuariosDAO"%>
<%@page import="Dtos.UsuariosDTO"%>
<html>
<head>
    <%
            response.setHeader("Cache-Control", "no-cache");
            response.setHeader("Cache-Control", "no-store");
            response.setDateHeader("Expires", 0);
        %>
<title>Sistcoweb</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="web/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="web/css/mbcsmbmcp.css" type="text/css" />
<script type="text/javascript" src="web/js/jquery1.min.js"></script>
<!-- start menu -->
<link href="web/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="web/js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script src="web/js/jquery.easydropdown.js"></script>		
    <script type="text/javascript" src="web/js/mbjsmbmcp.js"></script>
    <script>
function comprobarClave(){
   var c1 = document.newpass.newpassword1.value;
   var c2 = document.newpass.newpassword2.value;

    if (c1 != c2){
       
    alert("Las contraseñas no coinciden");
    return false;
    }
}
</script> 
</head>
<body>
     <%
            HttpSession misesion = request.getSession(false);

            if (misesion.getAttribute("clientLogueado") == null) {
                response.sendRedirect("login.jsp?msg= Debe iniciar sesion para acceder");

            } else {
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
	
<div class="mens">    

  <div class="main">
  
  <center>
                    <div id="mbmcpebul_wrapper" style="max-width: 944px;">
                        <ul id="mbmcpebul_table" class="mbmcpebul_menulist css_menu">
                            <li><div class="buttonbg" style="width: 154px;"><a href="UserUpdatedata.jsp">Actualizar Datos</a></div></li>
                            <li><div class="buttonbg" style="width: 99px;"><a href="UserOrders.jsp">Pedidos</a></div></li>
                            <li><div class="buttonbg" style="width: 120px;"><a href="UserQuotes.jsp">Cotizaciones</a></div></li>
                            <li><div class="buttonbg" style="width: 174px;"><a href="UserChangePass.jsp">Cambiar Contrase&ntilde;a</a></div></li>
                            <li><div class="buttonbg" style="width: 174px;"><a href="UserDisableAccount.jsp">Desactivar Cuenta</a></div></li>
                        </ul>
                    </div>
                </center> 
      <br/>
      <center> <h3 class="m_3">Cambiar Contrase&ntilde;a</h3></center>
        <center> <h3 class="m_3"> </h3></center>
     <center>
     <div class="col_1_of_CHP span_1_of_CHP">
     <form action="" method="post" name="newpass" id="login-form">
						  <fieldset class="input">
						   
                                                      <label for="Actual_Pass">Contrase&ntilde;a Actual</label>
 <input id="Actual_Pass" type="password" name="Actual_Pass" class="inputbox" size="18" autocomplete="off"REQUIRED>
						    </p>
 <label for="New Pass1">Contrase&ntilde;a Nueva </label>
 <input id="New Pass1" type="password" name="newpassword1" class="inputbox" size="18" autocomplete="off"REQUIRED>
						    </p>
 <label for="New Pass2">Repita la Nueva Contrase&ntilde;a</label>
 <input id="New Pass2" type="password" name="newpassword2" class="inputbox" size="18" autocomplete="off"REQUIRED>
						    </p>
	<div class="remember">
	 <p id="login-form-remember">
							   </p>
<input type="submit" name="Submit" class="button" value="Cambiar"><div class="clear"></div>
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