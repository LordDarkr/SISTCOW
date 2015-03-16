<%@page import="Dtos.VentaDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.daos.VentaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            response.setHeader("Content-Disposition", "attachment;filename=\"ReporteUsuarios.xls\"");

            VentaDAO VDao = new VentaDAO();
            ArrayList<VentaDTO> Ventas = new ArrayList();
            Ventas = (ArrayList<VentaDTO>) VDao.listarVentasProducto();

        %>
        <h1>Ventas por Producto</h1>
        <table cellspacing='0'> <!-- cellspacing='0' is important, must stay -->

            <!-- Table Header -->
            <thead>

                <tr>
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
    </body>
</html>
