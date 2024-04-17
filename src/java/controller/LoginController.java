/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAO.UserDAO;
import entity.Account;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

 
public class LoginController extends HttpServlet {

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
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (email != null && password != null) {
            UserDAO db = new UserDAO();
            Account loggedUser = db.getAccount(email, password);

            if (loggedUser != null && loggedUser.isStatus()) {
                HttpSession session = request.getSession();
                session.setAttribute("account", loggedUser);
                session.setAttribute("loggedIn", true);
                if (loggedUser.getRole().equalsIgnoreCase("2")) {
                    session.setAttribute("userId", loggedUser.getId());
                    response.sendRedirect("AdminDashboard");
                } else if (loggedUser.getRole().equalsIgnoreCase("1")) {
                    session.setAttribute("userId", loggedUser.getId());
                    response.sendRedirect("home");
                }else if (loggedUser.getRole().equalsIgnoreCase("3")) {
                    session.setAttribute("userId", loggedUser.getId());
                    response.sendRedirect("StaffDashboard");
                }
                String remember = request.getParameter("remember");
                if (remember != null) {
                    Cookie c_user = new Cookie("user", email);
                    Cookie c_pass = new Cookie("pass", password);
                    c_user.setMaxAge(24 * 36000);
                    c_pass.setMaxAge(24 * 36000);
                    response.addCookie(c_user);
                    response.addCookie(c_pass);
                }

            } else if (loggedUser != null && !loggedUser.isStatus()) {
                request.setAttribute("error", "Your Account have been blocked !!!");
                request.getRequestDispatcher("homepage.jsp").forward(request, response);
            } else {
                request.setAttribute("error", "Username or password wrong!!! Please login again");
                request.getRequestDispatcher("homepage.jsp").forward(request, response);
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
