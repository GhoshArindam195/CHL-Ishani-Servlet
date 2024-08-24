package com.java.chandanahotelandlodging.dataaccessobject;

import com.java.chandanahotelandlodging.entities.Guest;
import com.java.chandanahotelandlodging.helper.ConnectionProvider;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;

public class GuestDAO
{
    public static boolean saveGuest(Guest guest)
    {
        boolean res = false;
        try{
            Connection con = ConnectionProvider.getConnection();
            String query = "insert into guest(g_name, g_email, g_phone, g_id_type, g_id_ref, check_in, check_out, order_id) values(?, ?, ?, ?, ?, ?, ?, ?);";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, guest.getG_name());
            pstmt.setString(2, guest.getG_email());
            pstmt.setString(3, guest.getG_phone());
            pstmt.setString(4, guest.getG_id_type());
            pstmt.setString(5, guest.getG_id_ref());
            pstmt.setString(6, guest.getCheck_in());
            pstmt.setString(7, guest.getCheck_out());
            pstmt.setString(8, guest.getOrder_id());

            pstmt.executeUpdate();

            res = true;
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return res;
    }
}
