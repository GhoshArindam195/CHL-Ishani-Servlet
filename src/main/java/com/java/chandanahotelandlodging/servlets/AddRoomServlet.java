package com.java.chandanahotelandlodging.servlets;

import com.java.chandanahotelandlodging.dataaccessobject.FeedbackDao;
import com.java.chandanahotelandlodging.dataaccessobject.RoomDao;
import com.java.chandanahotelandlodging.entities.Feedback;
import com.java.chandanahotelandlodging.entities.Room;
import com.java.chandanahotelandlodging.helper.FileExploler;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
//import jdk.internal.misc.FileSystemOption;

import java.io.*;
//import java.io.PrintWriter;

@MultipartConfig
@WebServlet(name = "addRoomServlet", value = "/addRoomServlet")
public class AddRoomServlet extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        try
        {
            System.out.println("At AddRoomServlet.......");
            String hasAc;
            boolean hasAc_bool = false;
            String roomnumber = request.getParameter("roomnumber");
            String RoomType = request.getParameter("RoomType");
            int beds = Integer.parseInt(request.getParameter("beds"));
            try{
                hasAc = request.getParameterValues("HasAc")[0];
                hasAc_bool = true;
            }
            catch (Exception e)
            {
                hasAc_bool = false;
            }

            String price = request.getParameter("price");
            String description = request.getParameter("description");

            Part part = request.getPart("roomImg");
            String filename = part.getSubmittedFileName();
            String filepath = request.getRealPath("/")+"room_pics"+ File.separator+filename;

            //**********************
//            InputStream fileContent = part.getInputStream();
//            // Save the uploaded file to the server...
//            File uploadsDir = new File(getServletContext().getRealPath("/uploads"));
//            if (!uploadsDir.exists()) {
//                uploadsDir.mkdir();
//            }
//            File file = new File(uploadsDir, filename);
//            try (OutputStream outputStream = new FileOutputStream(file)) {
//                int read;
//                byte[] bytes = new byte[1024];
//                while ((read = fileContent.read(bytes)) != -1) {
//                    outputStream.write(bytes, 0, read);
//                }
//            }
            //**********************

//            System.out.println(request.getRealPath("room_pics"));

            FileExploler exploler = new FileExploler();
            exploler.saveFile(part.getInputStream(), filepath);


            RoomDao.saveRoom(new Room(roomnumber, RoomType, hasAc_bool, beds, filename, price, description));


            out.println("Success");


        }
        catch (Exception e)
        {
            e.printStackTrace();
            out.println("Failed");
        }
    }
}
