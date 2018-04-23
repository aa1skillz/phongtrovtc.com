/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import entity.BillDetail;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import util.DBConnect;

/**
 *
 * @author zeddh
 */
public class BillDetailDAO {

    public ArrayList<BillDetail> getListBillDetails() throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "select * from detail_bill";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<BillDetail> list = new ArrayList<>();
        while (rs.next()) {
            BillDetail bd=new BillDetail();
            bd.setID(rs.getInt("id"));
            bd.setIdBill(rs.getInt("id_bill"));
            bd.setWaterBill(rs.getDouble("water_bill"));
            bd.setElectricBill(rs.getDouble("electric_bill"));
            bd.setServiceBill(rs.getDouble("serice_bill"));
            list.add(bd);

        }
        return list;
    }
    public void insertBillDetail(BillDetail bd)
    {
        Connection connection = DBConnect.getConnection();
        String sql = "INSERT INTO bill_detail VALUE(?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setInt(1,bd.getID() );
            ps.setInt(2, bd.getIdBill());
            ps.setDouble(3, bd.getWaterBill());
            ps.setDouble(4, bd.getElectricBill());
            ps.setDouble(5, bd.getServiceBill());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        
    }



}
