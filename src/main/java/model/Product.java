package model;

import java.io.Serializable;
import java.util.List;

public class Product implements Serializable {
    private int idProduct;
    private String nameProduct;
private double priceProduct;
private String description;
private double width;
private double height;
private double weight;
private int id_view;
private double id_star;
private String Comment;
private int idCategorie;
private String isActive;
    public Product(String nameProduct, double priceProduct, String description, double width, double height, double weight, int id_view, double id_star, String comment, int idCategorie, String isActive) {
        this.nameProduct = nameProduct;
        this.priceProduct = priceProduct;
        this.description = description;
        this.width = width;
        this.height = height;
        this.weight = weight;
        this.id_view = id_view;
        this.id_star = id_star;
        Comment = comment;
        this.idCategorie = idCategorie;
        this.isActive = isActive;
    }
    public Product(int idProduct, String nameProduct, double priceProduct, String description, double width, double height, double weight, int id_view, double id_star, String comment, int idCategorie, String isActive) {
        this.idProduct = idProduct;
        this.nameProduct = nameProduct;
        this.priceProduct = priceProduct;
        this.description = description;
        this.width = width;
        this.height = height;
        this.weight = weight;
        this.id_view = id_view;
        this.id_star = id_star;
        Comment = comment;
        this.idCategorie = idCategorie;
        this.isActive = isActive;
    }



    public Product() {
    }

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public String getNameProduct() {
        return nameProduct;
    }

    public void setNameProduct(String nameProduct) {
        this.nameProduct = nameProduct;
    }

    public double getPriceProduct() {
        return priceProduct;
    }

    public void setPriceProduct(double priceProduct) {
        this.priceProduct = priceProduct;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getWidth() {
        return width;
    }

    public void setWidth(double width) {
        this.width = width;
    }

    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public int getId_view() {
        return id_view;
    }

    public void setId_view(int id_view) {
        this.id_view = id_view;
    }

    public double getId_star() {
        return id_star;
    }

    public void setId_star(double id_star) {
        this.id_star = id_star;
    }

    public String getComment() {
        return Comment;
    }

    public void setComment(String comment) {
        Comment = comment;
    }

    public int getIdCategorie() {
        return idCategorie;
    }

    public void setIdCategorie(int idCategorie) {
        this.idCategorie = idCategorie;
    }

    public String getIsActive() {
        return isActive;
    }

    public void setIsActive(String isActive) {
        this.isActive = isActive;
    }
}