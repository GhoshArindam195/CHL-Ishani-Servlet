package com.java.chandanahotelandlodging.dataaccessobject;

import com.java.chandanahotelandlodging.entities.Guest;
import com.java.chandanahotelandlodging.entities.Reservation;
import com.java.chandanahotelandlodging.helper.ConnectionProvider;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class ReservationDAO {

    public static boolean saveReservation(Reservation reservation)
    {
        boolean res = false;
        try{
            Connection con = ConnectionProvider.getConnection();
            String query = "insert into reservation(date_in, date_out, room_number, payment_id)values(?,?,?,?)";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, reservation.getDate_in());
            pstmt.setString(2, reservation.getDate_out());
            pstmt.setString(3, reservation.getRoom_number());
            pstmt.setString(4, reservation.getPaymentId());
            pstmt.executeUpdate();

            res = true;
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return res;
    }
}
