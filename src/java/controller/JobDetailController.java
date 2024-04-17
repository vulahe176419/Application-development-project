/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAO.JobDAO;
import DAO.ResumeDAO;
import DAO.WishlistDAO;
import entity.Job;
import entity.Resume;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

 
@WebServlet(name = "JobDetailController", urlPatterns = {"/JobDetailController"})
public class JobDetailController extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet JobDetailController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet JobDetailController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        response.setContentType("text/html;charset=UTF-8");
        String id = request.getParameter("id");
        JobDAO jd = new JobDAO();
        ResumeDAO rd = new ResumeDAO();
        Integer userIdObj = (Integer) request.getSession().getAttribute("userId");
        if (userIdObj == null) {
            Job job = jd.getJobsById(id);
            request.setAttribute("job", job);
            request.getRequestDispatcher("JobDetail.jsp").forward(request, response);
            return;
        }
        int userId = userIdObj.intValue();
        ArrayList<Resume> listResume = rd.getResumeByUserId(userId);
        request.setAttribute("listResume", listResume);
        Job job = jd.getJobsById(id);
        request.setAttribute("job", job);
        WishlistDAO wd = new WishlistDAO();
        int wId = wd.getWishlistJob(userId, id);
        request.setAttribute("wId", wId);
        request.getRequestDispatcher("JobDetail.jsp").forward(request, response);

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
