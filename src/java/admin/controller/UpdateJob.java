/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package admin.controller;

import DAO.JobDAO;
import entity.Category;
import entity.Job;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

 
@WebServlet(name = "UpdateJob", urlPatterns = {"/UpdateJob"})
public class UpdateJob extends HttpServlet {

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
            out.println("<title>Servlet UpdateJob</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateJob at " + request.getContextPath() + "</h1>");
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
        String id = request.getParameter("id");
        JobDAO jd = new JobDAO();
        Job job = jd.getJobsById(id);
        ArrayList<Category> listJob = jd.getCategories();
        request.setAttribute("category", listJob);
        request.setAttribute("job", job);
        request.getRequestDispatcher("UpdateJob.jsp").forward(request, response);
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
        JobDAO jd = new JobDAO();
        String jobId = request.getParameter("jobId");
        String jobName = request.getParameter("jobName");
        String description = request.getParameter("description");
        String requirement = request.getParameter("requirement");
        String benefit = request.getParameter("benefit");
        String contactMail = request.getParameter("contactMail");
        String offerSalary = request.getParameter("offerSalary");
        String level = request.getParameter("level");
        String experience = request.getParameter("experience");
        String qualification = request.getParameter("qualification");
        String categoryId = request.getParameter("categoryId");
        String type = request.getParameter("type");
        String location = request.getParameter("location");
        jd.updateJob(jobName, description, requirement, benefit, contactMail, offerSalary, level, experience, qualification, categoryId, type, location, jobId);
        response.sendRedirect("JobManager");
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
