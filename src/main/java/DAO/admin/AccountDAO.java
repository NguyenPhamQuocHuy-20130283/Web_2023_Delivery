package DAO.admin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import Connect.DBConnect;
import mapper.AccountMapper;
import model.Account;
import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.core.statement.Update;

public class AccountDAO {
    public static List<Account> getListAccount() {
        ArrayList<Account> list = new ArrayList<>();
        String query = "select * from Account  ";

            Jdbi me = DBConnect.me();
            list= (ArrayList<Account>) me.withHandle(handle -> handle.createQuery(query).map(new AccountMapper()).list());


        return list;
    }

    public static Account getAccountById(String uid) {
        String query = "select * from Account where uid = ? ";
        Jdbi me = DBConnect.me();
        return me.withHandle(handle -> handle.createQuery("query")
                .bind(0, uid)
                .map(new AccountMapper())
                .findOne()
                .orElse(null));
    }

    public static void removeAccount(String uid) {
        String query = "DELETE FROM Account WHERE uid = ?";
        Jdbi me = DBConnect.me();
        me.useHandle(handle -> handle.createUpdate(query)
                .bind(0, uid)
                .execute());
    }
    public static void insertAccount( Account account) {
        String insertQuery = "INSERT INTO Account (accountName, password, fullName, address, email, phone, idRoleMember) VALUES (?, ?, ?, ?, ?, ?, ?)";
        Jdbi me = DBConnect.me();
        me.useTransaction(handle -> {
            handle.createUpdate(insertQuery)
                    .bind(0, account.getAccountName())
                    .bind(1, account.getPassword())
                    .bind(2, account.getFullName())
                    .bind(3, account.getAddress())
                    .bind(4, account.getEmail())
                    .bind(5, account.getPhone())
                    .bind(6, account.getIdRoleMember())
                    .execute();
        });

    }


    	public static void updateAccount(Account account) {
            Jdbi me = DBConnect.me();
	String query = "update Account set accountName = ?, password =?,email=?,address=?,phoneNumber=?,idRoleMember=? where uid =?;";
            me.useTransaction(handle -> {
                Update updateAccount = handle.createUpdate(query);
                updateAccount.bind("accountName", account.getAccountName())
                        .bind("password", account.getPassword())
                        .bind("email", account.getEmail())
                        .bind("address", account.getAddress())
                        .bind("phoneNumber", account.getPhone())
                        .bind("idRoleMember", account.getIdRoleMember())
                        .bind("uid", account.getId())
                        .execute();
            });
	}

    public static void main(String[] args) {
        System.out.println(getListAccount());
    }

}
