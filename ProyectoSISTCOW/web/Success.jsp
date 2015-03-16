<%-- 
    Document   : Success
    Created on : 28/01/2015, 04:56:09 AM
    Author     : Darkr232
--%>

<%@page import="Dtos.UsuariosDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <%
            response.setHeader("Cache-Control", "no-cache");
            response.setHeader("Cache-Control", "no-store");
            response.setDateHeader("Expires", 0);
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logueo exitoso :)</title>
    </head>
    <body>
        <%
            HttpSession misesion = request.getSession(false);

            if (misesion.getAttribute("admLogueado") == null) {
                response.sendRedirect("login.jsp?msg= Debe iniciar sesión para acceder");

            } else {
                UsuariosDTO pr = new UsuariosDTO();
                pr = (UsuariosDTO) misesion.getAttribute("admLogueado");
        %>
        <h1>It Works :)</h1>
        <h2>Bienvenido <%out.print(pr.getNombres());%></h2>
        <h3> <a href="logout.jsp">Cerrar Sesión</a></h3>
        <%
            }
        %>
    </body>
</html>
