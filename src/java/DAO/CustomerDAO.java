/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import entity.Customer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import util.DBConnect;

/**
 *
 * @author zeddh
 */
public class CustomerDAO {

    public ArrayList<Customer> getListCustomer() throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM customer";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Customer> customer = new ArrayList<>();
        while (rs.next()) {
            Customer c = new Customer();
            c.setID(rs.getInt("ID"));
            c.setFullName(rs.getString("fullname"));
            c.setBirthDay(rs.getString("birthday"));
            c.setSex(rs.getString("sex"));
            c.setPhone(rs.getString("phone"));
            c.setAddress(rs.getString("address"));
            c.setIc(rs.getString("ic"));
            c.setAvatar(rs.getString("avatar"));
            c.setDelegate(rs.getString("delegate"));
            c.setStatus(rs.getString("status"));
            c.setCreated(rs.getString("created"));
            c.setUpdated(rs.getString("updated"));

            customer.add(c);

        }
        return customer;

    }
    public int count(){
    int num=0;
    try{
        Connection connection = DBConnect.getConnection();
        Statement st = connection.createStatement();
        ResultSet rs3 = st.executeQuery("SELECT COUNT(*) as count from customer");
        while(rs3.next()){
            num = rs3.getInt("count");
        }
    } catch (SQLException e){
        e.printStackTrace();
    }   
    return num;
}  

    public boolean insertCustomer(Customer c) throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "insert into customer values (?,?,?,?,?,?,?,?,?,?,?,?)";
        int kq=0;
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setInt(1, c.getID());
            ps.setString(2, c.getFullName());
            ps.setString(3, c.getBirthDay());
            ps.setString(4, c.getSex());
            ps.setString(5, c.getPhone());
            ps.setString(6, c.getAddress());
            ps.setString(7, c.getIc());
            ps.setString(8, c.getAvatar());
            ps.setString(9, c.getDelegate());
            ps.setString(10, c.getStatus());
            ps.setString(11, c.getCreated());
            ps.setString(12, c.getUpdated());
            kq=ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println("id="+c.getID()+"kq="+kq);
        return kq==1;
    }

    public boolean updateCustomer(Customer c) {
        Connection connection = DBConnect.getConnection();
        String sql = "update customer set fullname=?,birthday=?,sex=?,phone=?,address=?,ic=?,avatar=?,delegate=?,status=?,created=?,update=? where id=?";
        try {
            PreparedStatement ps = connection.prepareCall(sql);

            ps.setString(1, c.getFullName());
            ps.setString(2, c.getBirthDay());
            ps.setString(3, c.getSex());
            ps.setString(4, c.getPhone());
            ps.setString(5, c.getAddress());
            ps.setString(6, c.getIc());
            ps.setString(7, c.getAvatar());
            ps.setString(8, c.getDelegate());
            ps.setString(9, c.getStatus());
            ps.setString(10, c.getCreated());
            ps.setString(11, c.getUpdated());
            ps.setInt(12, c.getID());
            return ps.executeUpdate(sql) == 1;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean deleteCustomer(int id) {
        Connection connection = DBConnect.getConnection();
        String sql = "delete from customer where id=?";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setInt(1, id);
            return ps.executeUpdate() == 1;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    public Customer getCustomerbyID(int ID){
        Connection connection = DBConnect.getConnection();
        String sql = "select * from customer where id=?";
        try {
            PreparedStatement ps=connection.prepareCall(sql);
            ps.setInt(1, ID);
            ResultSet rs=ps.executeQuery();
            if(rs.next())
            {
                return new Customer(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12));
            }
        } catch (Exception e) {
        }
        return null;
    }
  
}
