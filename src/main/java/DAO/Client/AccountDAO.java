package DAO.Client;

import Connect.DBConnect;
import org.jdbi.v3.core.Jdbi;

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
}
