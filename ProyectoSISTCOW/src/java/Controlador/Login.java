package Controlador;

import Dtos.UsuariosDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.daos.UsuariosDAO;

/**
 *
 * @author Darkr232
 */
public class Login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        if (request.getParameter("login") != null) {
            UsuariosDAO uDAO = new UsuariosDAO();
            UsuariosDTO uDTO = new UsuariosDTO();
            uDTO = uDAO.validarUsuario(request.getParameter("email"), request.getParameter("password"));
            if (uDTO!= null) {
                HttpSession miSesion = request.getSession(true);
                miSesion.setAttribute("admLogueado", uDTO);
                if (uDTO.getTipoUsuario().equals("Administrador") || uDTO.getTipoUsuario().equals("Empleado")){
                   response.sendRedirect("AdminIndex.jsp");
                }
                else if (uDTO.getTipoUsuario().equals("Cliente")){
                miSesion.setAttribute("clientLogueado", uDTO);
                   response.sendRedirect("UserQuotes.jsp"); 
                }
            }else if (uDTO == null) {
                response.sendRedirect("login.jsp?msg=Usuario No existe!!");
            }
{

               

            }
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
