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
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import utilidades.Conectar;
import utilidades.MiExcepcion;

/**
 *
 * @author Darkr232
 */
public class UsuariosDAO {

    private Connection cnn = null;
    private PreparedStatement pstmt;
    ResultSet rs = null;
    String msgSalida;
    int per;

    public UsuariosDAO() {
        cnn = Conectar.getInstance();

    }

    public UsuariosDTO validarUsuario(String email, String clave) throws SQLException {

        UsuariosDTO usuario = null;
        try {
            cnn = Conectar.getInstance();
            // La Query
            pstmt = cnn.prepareStatement("SELECT CC, Nombres, Apellidos, TipoUsuario FROM Usuarios where correoElectronico = ? and Clave=?");
            pstmt.setString(1, email);
            pstmt.setString(2, clave);
            rs = pstmt.executeQuery();

            //mientras el apuntador encuentre un elemento en el arreglo (resultset) haga
            //trae cada campo (nombre de la columna) de la consulta
            while (rs.next()) {
                usuario = new UsuariosDTO();
                usuario.setCC(rs.getLong("CC"));
                usuario.setNombres(rs.getString("Nombres"));
                usuario.setApellidos(rs.getString("Apellidos"));
                usuario.setTipoUsuario(rs.getString("TipoUsuario"));
            }
        } catch (SQLException sqle) {
            System.out.println("Error en la ejecución sql:"
                    + sqle.getErrorCode() + " " + sqle.getMessage());
        } catch (Exception e) {
            System.out.println("Error en la ejecución e:"
                    + " " + e.getMessage());
        }
        return usuario;
    }

    public String actualizarDatos(UsuariosDTO usuarios) {
        try {

            pstmt = cnn.prepareStatement("UPDATE usuarios SET Nombres=?,"
                    + "Apellidos=?,correoElectronico=? WHERE CC=?");
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

    public String crearUsuarios(UsuariosDTO newUsuario) throws SQLException {
        String salida = "";
        try {

            int resultado = 0;
            pstmt = cnn.prepareStatement("INSERT INTO usuarios VALUES ( ?, ?, ?, ?, ?, ?, ?)");
            pstmt.setLong(1, newUsuario.getCC());
            pstmt.setString(2, newUsuario.getNombres());
            pstmt.setString(3, newUsuario.getTipoUsuario());
            pstmt.setString(4, newUsuario.getApellidos());
            pstmt.setString(5, newUsuario.getTelefono());
            pstmt.setString(6, newUsuario.getDireccion());
            pstmt.setString(7, newUsuario.getCorreoElectronico());
            pstmt.setString(8, newUsuario.getClave());

            resultado = pstmt.executeUpdate();

            if (resultado != 0) {
                salida = "Has creado tu usuario exitosamente.";
            } else {
                // salida = "Ha ocurrido un problema al crear el profesor. Contacte al administrador";

            }
        } catch (SQLException sqle) {
            salida = "Ocurrió la siguiente exception : " + sqle.getMessage();
        } finally {
            try {
                pstmt.close();
            } catch (SQLException ex) {
                Logger.getLogger(UsuariosDAO.class.getName()).log(Level.SEVERE, null, ex); // se deja por defecto en este caso
            }
        }

        return salida;

    }

    /**
     * Este método permite listar los profesores disponibles en la tabla
     *
     */
    public List<UsuariosDTO> getAll() throws SQLException {
        LinkedList<UsuariosDTO> listaUsuarios = new LinkedList<UsuariosDTO>();
        try {

            String query = "SELECT  CC, Nombres, Apellidos, Telefono, Direccion, correoElectronico, Clave"
                    + " FROM usuarios ";
            pstmt = cnn.prepareStatement(query);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                UsuariosDTO newUsuario = new UsuariosDTO();
                newUsuario.setCC(rs.getLong("CC"));
                newUsuario.setTipoUsuario(rs.getString("TipoUsuario"));
                newUsuario.setNombres(rs.getString("Nombres"));
                newUsuario.setApellidos(rs.getString("Apellidos"));
                newUsuario.setTelefono(rs.getString("Telefono"));
                newUsuario.setDireccion(rs.getString("Direccion"));
                newUsuario.setCorreoElectronico(rs.getString("correoElectronico"));
                newUsuario.setClave(rs.getString("Clave"));
                listaUsuarios.add(newUsuario);
            }
        } catch (SQLException ex) {
            msgSalida = "a ocurrido un error" + ex.getMessage();
        } finally {
            pstmt.close();
        }

        return listaUsuarios;
    }

    public UsuariosDTO ListarUnUsuario(Long CC) throws SQLException {
        UsuariosDTO Rdao = null;
        try {
            pstmt = cnn.prepareStatement("select CC, Nombres, Apellidos, "
                    + " Telefono, Direccion, correoElectronico, Clave,  from usuarios where CC=?;");
            pstmt.setLong(1, CC);
            pstmt.executeQuery();

            rs = pstmt.executeQuery();

            while (rs.next()) {
                Rdao = new UsuariosDTO();
                Rdao.setCC(rs.getLong("CC"));
                Rdao.setTipoUsuario(rs.getString("TipoUsuario"));
                Rdao.setNombres(rs.getString("Nombres"));
                Rdao.setApellidos(rs.getString("Apellidos"));
                Rdao.setTelefono(rs.getString("Telefono"));
                Rdao.setDireccion(rs.getString("Direccion"));
                Rdao.setCorreoElectronico(rs.getString("correoElectronico"));
                Rdao.setClave(rs.getString("Clave"));
            }
        } catch (SQLException ex) {
            msgSalida = "Error " + ex.getMessage() + "Codigo de error" + ex.getErrorCode();
        }
        return Rdao;
    }

    public List<UsuariosDTO> listarUsuarios() throws SQLException {
        ArrayList<UsuariosDTO> listarUsuarios = new ArrayList();

        try {
            String query = "Select cc, Nombres, Apellidos, correoElectronico, TipoUsuario from usuarios\n"
                    + "where TipoUsuario='Empleado';";
            pstmt = cnn.prepareStatement(query);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                UsuariosDTO Rdao = new UsuariosDTO();
                Rdao.setCC(rs.getLong("cc"));
                Rdao.setNombres(rs.getString("Nombres"));
                Rdao.setApellidos(rs.getString("Apellidos"));
                Rdao.setCorreoElectronico(rs.getString("correoElectronico"));
                Rdao.setTipoUsuario(rs.getString("TipoUsuario"));
                listarUsuarios.add(Rdao);
            }

        } catch (SQLException slqE) {
            System.out.println("Ocurrio un error" + slqE.getMessage());
        } finally {

        }
        return listarUsuarios;
    }

