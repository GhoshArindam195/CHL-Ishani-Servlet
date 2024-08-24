package com.java.chandanahotelandlodging.entities;

public class Reservation {
    private int r_id;
    private String date_in;
    private String date_out;
    private String room_number;
    private String paymentId;


    public Reservation(int r_id, String date_in, String date_out, String paymentId, String room_number)
    {
        this.r_id = r_id;
        this.date_in = date_in;
        this.date_out = date_out;
        this.paymentId = paymentId;
        this.room_number = room_number;
    }
    public Reservation(String date_in, String date_out, String paymentId, String room_number)
    {
        this.date_in =  date_in;
        this.date_out = date_out;
        this.paymentId = paymentId;
        this.room_number = room_number;
    }
    public Reservation()
    {

    }

    public int getR_id() {
        return r_id;
    }

    public String getDate_in() {
        return date_in;
    }

    public void setDate_in(String date_in) {
        this.date_in = date_in;
    }

    public String getDate_out() {
        return date_out;
    }

    public void setDate_out(String date_out) {
        this.date_out = date_out;
    }

    public String getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(String paymentId) {
        this.paymentId = paymentId;
    }

    public String getRoom_number() {
        return room_number;
    }

    public void setRoom_number(String room_number) {
        this.room_number = room_number;
    }

    @Override
    public String toString() {
        return "Reservation{" +
                "r_id=" + r_id +
                ", date_in='" + date_in + '\'' +
                ", date_out='" + date_out + '\'' +
                ", paymentId=" + paymentId +
                ", room_number=" + room_number +
                '}';
    }
}
