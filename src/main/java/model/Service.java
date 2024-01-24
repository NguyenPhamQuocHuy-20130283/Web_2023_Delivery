package model;

import java.sql.Date;

public class Service {
    private int sid;
    private String name;
    private int price;
    private boolean isActive;
    private Date updateAt;

    public Service(int sid, String name, int price, boolean isActive, Date updateAt) {
        this.sid = sid;
        this.name = name;
        this.price = price;
        this.isActive = isActive;
        this.updateAt = updateAt;
    }

    public Service() {
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public boolean isActive() {
        return isActive;
    }

    public void setActive(boolean active) {
        isActive = active;
    }

    public Date getUpdateAt() {
        return updateAt;
    }

    public void setUpdateAt(Date updateAt) {
        this.updateAt = updateAt;
    }
}
