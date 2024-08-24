package com.java.chandanahotelandlodging.servlets;

import com.java.chandanahotelandlodging.dataaccessobject.OrderDAO;
import com.java.chandanahotelandlodging.dataaccessobject.ReservationDAO;
import com.java.chandanahotelandlodging.entities.Reservation;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "reservationServlet", urlPatterns = {"/reservationServlet"})
public class ReservationServlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter())
        {
            String roomNumber = request.getParameter("roomNumber");
            String checkInDate = request.getParameter("checkInDate");
            String checkOutDate = request.getParameter("checkOutDate");
            String paymentId = request.getParameter("paymentId");
            String orderId = request.getParameter("orderId");


            if(ReservationDAO.saveReservation(new Reservation(checkInDate, checkOutDate, paymentId, roomNumber)))
            {

                if(OrderDAO.updatePaymentIdOnSuccessfulOrder(orderId, paymentId))
                {
                    out.println("success");
                }
                else{
                    out.println("paymentid not saved on order table");
                }
            }
            else{
                out.println("reservation not saved");
            }

        }
    }


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
