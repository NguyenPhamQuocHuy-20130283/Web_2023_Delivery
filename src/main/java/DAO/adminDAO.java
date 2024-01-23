package DAO;

import Connect.DBConnect;
import model.Account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class adminDAO {

    public List<Account> getAllAccount() {
        List<Account> list = new ArrayList<>();
        String query = "select * from User";
        try {
            Connection conn = DBConnect.getConnection();//mo ket noi voi sql
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1),
                        rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getString(6),rs.getString(7)));
            }
        } catch (Exception ignored) {
        }
        return list;

    }
}
