package com.java.chandanahotelandlodging.entities;

import java.sql.Timestamp;

public class Order {
    private String orderId;
    private String amount;
    private String status;

    private Timestamp created_at = null;

    private Timestamp last_update_at = null;

    private String paymentId;

    public Order() {
    }

    public Order(String orderId, String amount, String status, Timestamp created_at, Timestamp last_update_at, String paymentId) {
        this.orderId = orderId;
        this.amount = amount;
        this.status = status;
        this.created_at = created_at;
        this.last_update_at = last_update_at;
        this.paymentId = paymentId;
    }

    public Order(String orderId, String amount, String status, String paymentId) {
        this.orderId = orderId;
        this.amount = amount;
        this.status = status;
        this.paymentId = paymentId;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Timestamp getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Timestamp created_at) {
        this.created_at = created_at;
    }

    public Timestamp getLast_update_at() {
        return last_update_at;
    }

    public void setLast_update_at(Timestamp last_update_at) {
        this.last_update_at = last_update_at;
    }

    public String getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(String paymentId) {
        this.paymentId = paymentId;
    }


    @Override
    public String toString() {
        return "Order{" +
                "orderId='" + orderId + '\'' +
                ", amount='" + amount + '\'' +
                ", status='" + status + '\'' +
                ", paymentId='" + paymentId + '\'' +
                '}';
    }
}
