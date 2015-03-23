/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.daos;

import Dtos.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import utilidades.Conectar;

/**
 *
 * @author Darkr232
 */
public class InventarioDAO {
    
      private Connection cnn = null;
    private PreparedStatement pstmt;
    ResultSet rs = null;
    String msgSalida;
    int per;

    public InventarioDAO() {
        cnn = Conectar.getInstance();

    }
 public List<ListarInventarioDTO> listarInventario() throws SQLException {
        ArrayList<ListarInventarioDTO> ListarInventario = new ArrayList();
        try {
            String query = "SELECT inventario.`IdProducto` AS Codigo,\n" +
"     productos.`NombreProducto` AS Nombre,\n" +
"     inventario.`Cantidad` AS Cantidad,\n" +
"     productos.`TipoCortina` AS `Tipo de Cortina`,\n" +
"     productos.`TipoTela` AS `Tipo de Tela`,\n" +
"     productos.`Color` AS Color,\n" +
"     inventario.`fechaIngreso` AS `Fecha de Ingreso`\n" +
"     FROM\n" +
"     `productos` productos INNER JOIN `inventario` inventario ON productos.`IdProducto` = inventario.`IdProducto`;";
            pstmt = cnn.prepareStatement(query);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                ListarInventarioDTO Rdao = new ListarInventarioDTO();
                Rdao.setIdProducto(rs.getInt("Codigo"));
                Rdao.setNombreProducto(rs.getString("Nombre"));
                Rdao.setCantidad(rs.getInt("Cantidad"));
                Rdao.setTipoCortina(rs.getString("Tipo de Cortina"));
                Rdao.setTipoTela(rs.getString("Tipo de Tela"));
                Rdao.setColor(rs.getString("Color"));
                Rdao.setFechaIngreso(rs.getString("Fecha de Ingreso"));
                ListarInventario.add(Rdao);
            }

        } catch (SQLException slqE) {
            System.out.println("Ocurrio un error" + slqE.getMessage());
        } finally {

        }
        return ListarInventario;
         
    }
 public String actualizari(ProductosDTO productos) {
        try {

            pstmt = cnn.prepareStatement("UPDATE inventario.`IdProducto` AS Codigo,\n" +
"     productos.`NombreProducto` AS Nombre,\n" +
"     inventario.`Cantidad` AS Cantidad,\n" +
"     productos.`TipoCortina` AS `Tipo de Cortina`,\n" +
"     productos.`TipoTela` AS `Tipo de Tela`,\n" +
"     productos.`Color` AS Color,\n" +
"     inventario.`fechaIngreso` AS `Fecha de Ingreso`\n" +
"     FROM\n" +
"     `productos` productos INNER JOIN `inventario` inventario ON productos.`IdProducto` = inventario.`IdProducto` WHERE IdProducto=?");
            pstmt.setString(1, usuarios.getNombres());
            pstmt.setString(2, usuarios.getApellidos());
            pstmt.setString(3, usuarios.getCorreoElectronico());
            pstmt.setLong(4, usuarios.getCC());

            per = pstmt.executeUpdate();
            if (per > 0) {
                msgSalida = "Has Actualizado(" + per + ") Datos";
            } else {
                msgSalida = "No se pudieron Actualizar lo datos";
            }
        } catch (SQLException ex) {
            msgSalida = "Error al ejecutar la operación : " + ex.getSQLState() + " " + ex.getMessage();

        }
        return msgSalida;

    }
}