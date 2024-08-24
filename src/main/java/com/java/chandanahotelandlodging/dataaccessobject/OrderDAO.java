package com.java.chandanahotelandlodging.dataaccessobject;

import com.java.chandanahotelandlodging.entities.Order;
import com.java.chandanahotelandlodging.helper.ConnectionProvider;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class OrderDAO {

    public static boolean saveOrder(Order order)
    {
        boolean res = false;
        try{
            Connection con = ConnectionProvider.getConnection();
            String query = "insert into orders(ORDER_ID, AMOUNT, STATUS, PAYMENT_ID) values(?, ?, ?, ?);";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, order.getOrderId());
            pstmt.setString(2, order.getAmount());
            pstmt.setString(3, order.getStatus());
            pstmt.setString(4, order.getPaymentId());

            pstmt.executeUpdate();

            res = true;
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return res;
    }

    public static boolean updatePaymentIdOnSuccessfulOrder(String orderId, String paymentId)
    {
        boolean res = false;
        try{
            Connection con = ConnectionProvider.getConnection();
            String query = "update orders set payment_id = ?, status = ? where order_id = ?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, paymentId);
            pstmt.setString(2, "success");
            pstmt.setString(3, orderId);

            pstmt.executeUpdate();

            res = true;
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return res;
    }


}
