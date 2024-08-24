package com.java.chandanahotelandlodging;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

import com.java.chandanahotelandlodging.dataaccessobject.FeedbackDao;
import com.java.chandanahotelandlodging.entities.Feedback;

@WebServlet(name = "servletFeedback", value = "/servletFeedback")
public class ServletFeedback extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        String radio = request.getParameter("radio");
        String content = request.getParameter("content");

        Feedback feedback = new Feedback(email, radio, subject, content, false);

        try(PrintWriter writer = response.getWriter()) {
            if(FeedbackDao.saveFeedback(feedback)){
                if(radio.equals("question")){
                    writer.println("query");
                }
                if(radio.equals("review")){
                    writer.println("review");
                }
            }
            else{
                writer.println("Failure");
            }
        }
        catch(Exception e) {
            e.printStackTrace();
        }
    }
}
