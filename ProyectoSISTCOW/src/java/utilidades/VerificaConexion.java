package utilidades;

import Dtos.UsuariosDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import modelo.daos.UsuariosDAO;

public class VerificaConexion {
    
    public static void main(String[] args) {
        Connection con = Conectar.getInstance();
        PreparedStatement stmt;
        ResultSet rs;        
        
        if (con != null) {
            System.out.println("Conectado");
        }
        try{
        UsuariosDAO d = new UsuariosDAO();
        ArrayList<UsuariosDTO> listarUsuarios = (ArrayList<UsuariosDTO>) d.listarUsuarios();
        for(UsuariosDTO u: listarUsuarios){
            System.out.println(u);
        }
        }catch (Exception ex) {
            
        }
    }
}
