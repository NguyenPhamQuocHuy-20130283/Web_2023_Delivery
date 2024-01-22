package vn.edu.hcmuaf.fit.context;

import org.apache.commons.dbcp2.BasicDataSource;
import org.jdbi.v3.core.Jdbi;
import vn.edu.hcmuaf.fit.entity.Type;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.stream.Collectors;


public class DBContext {
    private static final String serverName = "localhost";
    private static final String dbName = "app_food";
    private static final String portNumber = "3306";
    private static final String instance = "";// LEAVE THIS ONE EMPTY IF YOUR SQL IS A SINGLE INSTANCE
    private static final String userID = "root";
    private static final String password = "";
    private static BasicDataSource dataSource;
    static Jdbi jdbi;

    public static Jdbi me() {
        if (jdbi == null) {
            jdbi = Jdbi.create(dataSource);
        }
        return jdbi;
    }

    static {

        String url = "jdbc:mysql://" + serverName + ":" + portNumber + "\\" + instance + "/" + dbName;
        if (instance == null || instance.trim().isEmpty())
            url = "jdbc:mysql://" + serverName + ":" + portNumber + "/" + dbName;
        dataSource = new BasicDataSource();
        dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
        dataSource.setUrl(url);
        dataSource.setUsername(userID);
        dataSource.setPassword(password);
        dataSource.setMaxIdle(2);
        dataSource.setMinIdle(2);
    }

    private DBContext() {
    }

    public static Connection getConnection() throws SQLException {
        return dataSource.getConnection();
    }

    public static void main(String[] args) throws Exception {
		Jdbi me = DBContext.me();
		List<Type> list = me.withHandle(handle -> {
			return handle.createQuery("select  * from types").mapToBean(Type.class).stream()
					.collect(Collectors.toList());
		});
		System.out.println(list);
    }

}