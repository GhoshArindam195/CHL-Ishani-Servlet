package com.java.chandanahotelandlodging.entities;

public class Feedback {
    private int f_id;
    private String f_from;
    private String f_type;
    private String f_subject;
    private String f_content;
    private boolean is_actioned;
    public Feedback(int f_id, String f_from, String f_type, String f_subject, String f_content, boolean is_actioned)
    {
        this.f_id = f_id;
        this.f_from= f_from;
        this.f_type = f_type;
        this.f_subject  = f_subject;
        this.f_content = f_content;
        this.is_actioned = is_actioned;
    }
    public Feedback(String f_from, String f_type, String f_subject, String f_content, boolean is_actioned)
    {
        this.f_from= f_from;
        this.f_type = f_type;
        this.f_subject  = f_subject;
        this.f_content = f_content;
        this.is_actioned = is_actioned;
    }
    public Feedback() {

    }
    public int getF_id() {
        return f_id;
    }

    public String getF_from() {
        return f_from;
    }

    public void setF_from(String f_from) {
        this.f_from = f_from;
    }

    public String getF_type() {
        return f_type;
    }

    public void setF_type(String f_type) {
        this.f_type = f_type;
    }

    public String getF_subject() {
        return f_subject;
    }

    public void setF_subject(String f_subject) {
        this.f_subject = f_subject;
    }

    public String getF_content() {
        return f_content;
    }

    public void setF_content(String f_content) {
        this.f_content = f_content;
    }

    public boolean isIs_actioned() {
        return is_actioned;
    }

    public void setIs_actioned(boolean is_actioned) {
        this.is_actioned = is_actioned;
    }

    public String toString()
    {
        return "User{" + "f_from" + f_from + "f_type" + f_type + "f_subject" + f_subject + "f_content" + f_content + "is_actioned" + is_actioned + '}';
    }
}
