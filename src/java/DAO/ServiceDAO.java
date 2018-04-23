/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import util.DBConnect;

/**
 *
 * @author zeddh
 */
public class ServiceDAO {
    public int count(){
    int num=0;
    try{
        Connection connection = DBConnect.getConnection();
        Statement st = connection.createStatement();
        ResultSet rs3 = st.executeQuery("SELECT COUNT(*) as count from service");
        while(rs3.next()){
            num = rs3.getInt("count");
        }
    } catch (SQLException e){
        e.printStackTrace();
    }   
    return num;
}  
}
