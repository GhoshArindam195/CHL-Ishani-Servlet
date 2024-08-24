package com.java.chandanahotelandlodging.servlets;

import com.java.chandanahotelandlodging.dataaccessobject.GuestDAO;
import com.java.chandanahotelandlodging.dataaccessobject.OrderDAO;
import com.java.chandanahotelandlodging.entities.Guest;
import com.razorpay.Order;
import com.razorpay.RazorpayClient;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONObject;





import java.io.IOException;
import java.io.PrintWriter;

@MultipartConfig
@WebServlet(name = "guestServlet", urlPatterns = {"/guestServlet"})
public class GuestServlet extends HttpServlet
{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter())
        {
            String guestJsonString = request.getParameter("guestJsonString");
            String checkInDate = request.getParameter("checkInDate");
            String checkOutDate = request.getParameter("checkOutDate");
            String bill = request.getParameter("bill");
            String orderId = "";
            String status = "";
            Order order = null;

            //System.out.println(guestJsonString);
            try{
                RazorpayClient client = new RazorpayClient("rzp_test_ZnrDw2paOVbmsr", "9VqeUdcoz4uyiAffw23khxxN");
                JSONObject options = new JSONObject();
                options.put("amount", Integer.parseInt(bill)*100);   //need to pass as Paisa
                options.put("currency", "INR");
                options.put("receipt", "txn_123456");
                order = client.orders.create(options);

                //System.out.println(order);

                orderId = order.toJson().get("id").toString();
                status = order.toJson().get("status").toString();

            }
            catch (Exception e)
            {
                e.printStackTrace();
                out.println("order not created");
            }

            if(OrderDAO.saveOrder(new com.java.chandanahotelandlodging.entities.Order(orderId, bill, status, null)))
            {
                //Oder is saved to order table now save the guest details......................

                JSONArray jsonArray = new JSONArray(guestJsonString);
                for (int i = 0; i < jsonArray.length(); i++) {
                    JSONObject jsonObject = jsonArray.getJSONObject(i);
                    String guest_name = jsonObject.getString("guest_name");
                    String guest_email = jsonObject.getString("guest_email");
                    String guest_phone = jsonObject.getString("guest_phone");
                    String guest_type = jsonObject.getString("guest_type");
                    String guest_id_ref = jsonObject.getString("guest_id_ref");

                    //
                    if(!GuestDAO.saveGuest(new Guest(guest_name, guest_email, guest_phone, guest_type, guest_id_ref, checkInDate, checkOutDate, orderId)))
                    {
                        out.println("guest not saved");
                    }
                }
                out.println(order);

            }
            else
            {
                out.println("order not saved");
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
