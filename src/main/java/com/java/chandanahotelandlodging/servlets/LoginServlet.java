package com.java.chandanahotelandlodging.servlets;

import com.java.chandanahotelandlodging.dataaccessobject.CustomerDAO;
import com.java.chandanahotelandlodging.entities.Customer;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;

@MultipartConfig
@WebServlet(name = "loginServlet", urlPatterns = {"/loginServlet"})
public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String email = request.getParameter("email");
            String pwd = request.getParameter("pwd");


            Customer customer = CustomerDAO.findCustomerByEmailAndPwd(email, pwd);
            HttpSession s = request.getSession();

            if(customer==null || customer.getIs_verified() == 0)
            {
                s.setAttribute("msg", "Incorrect Email or Password. Try Again!_bg-danger");
                response.sendRedirect("login.jsp");
                out.println("Failure");
            }
            else
            {
                s.setAttribute("currentUser", customer);
                s.setAttribute("msg", "Login Successful!");
//                response.sendRedirect("profile.jsp");
                out.println("Success");
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



