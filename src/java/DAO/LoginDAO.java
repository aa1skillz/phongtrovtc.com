/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import entity.Users;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import util.DBConnect;

/**
 *
 * @author zeddh
 */
public class LoginDAO {
    public Users login(String email, String password) {
        Connection con = DBConnect.getConnection();
        String sql = "select * from user where email='" + email + "' and password='" + password + "'";
        PreparedStatement ps;
        try {
            ps = (PreparedStatement) con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Users u=new Users();
                u.setEmail(rs.getString("email"));
                u.setPassword(rs.getString("password"));
                u.setPhone(rs.getString("phone"));
                u.setStatus(rs.getBoolean("status"));
                con.close();
                return u;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    public int count(){
    int num=0;
    try{
        Connection connection = DBConnect.getConnection();
        Statement st = connection.createStatement();
        ResultSet rs3 = st.executeQuery("SELECT COUNT(*) as count from user");
        while(rs3.next()){
            num = rs3.getInt("count");
        }
    } catch (SQLException e){
        e.printStackTrace();
    }   
    return num;
}  
}
