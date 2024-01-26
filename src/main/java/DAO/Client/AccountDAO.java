package DAO.Client;

import Connect.DBConnect;
import Utils.EnCode;
import model.Account;
import org.jdbi.v3.core.Jdbi;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AccountDAO {
    public AccountDAO() {
        super();
    }
    public static boolean checkAccountExist(String userName, String email) { // ton tai la true
        Jdbi me = DBConnect.me();
        try {
            return me.withHandle(handle -> handle
                    .createQuery("SELECT EXISTS(SELECT idCustomer FROM customers WHERE userName = ? OR Email = ?)")
                    .bind(0, userName).bind(1, email).mapTo(Boolean.class).one());
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }
    }
    //get 1 account by email
    public static Account getAccountByEmail(String email) {

        String query = "select idCustomer,userName,password,Name,Address,Email,NumberPhone,id_role_member from customer where Email = ?";
        try (Connection conn = DBConnect.getConnection(); PreparedStatement ps = conn.prepareStatement(query);) {
            ps.setString(1, email);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    return new Account(rs.getInt("idCustomer"), rs.getString("userName"), rs.getString("password"),
                            rs.getString("Name"), rs.getString("Address"), rs.getString("Email"),
                            rs.getString("NumberPhone"), rs.getInt("id_role_member"));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;

    }
    public static Account checkAccountExistByid(String uid) {

        String query = "select idCustomer,userName,password,Name,Address,Email,NumberPhone,id_role_member from customer where idCustomer = ?";
        try (Connection conn = DBConnect.getConnection(); PreparedStatement ps = conn.prepareStatement(query);) {
            ps.setString(1, uid);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    return new Account(rs.getInt("idCustomer"), rs.getString("userName"), rs.getString("password"),
                            rs.getString("Name"), rs.getString("Address"), rs.getString("Email"),
                            rs.getString("NumberPhone"), rs.getInt("id_role_member"));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;

    }
    public static void editAccountPassword(String uid, String newpass) {
        String query = "update idCustomer set password = ? where idCustomer = ?;";
        newpass = EnCode.toSHA1(newpass);
        try (Connection conn = DBConnect.getConnection(); PreparedStatement ps = conn.prepareStatement(query);) {

            ps.setString(1, newpass);
            ps.setString(2, uid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
