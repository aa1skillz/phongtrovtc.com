/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import entity.TypeRoom;
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
public class TypeRoomDAO {
    public ArrayList<TypeRoom> getListTypeRooms() throws SQLException{
        Connection connection = DBConnect.getConnection();
        String sql = "select * from type_room";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<TypeRoom> list = new ArrayList<>();
        while (rs.next()) {
            TypeRoom tr=new TypeRoom();
            tr.setID(rs.getInt("id"));
            tr.setTypes(rs.getString("types"));
            tr.setPrice(rs.getDouble("price"));
            tr.setPostion(rs.getString("postion"));
            
            
            list.add(tr);

        }
        return list;
    }
}
