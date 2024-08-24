package com.java.chandanahotelandlodging.dataaccessobject;

import com.java.chandanahotelandlodging.entities.Feedback;
import com.java.chandanahotelandlodging.helper.ConnectionProvider;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class FeedbackDao {
    public static boolean saveFeedback(Feedback feedback){
        boolean res = false;
        try{
            Connection con = ConnectionProvider.getConnection();
            String query = "insert into feedback(f_from, f_type, f_subject, f_content, is_actioned) values(?, ?, ?, ?, ?);";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, feedback.getF_from());
            pstmt.setString(2, feedback.getF_type());
            pstmt.setString(3, feedback.getF_subject());
            pstmt.setString(4, feedback.getF_content());
            pstmt.setBoolean(5, feedback.isIs_actioned());

            pstmt.executeUpdate();

            res = true;
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return res;
    }
}
