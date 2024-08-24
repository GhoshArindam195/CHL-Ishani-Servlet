package com.java.chandanahotelandlodging.servlets;


import com.java.chandanahotelandlodging.dataaccessobject.CustomerDAO;
import com.java.chandanahotelandlodging.dataaccessobject.FeedbackDao;
import com.java.chandanahotelandlodging.dataaccessobject.RoomDao;
import com.java.chandanahotelandlodging.entities.Customer;
import com.java.chandanahotelandlodging.entities.Feedback;
import com.java.chandanahotelandlodging.entities.Room;
import com.java.chandanahotelandlodging.helper.ConnectionProvider;
import com.java.chandanahotelandlodging.helper.FileExploler;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
//import jdk.internal.misc.FileSystemOption;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
//import java.io.PrintWriter;

@MultipartConfig
@WebServlet(name = "verifyingServlet", value = "/verifyingServlet")
public class VerifyingServlet extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        PrintWriter out = response.getWriter();
        try
        {
            Connection con = ConnectionProvider.getConnection();
            String query = "update customer set is_verified = 1 where c_email = '" + email + "'";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.executeUpdate();
            out.println("Success");
        }
        catch (Exception e)
        {
            e.printStackTrace();
            out.println("Failure");
        }
    }
}
