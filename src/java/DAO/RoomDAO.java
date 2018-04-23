/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import entity.Room;
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
public class RoomDAO {
    public ArrayList<Room> getListRooms() throws SQLException{
        Connection connection = DBConnect.getConnection();
        String sql = "select * from room";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Room> list = new ArrayList<>();
        while (rs.next()) {
            Room r=new Room();
            r.setID(rs.getInt("id"));
            r.setIdTypeRoom(rs.getInt("id_typeroom"));
            r.setCode(rs.getString("code"));
            r.setName(rs.getString("name"));
            r.setAddress(rs.getString("address"));
            r.setState(rs.getInt("state"));
            r.setStatus(rs.getBoolean("status"));
            list.add(r);

        }
        return list;
    }
    public static Room getRoom(int id) throws SQLException{
         Connection connection = DBConnect.getConnection();
        String sql = "select * from room where id='"+id+"'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        Room room=new Room();
        while (rs.next()) {            
            room.setID(rs.getInt("id"));
            room.setIdTypeRoom(rs.getInt("id_typeroom"));
            room.setCode(rs.getString("code"));
            room.setName(rs.getString("name"));
            room.setAddress(rs.getString("address"));
            room.setState(rs.getInt("state"));
            room.setStatus(rs.getBoolean("status")); 
        }
        return room;
    }
    public int count(){
    int num=0;
    try{
        Connection connection = DBConnect.getConnection();
        Statement st = connection.createStatement();
        ResultSet rs3 = st.executeQuery("SELECT COUNT(*) as count from room");
        while(rs3.next()){
            num = rs3.getInt("count");
        }
    } catch (SQLException e){
        e.printStackTrace();
    }   
    return num;
}  
}
