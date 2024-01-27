package DAO.Client;

import Connect.DBConnect;
import model.Order;
import model.OrderDetail;
import model.Product;
import org.jdbi.v3.core.Jdbi;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class PackageDAO {
    public PackageDAO() {
        super();
    }

    private static void insertIntoProducts(Product p) throws SQLException {
        String sql = "INSERT INTO products ( nameProduct, priceProduct, description, width, height, weight, id_view, id_star, Comment, idCategorie, isActive) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try (PreparedStatement ps = DBConnect.getConnection().prepareStatement(sql);) {
            ps.setString(1, p.getNameProduct());
            ps.setDouble(2, p.getPriceProduct());
            ps.setString(3, p.getDescription());
            ps.setDouble(4, p.getWidth());
            ps.setDouble(5, p.getHeight());
            ps.setDouble(6, p.getWeight());
            ps.setInt(7, p.getId_view());
            ps.setDouble(8, p.getId_star());
            ps.setString(9, p.getComment());
            ps.setInt(10, p.getIdCategorie());
            ps.setString(11, p.getIsActive());
            ps.executeUpdate();

        }
    }

    private static void insertIntoOrder(Order o) throws SQLException {
        String sql = "INSERT INTO orders (id_orders, dateAdd, deliveryDate, StatusPay, idCustomer, endow, status, address) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        Jdbi me = DBConnect.me();
        me.withHandle(handle -> handle.createUpdate(sql).bind(0, o.getIdOrder()).bind(1, o.getDateAdd()).bind(2, o.getDeliveryDate())
                .bind(3, o.getStatusPay()).bind(4, o.getIdCustomer()).bind(5, o.getEndow()).bind(6, o.getStatus()).bind(7, o.getAddress()).execute());
    }

    public static void insertIntoOrderDetail(OrderDetail od) throws SQLException {
        String sql = "INSERT INTO orders_details (idBill_detail, idBill, idProduct, idShippingFee, quantity, price, note) VALUES (?, ?, ?, ?, ?, ?, ?)";
        Jdbi me = DBConnect.me();
        me.withHandle(handle -> handle.createUpdate(sql).bind(0, od.getIdBill_detail()).bind(1, od.getIdBill()).bind(2, od.getIdProduct())
                .bind(3, od.getIdShippingFee()).bind(4, od.getQuantity()).bind(5, od.getPrice()).bind(6, od.getNote()).execute());
    }

    public static void main(String[] args) throws SQLException {
//        Product p = new Product();
//        p.setNameProduct("test");
//        p.setPriceProduct(100);
//        p.setDescription("test");
//        p.setWidth(100);
//        p.setHeight(100);
//        p.setWeight(100);
//        p.setId_view(1);
//        p.setId_star(1);
//        p.setComment("test");
//        p.setIdCategorie(1);
//        p.setIsActive("1");
//        try {
//            insertIntoProducts(p);
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        insertIntoOrder(new Order(1, null, null, null, 1, null, null, null));
        insertIntoOrderDetail(new OrderDetail(1, 1, 1, 1, 1, 1, "test"));
    }
}
