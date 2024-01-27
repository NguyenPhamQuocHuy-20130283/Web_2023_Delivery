package model;

public class OrderDetail {
    private int idBill_detail;
    private int idBill;
    private int idProduct;
    private int idShippingFee;
    private int quantity;
    private double price;
    private String note;

    public OrderDetail(int idBill_detail, int idBill, int idProduct, int idShippingFee, int quantity, double price, String note) {
        this.idBill_detail = idBill_detail;
        this.idBill = idBill;
        this.idProduct = idProduct;
        this.idShippingFee = idShippingFee;
        this.quantity = quantity;
        this.price = price;
        this.note = note;
    }

    public int getIdBill_detail() {
        return idBill_detail;
    }

    public void setIdBill_detail(int idBill_detail) {
        this.idBill_detail = idBill_detail;
    }

    public int getIdBill() {
        return idBill;
    }

    public void setIdBill(int idBill) {
        this.idBill = idBill;
    }

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public int getIdShippingFee() {
        return idShippingFee;
    }

    public void setIdShippingFee(int idShippingFee) {
        this.idShippingFee = idShippingFee;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
}