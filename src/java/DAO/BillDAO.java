/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import entity.Bill;
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
public class BillDAO {
    public ArrayList<Bill> getListBill() throws SQLException{
        Connection connection=DBConnect.getConnection();
        String sql="select * from bill";
        PreparedStatement ps=connection.prepareCall(sql);
        ResultSet rs=ps.executeQuery();
        ArrayList<Bill> list = new ArrayList<>();
        while (rs.next()) {            
            Bill b=new Bill();
            b.setID(rs.getInt("id"));
            b.setIdRoom(rs.getInt("id_room"));
            b.setIdCustomer(rs.getInt("id_cusomer"));
            b.setCreated(rs.getTimestamp("created"));
            b.setIdWaterBill(rs.getInt("water_bill_id"));
            b.setIdElectricBill(rs.getInt("electric_bill_id"));
            list.add(b);
        }
        return list;
    }
    
}
