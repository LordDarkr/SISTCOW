/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;


import Dtos.UsuariosDTO;
import utilidades.Conectar;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.daos.UsuariosDAO;

/**
 *
 * @author House EP
 */
public class Register extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
      protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession respuesta = request.getSession(true);
        PrintWriter out = response.getWriter();
        //Declaro e inicio las variables
        
        if (request.getParameter("resgistrausuario")!=null){
            try {
                UsuariosDTO udt = new UsuariosDTO();
                udt.setCC(Long.parseLong(request.getParameter("cc")));
                udt.setTipoUsuario(request.getParameter("tipo"));
                udt.setNombres(request.getParameter("nombres"));
                udt.setApellidos(request.getParameter("apellidos"));
                udt.setTelefono(request.getParameter("telefono"));
                udt.setDireccion(request.getParameter("direccion"));
                udt.setCorreoElectronico(request.getParameter("mcorreo"));
                udt.setClave(request.getParameter("pass1"));
                UsuariosDAO udo = new UsuariosDAO();
                String rsp = udo.crearUsuarios(udt);
                response.sendRedirect("login.jsp?msg="+rsp);
                
            } catch (SQLException ex) {
                Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        }
    }
 
}
 