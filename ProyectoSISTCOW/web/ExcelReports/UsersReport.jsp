
<%@page import="java.util.ArrayList"%>
<%@page import="Dtos.UsuariosDTO"%>
<%@page import="modelo.daos.UsuariosDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Reporte Usuarios</h1>
        <%
            response.setHeader("Content-Disposition", "attachment;filename=\"ReporteUsuarios.xls\"");

            UsuariosDAO uDao = new UsuariosDAO();
            ArrayList<UsuariosDTO> usuarios = new ArrayList();
            usuarios = (ArrayList<UsuariosDTO>) uDao.listarUsuarios();

        %>
        <table cellspacing='0' id="results"> <!-- cellspacing='0' is important, must stay -->

            <!-- Table Header -->
            <thead>
                <tr>
                    <th> <strong>   Documento </strong>  </th> 
                    <th> <strong>   Nombre </strong>  </th> 
                    <th> <strong>  Apellido </strong>  </th> 
                    <th> <strong>    Correo   </strong> </th> 
                    <th> <strong>    Tipo-Usuario   </strong> </th> 

                </tr>
            </thead>
            <!-- Table Header -->

            <!-- Table Body -->
            <tbody>
                <%                for (UsuariosDTO u : usuarios) {


                %>
                <tr>
                    <td><%=u.getCC()%></td>
                    <td><%=u.getNombres()%></td>
                    <td><%=u.getApellidos()%></td> 
                    <td><%=u.getCorreoElectronico()%></td> 
                    <td><%=u.getTipoUsuario()%></td>

                </tr>


                <%
                    }
                %>
            </tbody>
            <!-- Table Body -->

        </table>
    </body>
</html>
