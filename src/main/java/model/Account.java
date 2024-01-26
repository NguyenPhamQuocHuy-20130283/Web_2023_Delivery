package model;

public class Account {
    private int id;
    private String user;
    private String uemail;

    private String pass;
    private int role; //0 la khach hang 1 la nhan vien 2 la quan ly
    private String umobile;
    private String address;

    public Account(int id, String user, String uemail, String pass, int role, String umobile, String address) {
        this.id = id;
        this.user = user;
        this.uemail = uemail;
        this.pass = pass;
        this.role = role;
        this.umobile = umobile;
        this.address = address;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getUemail() {
        return uemail;
    }

    public void setUemail(String uemail) {
        this.uemail = uemail;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public String getUmobile() {
        return umobile;
    }

    public void setUmobile(String umobile) {
        this.umobile = umobile;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Account{" +
                "id=" + id +
                ", user='" + user + '\'' +
                ", uemail='" + uemail + '\'' +
                ", pass='" + pass + '\'' +
                ", role=" + role +
                ", umobile='" + umobile + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}
