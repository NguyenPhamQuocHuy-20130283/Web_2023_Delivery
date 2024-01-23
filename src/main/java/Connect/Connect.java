package Connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connect {
    static Connection connection;
    final static String  url ="jdbc:mysql://localhost:3306/delivery";
    final static String userName = "root";
    final static String password = "123456";
    public static Connection getDBConnection() throws ClassNotFoundException, SQLException {

        if (connection == null || connection.isClosed()) {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, userName, password);
        }
        return connection;
    }

    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        System.out.println(getDBConnection());
    }


}
