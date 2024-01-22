package DAO;

import Connect.Connect;
import model.Account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class adminDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Account> getAllAccount() {
        List<Account> list = new ArrayList<>();
        String query = "select * from User";
        try {
            conn = new Connect().getDBConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1),
                        rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getString(6),rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return list;

    }
}
