package modelo.daos;

import Dtos.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import utilidades.Conectar;

public class VentaDAO {

    private Connection cnn = null;
    private PreparedStatement pstmt;
    ResultSet rs = null;
    String msgSalida;
    int per;

    public VentaDAO() {
        cnn = Conectar.getInstance();

    }

    public List<VentaDTO> listarVentasProducto() throws SQLException {
        ArrayList<VentaDTO> listarVentaProducto = new ArrayList();

        try {
            String query = "Select Productos.NombreProducto as Producto, sum(cotizacionproducto.cantidad) as 'Cantidad',\n"
                    + "Productos.tipocortina as 'Tipo de cortina',productos.tipotela as 'Tela',\n"
                    + "productos.color as 'Color',\n"
                    + "estado.descripcionEstado as 'Estado de la venta' from estado \n"
                    + "inner join estadocotizacion on estado.IdEstado=estadocotizacion.IdEstado \n"
                    + "inner join cotizacion on estadocotizacion.idCotizacion=cotizacion.IdCotizacion inner join cotizacionproducto\n"
                    + "on cotizacion.IdCotizacion=cotizacionproducto.idCotizacion inner join productos \n"
                    + "on cotizacionproducto.idProducto=productos.IdProducto where estado.IdEstado=2\n"
                    + "group by productos.NombreProducto\n"
                    + "order by sum(cotizacionproducto.cantidad) desc;";
            pstmt = cnn.prepareStatement(query);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                VentaDTO Vdao = new VentaDTO();
                Vdao.setProducto(rs.getString("Producto"));
                Vdao.setCantidad(rs.getInt("Cantidad"));
                Vdao.setTipodeCortina(rs.getString("Tipo de cortina"));
                Vdao.setTela(rs.getString("Tela"));
                Vdao.setColor(rs.getString("Color"));
                Vdao.setEstadodeVenta(rs.getString("Estado de la venta"));
                listarVentaProducto.add(Vdao);
            }

        } catch (SQLException slqE) {
            System.out.println("Ocurrio un error" + slqE.getMessage());
        } finally {

        }
        return listarVentaProducto;
    }

 public List<ListarPedidosDTO> listarPedidos() throws SQLException {
        ArrayList<ListarPedidosDTO> listarPedidos = new ArrayList();

        try {
            String query = "Select Productos.NombreProducto as Producto, sum(cotizacionproducto.cantidad) as 'Cantidad',\n"
                    + "Productos.tipocortina as 'Tipo de cortina',productos.tipotela as 'Tela',\n"
                    + "productos.color as 'Color',\n"
                    + "estado.descripcionEstado as 'Estado de la venta' from estado \n"
                    + "inner join estadocotizacion on estado.IdEstado=estadocotizacion.IdEstado \n"
                    + "inner join cotizacion on estadocotizacion.idCotizacion=cotizacion.IdCotizacion inner join cotizacionproducto\n"
                    + "on cotizacion.IdCotizacion=cotizacionproducto.idCotizacion inner join productos \n"
                    + "on cotizacionproducto.idProducto=productos.IdProducto where estado.IdEstado=2\n"
                    + "group by productos.NombreProducto\n"
                    + "order by sum(cotizacionproducto.cantidad) desc;";
            pstmt = cnn.prepareStatement(query);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                ListarPedidosDTO lpdao = new ListarPedidosDTO();
           //     lpdao.setProducto(rs.getString("Producto"));
                lpdao.setCantidad(rs.getInt("Cantidad"));
           //     lpdao.setTipodeCortina(rs.getString("Tipo de cortina"));
                lpdao.setTela(rs.getString("Tela"));
                lpdao.setColor(rs.getString("Color"));
           //     lpdao.setEstadodeVenta(rs.getString("Estado de la venta"));
                listarPedidos.add(lpdao);
            }

        } catch (SQLException slqE) {
            System.out.println("Ocurrio un error" + slqE.getMessage());
        } finally {

        }
        return listarPedidos;
    }
 }