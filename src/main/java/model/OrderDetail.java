package model;

public class OrderDetail {
    private String ord_id;
    private String sid;

    private int distance;
    private double price;

    public OrderDetail() {

    }

    public OrderDetail(String ord_id, String sid, int distance, double price) {
        this.ord_id = ord_id;
        this.sid = sid;
        this.distance = distance;
        this.price = price;
    }

    public String getOrd_id() {
        return ord_id;
    }

    public void setOrd_id(String ord_id) {
        this.ord_id = ord_id;
    }

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
    }

    public int getDistance() {
        return distance;
    }

    public void setDistance(int distance) {
        this.distance = distance;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }


}



