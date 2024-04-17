/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAO.UserDAO;
import com.sun.jdi.connect.Transport;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Session;
import java.net.Authenticator;
import java.net.PasswordAuthentication;
import java.util.Properties;
import java.util.Random;

import jakarta.mail.*;
import jakarta.mail.internet.*;
 
@WebServlet(name = "ForgotPassword", urlPatterns = {"/ForgotPassword"})
public class ForgotPassword extends HttpServlet {

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
            out.println("<title>Servlet ForgotPassword</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ForgotPassword at " + request.getContextPath() + "</h1>");
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
        HttpSession ses = request.getSession();
        String code = "";
        ses.setAttribute("code", String.valueOf(code));
        request.setAttribute("isValid", false);
        request.getRequestDispatcher("ForgotPassword.jsp").forward(request, response);
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
        HttpSession ses = request.getSession();
        try {
            UserDAO ud = new UserDAO();
            String toEmail = request.getParameter("email");

            int userId = ud.checkEmailExist(toEmail);
            if (userId != 0) {
                String fromEmail = "donnylee2003@gmail.com";
                String password = "zfpu qdwq hksi pjbe";

                String smtpHost = "smtp.gmail.com";
                String smtpPort = "587";

                String smtpAuth = "true";
                String smtpStartTLS = "true";

                Properties props = new Properties();
                props.put("mail.smtp.host", smtpHost);
                props.put("mail.smtp.port", smtpPort);
                props.put("mail.smtp.auth", smtpAuth);
                props.put("mail.smtp.starttls.enable", smtpStartTLS);

                jakarta.mail.Session session = jakarta.mail.Session.getInstance(props, new jakarta.mail.Authenticator() {
                    protected jakarta.mail.PasswordAuthentication getPasswordAuthentication() {
                        return new jakarta.mail.PasswordAuthentication(fromEmail, password);
                    }
                });
                try {
                    Message message = new MimeMessage(session);
                    message.setFrom(new InternetAddress(fromEmail));
                    message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
                    message.setSubject("Change your password");
                    ses.removeAttribute("code");
                    Random rand = new Random();
                    int code = rand.nextInt(9999);
                    message.setText("Your authentication code : " + code);
                    ses.setAttribute("code", String.valueOf(code));
                    ses.setAttribute("email", toEmail);
                    request.setAttribute("isValid", false);
                    jakarta.mail.Transport.send(message);
                    request.getRequestDispatcher("ForgotPassword.jsp").forward(request, response);
                } catch (MessagingException e) {
                    e.printStackTrace();
                }
            } else {
                try {
                    String codeValid = request.getParameter("codeValid");
                    String rightCode = (String) ses.getAttribute("code");
                    if (codeValid.equals(rightCode)) {
                        ses.removeAttribute("code");
                        ses.setAttribute("code", "");
                        request.setAttribute("isValid", true);
                        request.getRequestDispatcher("ForgotPassword.jsp").forward(request, response);
                    } else {
                        request.setAttribute("error", "Code is not matched");
                        request.setAttribute("isValid", false);
                        request.getRequestDispatcher("ForgotPassword.jsp").forward(request, response);
                    }
                } catch (Exception e) {
                    String newPassword = request.getParameter("newPassword");
                    String email = (String) ses.getAttribute("email");
                    ud.changePassword(email, newPassword);
                    ses.removeAttribute("email");
                    response.sendRedirect("home");
                }

            }
        } catch (Exception e) {
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
