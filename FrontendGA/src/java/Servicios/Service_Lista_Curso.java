package Servicios;

import backendga.modelo.Curso;
import backendga.modelo.dao.GestorCurso;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONObject;

public class Service_Lista_Curso extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {

            List<Curso> _Lista_carrera
                    = GestorCurso.obtenerInstancia().listarCurso();

            JSONObject r = new JSONObject();
            JSONArray _curso_array_JS = new JSONArray();

            for (Curso c : _Lista_carrera) {
                JSONObject pj = new JSONObject();

                pj.put("codigo", c.getCodigo());
                pj.put("carrera_codigo", c.getCarrera_codigo());
                pj.put("anio", c.getAnio());
                pj.put("ciclo", c.getCiclo());
                pj.put("nombre", c.getNombre());
                pj.put("creditos", c.getCreditos());
                pj.put("horas_semanales", c.getHoras_semanales());

                _curso_array_JS.put(pj);
            }
            r.put("cursos", _curso_array_JS);
            out.print(r);
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
