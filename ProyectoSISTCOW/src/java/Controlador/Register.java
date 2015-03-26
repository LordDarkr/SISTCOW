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
import utilidades.JavaMail;

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

        if (request.getParameter("resgistrausuario") != null) {
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
                String m = "Se envió un e-mail al correo que Registro.";
                String cuerpo = "<!DOCTYPE html>";
                cuerpo += "<html lang=es>";
                cuerpo += "<head></head>";
                cuerpo += "<body><div class='container marketing'><div class='col-lg-4'>";
                cuerpo += "";
                cuerpo += "";
                cuerpo += "";
                cuerpo += "";
                cuerpo += "<h2> <Strong>Bienvenido a Sistcow </Strong></h2>";
                cuerpo += "<p>A continuación se te brindará la información de tu cuenta creada ;D</p>";
                cuerpo += "<h3>Usuario : " + udt.getNombres() + udt.getApellidos() + "</h3>";
                cuerpo += "<p>Telefono : " + udt.getTelefono() + "</p>";
                cuerpo += "<p>Direccion : " + udt.getDireccion() + "</p>";
                cuerpo += "</br>";
                cuerpo += "<p>Correo :" + udt.getCorreoElectronico() + "</p>";
                cuerpo += "<p>Contraseña :" + udt.getClave() + "</p>";
                cuerpo += "</div></div></body></html>";
                JavaMail.enviarMail(udt.getCorreoElectronico(), "Registro a SISTCOW", cuerpo);
                response.sendRedirect("index.jsp?msj=" + m + "");

            } catch (SQLException ex) {
                Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
    }

}