    public String eliminar(Long CC) {
        try {
            /*
             *
             */
            pstmt = cnn.prepareStatement("DELETE FROM Usuarios WHERE CC = ?; ");
            pstmt.setLong(1, CC);

            per = pstmt.executeUpdate();
            if (per > 0) {
                msgSalida = "se eliminaron (" + per + ") registros";
            } else {
                msgSalida = "NO se pudo eliminar  el registro";
            }
        } catch (SQLException ex) {
            msgSalida = "Error al ejecutar : " + ex.getSQLState() + " " + ex.getMessage();
//        } finally {
//            try {
//                if (pstmt != null) {
//                    pstmt.close();
//                }
//                if (cnn != null) {
//                    cnn.close();
//                }
//            } catch (SQLException ex) {
//                msgSalida = "error al cerrar la conexion " + ex.getMessage();
//            }
        }

        return msgSalida;
    }

    public String actualizarContraseña(String newclave, long cc) {
        try {

            pstmt = cnn.prepareStatement("UPDATE usuarios SET Clave=? WHERE CC=?");
            pstmt.setString(1, newclave); // Modificado
            pstmt.setLong(2, cc);         // Modificado

            per = pstmt.executeUpdate();
            if (per > 0) {
                msgSalida = "se modificaron (" + per + ") registros";
            } else {
                msgSalida = "NO se pudo actualizar el registro";
            }
        } catch (SQLException ex) {
            msgSalida = "Error al ejecutar : " + ex.getSQLState() + " " + ex.getMessage();

        }
        return msgSalida;

    }

    public long cuentaExistente(int contraseña, Long CC) throws SQLException {

        long y = 1;

        try {

            UsuariosDTO pde = new UsuariosDTO();

            String sql = "select CC,Clave from usuarios where CC = ? and Clave = ?";
            pstmt = cnn.prepareStatement(sql);
            pstmt.setLong(1, CC);
            pstmt.setInt(2, contraseña);
            rs = pstmt.executeQuery();

            if (rs != null) {

                while (rs.next()) {

                    pde.setCC(rs.getLong("CC"));
                    pde.setClave(rs.getString("Clave"));
                }
                y = pde.getCC();
            } else {
                y = 0;
            }

        } catch (SQLException ex) {

        }
        return y;
    }

    public List<UsuariosDTO> filtroPersonas(String nacionalidad, String nombres, String ciudades) throws SQLException {
        ArrayList<UsuariosDTO> filtroPersonas = new ArrayList();

        try {
            StringBuilder sb = new StringBuilder("select p.nombres, p.apellidos, p.correoElectronico, a.Ciudad, c.nacionalidad,c.idioma "
                    + "from personas p inner join "
                    + "nacionalidades c on p.idNacionalidad = c.idNacionalidad "
                    + "inner join ciudades a on p.idCiudad = a.idCiudad");

            if (nacionalidad != null) {
                sb.append("AND c.nacionalidad LIKE '").append(nacionalidad).append("%'");
            }
            if (nombres != null) {
                sb.append("AND p.nombres LIKE '").append(nombres).append("%'");
            }

            if (ciudades != null) {
                sb.append("AND a.Ciudad LIKE '").append(ciudades).append("%'");
            }

            pstmt = cnn.prepareStatement(sb.toString());
            rs = pstmt.executeQuery();

            while (rs.next()) {
                UsuariosDTO Rdao = new UsuariosDTO();
                Rdao.setNombres(rs.getString("nombres"));
                Rdao.setApellidos(rs.getString("apellidos"));
                Rdao.setCorreoElectronico(rs.getString("correoElectronico"));
              //  Rdao.setIdNacionalidad(rs.getInt("pais"));
                //  Rdao.setIdNacionalidad(rs.getInt("idNacionalidad"));
                filtroPersonas.add(Rdao);

            }

        } catch (SQLException slqE) {
            System.out.println("Ocurrio un error" + slqE.getMessage());
        } finally {

        }
        return filtroPersonas;
    }
    
}
