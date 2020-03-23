package Controller;

import backendga.modelo.dao.GestorCurso;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Service_Crea_Curso extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.setHeader("cache-control", "no-cache, no-store, must-revalidate");
        try (PrintWriter out = response.getWriter()) {

            GestorCurso g = GestorCurso.obtenerInstancia();

            String _codigo = request.getParameter("codigoCursoF");
            String _carrera_codigo = request.getParameter("codi_carF");
            String _anio = request.getParameter("anioF");
            String _ciclo = request.getParameter("cicloF");
            String _nombre = request.getParameter("nombreCursoF");
            String _creditosS = request.getParameter("creditosF");
            String _hsS = request.getParameter("horaSemanalF");
            int hs = Integer.parseInt(_hsS);
            int credi = Integer.parseInt(_creditosS);

            g.insertarCurso(_codigo, _carrera_codigo, _anio, _ciclo, _nombre, credi, hs);

            response.sendRedirect("Cursos.jsp");
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
        processRequest(request, response);
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
        processRequest(request, response);
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
