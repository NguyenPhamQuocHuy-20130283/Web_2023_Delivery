package DAO.admin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import Connect.DBConnect;
import model.Account;

public class AccountDAO {
    public static List<Account> getListAccount() {
        ArrayList<Account> list = new ArrayList<>();
        String query = "select * from Account  ";
        try {
            Connection conn = DBConnect.getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt("idCustomer"), rs.getString("userName"), rs.getString("password"),
                        rs.getString("Name"), rs.getString("Address"), rs.getString("Email"),
                        rs.getString("NumberPhone"), rs.getInt("id_role_member")));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public static Account getAccountById(String uid) {
        String query = "select * from Account where uid = ? ";
        try {
            Connection conn = DBConnect.getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, uid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt("idCustomer"), rs.getString("userName"), rs.getString("password"),
                        rs.getString("Name"), rs.getString("Address"), rs.getString("Email"),
                        rs.getString("NumberPhone"), rs.getInt("id_role_member"));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public static void removeAccount(String uid) {
        String query = "DELETE FROM Account WHERE uid = ?";
        try {
            Connection conn = DBConnect.getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, uid);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }
    public static void insertAccount( Account account) {
        String insertQuery = "INSERT INTO Account (accountName, password, fullName, address, email, phone, idRoleMember) VALUES (?, ?, ?, ?, ?, ?, ?)";
        try {
            Connection conn = DBConnect.getConnection();
            PreparedStatement ps = conn.prepareStatement(insertQuery);
            ps.setString(1, account.getAccountName());
            ps.setString(2, account.getPassword());
            ps.setString(3, account.getFullName());
            ps.setString(4, account.getAddress());
            ps.setString(5, account.getEmail());
            ps.setString(6, account.getPhone());
            ps.setInt(7, account.getIdRoleMember());
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }


    	public static void updateAccount(Account account) {

	String query = "update Account set accountName = ?, password =?,email=?,address=?,phoneNumber=?,idRoleMember=? where uid =?;";
		try {
			Connection conn = DBConnect.getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, account.getAccountName());
			ps.setString(2, account.getPassword());
			ps.setString(3, account.getEmail());
			ps.setString(4, account.getAddress());
			ps.setString(5, account.getPhone());
            ps.setInt(6, account.getIdRoleMember());
			ps.setInt(7, account.getId());
		ps.executeUpdate();
		} catch (Exception e) {

		}
	}

    public static void main(String[] args) {
        System.out.println(getListAccount());
    }

}
