/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package admin.controller;

import DAO.ResumeDAO;
import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.Properties;
import java.util.Random;


public class ApprovalResume extends HttpServlet {

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
            out.println("<title>Servlet ApprovalResume</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ApprovalResume at " + request.getContextPath() + "</h1>");
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
        String applyId = request.getParameter("applyId");
        String status = request.getParameter("status");
        String email = request.getParameter("email");
        ResumeDAO rd = new ResumeDAO();
        rd.approvalApply(applyId, status);
        if (email != null) {
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
                message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
                message.setSubject("Thank you for your applying!");
                String messageText = "Dear Candidate,\n\n"
                        + "We regret to inform you that your Resume did not pass our selection process.\n\n"
                        + "We appreciate the time and effort you put into your application and wish you the best in your job search.\n\n"
                        + "Thank you.\n\n"
                        + "Best regards,\n"
                        + "Recruitment Team";
                if (status.equalsIgnoreCase("Approved")) {
                    String interviewDate = "April 10, 2024";
                    String interviewTime = "10:00 AM";
                    String location = "ABC Company Office, Hoa Lac Hi-tech Park, Thach Hoa, Thach That, Ha Noi";
                    messageText = "Dear Candidate,\n\n"
                            + "Congratulations that you have passed the first round\n"
                            + "We are inform you that you have been scheduled for an interview.\n\n"
                            + "Date: " + interviewDate + "\n"
                            + "Time: " + interviewTime + "\n"
                            + "Location: " + location + "\n\n"
                            + "Looking forward to meeting you!\n\n"
                            + "Best regards,\n"
                            + "Interview Team";
                }
                message.setText(messageText);
                jakarta.mail.Transport.send(message);
//                response.sendRedirect("ApplyManager");
            } catch (MessagingException e) {
//                e.printStackTrace();
            }
        }
        response.sendRedirect("ApplyManager");
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
