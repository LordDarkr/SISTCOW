<%@page import="Dtos.ListarInventarioDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.daos.InventarioDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
             response.setHeader("Content-Disposition", "attachment;filename=\"ReporteInventario.xls\"");
                        InventarioDAO iDao = new InventarioDAO();
                        ArrayList<ListarInventarioDTO> ListarInventario = new ArrayList();
                        ListarInventario = (ArrayList<ListarInventarioDTO>) iDao.listarInventario();

                    %>
                    <table cellspacing='0'> <!-- cellspacing='0' is important, must stay -->

                        <!-- Table Header -->
                        <thead>
                            <tr>
                                <th>Codigo</th>
                                <th>Nombre</th>
                                <th>Cantidad</th>
                                <th>Tipo de Cortina</th>
                                <th>Tipo de Tela</th>
                                <th>Color</th>
                            </tr>
                        </thead>
                        <!-- Table Header -->

                        <!-- Table Body -->
                        <tbody>
                            <%                for (ListarInventarioDTO i : ListarInventario) {


                            %>
                            <tr>
                                <td><%=i.getIdProducto()%></td>
                                <td><%=i.getNombreProducto()%></td>
                                <td><%=i.getCantidad()%></td>
                                <td><%=i.getTipoCortina()%></td>
                                <td><%=i.getTipoTela()%></td>
                                <td><%=i.getColor()%></td>

                            </tr><!-- Table Row -->

                            <%
                                }
                            %>

                        </tbody>
                        <!-- Table Body -->

                    </table>
    </body>
</html>
