package com.java.chandanahotelandlodging.dataaccessobject;

import com.java.chandanahotelandlodging.entities.Room;
import com.java.chandanahotelandlodging.helper.ConnectionProvider;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class RoomDao
{
    public static List<Room> getAllRooms()
    {
        ArrayList<Room> rooms = new ArrayList<>();
        try
        {
            String query = "SELECT * FROM ROOM";
            Connection con = ConnectionProvider.getConnection();
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet set = stmt.executeQuery();

            Room room=null;

            while(set.next())
            {
                room = new Room();
                room.setNumber(set.getString(1));
                room.setType(set.getString(2));
                room.setHas_ac(set.getBoolean(3));
                room.setBeds(set.getInt(4));
                room.setRoom_img(set.getString(5));
                room.setPrice(set.getString(6));
                room.setDescription(set.getString(7));

                rooms.add(room);
            }


        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return rooms;
    }

    public static List<Room> getAvailableRooms(String dateIn, String dateOut, String filter_price)
    {
//        ArrayList<Room> rooms = null;
        ArrayList<Room> rooms = new ArrayList<>();
        try
        {
            String query = "SELECT r.* FROM room r WHERE r.NUMBER NOT IN ( SELECT b.room_number FROM reservation b WHERE NOT ( b.date_in >= ? OR b.date_out <= ? ) ) and cast(r.price as UNSIGNED)<=cast(? as UNSIGNED)";
            Connection con = ConnectionProvider.getConnection();
            PreparedStatement stmt = con.prepareStatement(query);
            stmt.setString(1, dateOut);
            stmt.setString(2, dateIn);
            stmt.setString(3, filter_price);
            ResultSet set = stmt.executeQuery();

            Room room=null;

            while(set.next())
            {
                room = new Room();
                room.setNumber(set.getString(1));
                room.setType(set.getString(2));
                room.setHas_ac(set.getBoolean(3));
                room.setBeds(set.getInt(4));
                room.setRoom_img(set.getString(5));
                room.setPrice(set.getString(6));
                room.setDescription(set.getString(7));

                rooms.add(room);
            }


        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return rooms;
    }

    public static List<Room> getDoubleRooms()
    {
        ArrayList<Room> rooms = null;
        try
        {
            String query = "SELECT * FROM ROOM WHERE TYPE='DOUBLE'";
            Connection con = ConnectionProvider.getConnection();
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet set = stmt.executeQuery();

            Room room=null;

            while(set.next())
            {
                room = new Room();
                room.setNumber(set.getString(1));
                room.setType(set.getString(2));
                room.setHas_ac(set.getBoolean(3));
                room.setBeds(set.getInt(4));
                room.setRoom_img(set.getString(5));
                room.setPrice(set.getString(6));

                rooms.add(room);
            }


        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return rooms;
    }

    public static List<Room> getSingleRooms()
    {
        ArrayList<Room> rooms = null;
        try
        {
            String query = "SELECT * FROM ROOM WHERE TYPE='SINGLE'";
            Connection con = ConnectionProvider.getConnection();
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet set = stmt.executeQuery();

            Room room=null;

            while(set.next())
            {
                room = new Room();
                room.setNumber(set.getString(1));
                room.setType(set.getString(2));
                room.setHas_ac(set.getBoolean(3));
                room.setBeds(set.getInt(4));
                room.setRoom_img(set.getString(5));
                room.setPrice(set.getString(6));

                rooms.add(room);
            }


        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return rooms;
    }

    public static List<Room> getDeluxRooms()
    {
        ArrayList<Room> rooms = null;
        try
        {
            String query = "SELECT * FROM ROOM WHERE TYPE='DELUX'";
            Connection con = ConnectionProvider.getConnection();
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet set = stmt.executeQuery();

            Room room=null;

            while(set.next())
            {
                room = new Room();
                room.setNumber(set.getString(1));
                room.setType(set.getString(2));
                room.setHas_ac(set.getBoolean(3));
                room.setBeds(set.getInt(4));
                room.setRoom_img(set.getString(5));
                room.setPrice(set.getString(6));

                rooms.add(room);
            }


        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return rooms;
    }

    public static List<Room> getBookedRooms(String dateIn, String dateOut)
    {
        ArrayList<Room> rooms = null;
        try
        {
            String query = "SELECT r.* FROM room r WHERE r.NUMBER NOT IN ( SELECT b.room_number FROM reservation b WHERE NOT ( b.date_in >= ? OR b.date_out <= ? ) )";
            Connection con = ConnectionProvider.getConnection();
            PreparedStatement stmt = con.prepareStatement(query);
            stmt.setString(1, dateOut);
            stmt.setString(2, dateIn);
            ResultSet set = stmt.executeQuery();

            Room room=null;

            while(set.next())
            {
                room = new Room();
                room.setNumber(set.getString(1));
                room.setType(set.getString(2));
                room.setHas_ac(set.getBoolean(3));
                room.setBeds(set.getInt(4));
                room.setRoom_img(set.getString(5));
                room.setPrice(set.getString(6));

                rooms.add(room);
            }


        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return rooms;
    }


    public static boolean saveRoom(Room room)
    {
        try
        {
            Connection con = ConnectionProvider.getConnection();
            String query = "INSERT INTO ROOM VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, room.getNumber());
            pstmt.setString(2, room.getType());
            pstmt.setBoolean(3, room.getHas_ac());
            pstmt.setInt(4, room.getBeds());
            pstmt.setString(5, room.getRoom_img());
            pstmt.setString(6, room.getPrice());
            pstmt.setString(7, room.getDescription());


            pstmt.executeUpdate();
            return true;
        }
        catch (Exception e)
        {
            e.printStackTrace();
            return false;
        }

    }

    public static Room getRoomByRoomnumber(int roomnumber)
    {
        Room room = null;
        try{


            Connection con =ConnectionProvider.getConnection();
            String sql = "SELECT * FROM ROOM WHERE NUMBER= "+roomnumber;

            PreparedStatement pstmt = con.prepareStatement(sql);

            ResultSet set = pstmt.executeQuery();

            if(set.next())
            {
                room = new Room(set.getString(1), set.getString(2), set.getBoolean(3), set.getInt(4), set.getString(5), set.getString(6), set.getString(7));
            }

        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return room;
    }
}
