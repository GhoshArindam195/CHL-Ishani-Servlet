package com.java.chandanahotelandlodging.entities;

public class Room
{
    private String number;
    private String type;
    private boolean has_ac;
    private int Beds = 1;
    private String room_img;
    private String price;

    private String description;

    public Room(String number, String type, boolean has_ac, int Beds, String room_img, String price, String description)
    {
        this.number = number;
        this.type = type;
        this.has_ac = has_ac;
        this.Beds = Beds;
        this.room_img = room_img;
        this.price = price;
        this.description = description;

    }

    public Room(String type, boolean has_ac, int Beds, String room_img, String price, String description)
    {
        this.type = type;
        this.has_ac = has_ac;
        this.Beds = Beds;
        this.room_img = room_img;
        this.price = price;
        this.description = description;
    }
    public Room()
    {

    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getRoom_img() {
        return room_img;
    }

    public void setRoom_img(String room_img) {
        this.room_img = room_img;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public boolean getHas_ac() {
        return has_ac;
    }

    public void setHas_ac(boolean has_ac) {
        this.has_ac = has_ac;
    }


    public int getBeds() {
        return Beds;
    }

    public void setBeds(int beds) {
        Beds = beds;
    }

    @Override
    public String toString() {
        return "Room{" +
                "number='" + number + '\'' +
                ", type='" + type + '\'' +
                ", has_ac='" + has_ac + '\'' +
                ", Beds=" + Beds +
                ", price='" + price + '\'' +
                '}';
    }
}

