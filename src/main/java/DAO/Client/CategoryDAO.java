package DAO.Client;

import Connect.DBConnect;
import model.Category;
import org.jdbi.v3.core.Jdbi;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class CategoryDAO {
    public CategoryDAO() {
        super();
    }
//get list category from database
    public static List<Category> listCategory() throws SQLException {
        Jdbi me = DBConnect.me();
        return me.withHandle(handle -> handle.createQuery("select * from categories").mapToBean(Category.class).list());
    }

    public static void main(String[] args) throws SQLException {
        List<Category> list = listCategory();
        for (Category c : list) {
            System.out.println(c.getnameCategorie());
        }
    }

}
