package DAO.admin;

import Connect.DBConnect;
import mapper.AccountMapper;
import mapper.ServiceMapper;
import model.Account;
import model.Service;
import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.core.statement.Update;


import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class ServiceDAO {
    public static List<Service> getListService() {
        ArrayList<Service> list = new ArrayList<>();
        String query = "select * from Service  ";

        Jdbi me = DBConnect.me();
        list= (ArrayList<Service>) me.withHandle(handle -> handle.createQuery(query).map(new ServiceMapper()).list());


        return list;
    }



    public static void removeService(String sid) {
        String query = "DELETE FROM Service WHERE sid = ?";
        Jdbi me = DBConnect.me();
        me.useHandle(handle -> handle.createUpdate(query)
                .bind(0, sid)
                .execute());
    }
    public static void insertService( Service service) {
        String insertQuery = "INSERT INTO Service ( name, price, isActive, updateAt) VALUES ( ?, ?, ?, ?)";
        Jdbi me = DBConnect.me();
        me.useTransaction(handle -> {
            handle.createUpdate(insertQuery)
                    .bind(0, service.getName())
                    .bind(1, service.getPrice())
                    .bind(2, "True")
                    .bind(3, service.getUpdateAt())


                    .execute();
        });

    }


    public static void updateService(Service Service) {
        Jdbi me = DBConnect.me();
        String query = "update Service set name = ?, price =?,isActive=? where sid =?;";
        me.useTransaction(handle -> {
            Update updateAccount = handle.createUpdate(query);
            updateAccount.bind("name", Service.getName())
                    .bind("price", Service.getPrice())
                    .bind("isActive", Service.isActive())
                    .bind("sid", Service.getSid())

                    .execute();
        });
    }
    }

}
