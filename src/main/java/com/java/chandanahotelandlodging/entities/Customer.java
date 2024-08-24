package com.java.chandanahotelandlodging.entities;

import java.util.Date;

public class Customer {
    private int c_id;
    private String c_name;
    private String c_email;
    private String c_address;
    private String c_phone;
    private String c_pwd;
    private String c_dob;
    private String c_id_type;
    private String c_id_number;

    private int is_verified = 0;

    public Customer() {
    }

    public Customer(String c_name, String c_email, String c_address, String c_phone, String c_pwd, String c_dob, String c_id_type, String c_id_number, int is_verified) {
        this.c_name = c_name;
        this.c_email = c_email;
        this.c_address = c_address;
        this.c_phone = c_phone;
        this.c_pwd = c_pwd;
        this.c_dob = c_dob;
        this.c_id_type = c_id_type;
        this.c_id_number = c_id_number;
        this.is_verified = is_verified;
    }

    public Customer(int c_id, String c_name, String c_email, String c_address, String c_phone, String c_pwd, String c_dob, String c_id_type, String c_id_number, int is_verified) {
        this.c_id = c_id;
        this.c_name = c_name;
        this.c_email = c_email;
        this.c_address = c_address;
        this.c_phone = c_phone;
        this.c_pwd = c_pwd;
        this.c_dob = c_dob;
        this.c_id_type = c_id_type;
        this.c_id_number = c_id_number;
        this.is_verified = is_verified;
    }

    public int getC_id() {
        return c_id;
    }


    public String getC_name() {
        return c_name;
    }

    public void setC_name(String c_name) {
        this.c_name = c_name;
    }

    public String getC_email() {
        return c_email;
    }

    public void setC_email(String c_email) {
        this.c_email = c_email;
    }

    public String getC_address() {
        return c_address;
    }

    public void setC_address(String c_address) {
        this.c_address = c_address;
    }

    public String getC_phone() {
        return c_phone;
    }

    public void setC_phone(String c_phone) {
        this.c_phone = c_phone;
    }

    public String getC_pwd() {
        return c_pwd;
    }

    public void setC_pwd(String c_pwd) {
        this.c_pwd = c_pwd;
    }

    public String getC_dob() {
        return c_dob;
    }

    public void setC_dob(String c_dob) {
        this.c_dob = c_dob;
    }

    public String getC_id_type() {
        return c_id_type;
    }

    public void setC_id_type(String c_id_type) {
        this.c_id_type = c_id_type;
    }

    public String getC_id_number() {
        return c_id_number;
    }

    public void setC_id_number(String c_id_number) {
        this.c_id_number = c_id_number;
    }

    public int getIs_verified() {
        return is_verified;
    }

    public void setIs_verified(int is_verified) {
        this.is_verified = is_verified;
    }
}