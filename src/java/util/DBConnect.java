/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author zeddh
 */
public class DBConnect {
    public static Connection conn;
    public static Connection getConnection()
   {
        Connection conn=null;
        try {
           Class.forName("com.mysql.jdbc.Driver");
           conn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/phongtro","root","123456");
       } catch (Exception e) {
           e.printStackTrace();
       }
        return conn;
   }
    public ResultSet runSql(String sql) throws SQLException {
		Statement sta = conn.createStatement();
		return sta.executeQuery(sql);
	}
    
	public boolean runSql2(String sql) throws SQLException {
		Statement sta = conn.createStatement();
		return sta.execute(sql);
	}
 
	@Override
	protected void finalize() throws Throwable {
		if (conn != null || !conn.isClosed()) {
			conn.close();
		}
	}
    public static void main(String[] args) {
        System.out.println(getConnection());
    }
}