package model;

public class Category {
    private int idCategorie;
    private String nameCategorie;

    public Category(int idCategorie, String nameCategorie) {
        this.idCategorie = idCategorie;
        this.nameCategorie = nameCategorie;
    }

    public Category() {
    }

    public int getidCategorie() {
        return idCategorie;
    }

    public void setidCategorie(int idCategorie) {
        this.idCategorie = idCategorie;
    }

    public String getnameCategorie() {
        return nameCategorie;
    }

    public void setnameCategorie(String nameCategorie) {
        this.nameCategorie = nameCategorie;
    }
}
