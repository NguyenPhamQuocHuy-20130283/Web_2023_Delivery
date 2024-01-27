package model;

import java.sql.Timestamp;

public class Order {
private int idOrder;
private Timestamp dateAdd;
private Timestamp deliveryDate;
private String statusPay;
private int idCustomer;
private String endow;
private String status;
private String address;

    public Order(int idOrder, Timestamp dateAdd, Timestamp deliveryDate, String statusPay, int idCustomer, String endow, String status, String address) {
        this.idOrder = idOrder;
        this.dateAdd = dateAdd;
        this.deliveryDate = deliveryDate;
        this.statusPay = statusPay;
        this.idCustomer = idCustomer;
        this.endow = endow;
        this.status = status;
        this.address = address;
    }

    public int getIdOrder() {
        return idOrder;
    }

    public void setIdOrder(int idOrder) {
        this.idOrder = idOrder;
    }

    public Timestamp getDateAdd() {
        return dateAdd;
    }

    public void setDateAdd(Timestamp dateAdd) {
        this.dateAdd = dateAdd;
    }

    public Timestamp getDeliveryDate() {
        return deliveryDate;
    }

    public void setDeliveryDate(Timestamp deliveryDate) {
        this.deliveryDate = deliveryDate;
    }

    public String getStatusPay() {
        return statusPay;
    }

    public void setStatusPay(String statusPay) {
        this.statusPay = statusPay;
    }

    public int getIdCustomer() {
        return idCustomer;
    }

    public void setIdCustomer(int idCustomer) {
        this.idCustomer = idCustomer;
    }

    public String getEndow() {
        return endow;
    }

    public void setEndow(String endow) {
        this.endow = endow;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}