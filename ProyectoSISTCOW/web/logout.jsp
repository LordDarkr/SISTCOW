<%-- 
    Document   : logout
    Created on : 28/01/2015, 07:01:05 AM
    Author     : Darkr232
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Salida</h1>
        <%

            HttpSession misesion = request.getSession(false);

            if (misesion.getAttribute("admLogueado") == null) {
                response.sendRedirect("login.jsp?msg= redireccion desde logout");

            } else {
                misesion.removeAttribute("admLogueado");
                misesion.invalidate();
                response.sendRedirect("login.jsp?msg= Sesion cerrada");
            }
        %>
    </body>
</html>
