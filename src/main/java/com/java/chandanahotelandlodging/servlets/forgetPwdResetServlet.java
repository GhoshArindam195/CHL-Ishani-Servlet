package com.java.chandanahotelandlodging.servlets;
import com.java.chandanahotelandlodging.dataaccessobject.CustomerDAO;
import com.java.chandanahotelandlodging.helper.Helper;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "forgetPwdResetServlet", urlPatterns = {"/forgetPwdResetServlet"})
public class forgetPwdResetServlet extends HttpServlet
{

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        response.setContentType("text/html;charset=UTF-8");
        String email = request.getParameter("email");
        try (PrintWriter out = response.getWriter())
        {
            if (CustomerDAO.doesEmailExist(email)) {
                //Generate a Random Password
                String randomPwd = Helper.get_Random_Password(10);

                //Update that random generated pwd to db table for that email user
                CustomerDAO.updatePasswordbyEmail(email, randomPwd);
                out.print("Success_"+randomPwd);

            } else {
                out.print("not exist");
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