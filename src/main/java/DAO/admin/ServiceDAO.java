package DAO.admin;

import Connect.DBConnect;
import model.Service;


import java.sql.*;
import java.time.Instant;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class ServiceDAO {
    public static List<Service> getListService() {
        ArrayList<Service> list = new ArrayList<>();
        String query = "select * from Service  ";
        try {
            Connection conn = DBConnect.getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(
                        new Service(rs.getInt("idService"), rs.getString("serviceName"), rs.getInt("servicePrice"),rs.getBoolean("isActive"),rs.getDate("updateAt"))
                        );
            }
        } catch (Exception e) {
        }
        return list;
    }
    public static void updateService(Service service){
        String query = "update Service set serviceName = ?,servicePrice=? where idService =?;";
        try {
            Connection conn = DBConnect.getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, service.getName());
            ps.setInt(2, service.getPrice());


            ps.setInt(3, service.getSid());
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }
    public static void insertService(Service service){

        String query = "insert into Service(serviceName, price, isActive,updateAt)values(?,?,TRUE,?);";
        try {
            Connection conn = DBConnect.getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            LocalDate currentDate = LocalDate.now();
            ps.setString(1, service.getName());
            ps.setInt(2, service.getPrice());


            ps.setDate(3, Date.valueOf(currentDate));
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }
    public static void deleteService(String sid){
        String query = "DELETE FROM Service WHERE sid = ?";
        try {
            Connection conn = DBConnect.getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, sid);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

}
