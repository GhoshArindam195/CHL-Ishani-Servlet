package com.java.chandanahotelandlodging.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "filterServlet", value = "/filterServlet")
public class FilterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String check_in_date = request.getParameter("check-in_date");
        String check_out_date = request.getParameter("check-out_date");

        response.sendRedirect("booknow.jsp?in_date="+check_in_date+"&out_date="+check_out_date);
    }
}
