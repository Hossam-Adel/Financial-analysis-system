package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Counter {
	public int count(String page) throws SQLException{
		Connector f = new Connector();
		Connection conn = f.connect();
		String firm_name = "select * from counter where page=?";
		PreparedStatement fn = conn.prepareStatement(firm_name);
		fn.setString(1, page);
		int i = 0;
		ResultSet rs = fn.executeQuery();
		while(rs.next()){
			i = rs.getInt("count");
		}
		return i;
	}
	public int add_count(String page,int count) throws SQLException{
		Connector f = new Connector();
		Connection conn = f.connect();
		String firm_name = "update counter set count=count+? where page=?";
		PreparedStatement fn = conn.prepareStatement(firm_name);
		fn.setInt(1, count);
		fn.setString(2, page);
		int i = fn.executeUpdate();
		
		return i;
	}
	public int firm_count(int id) throws SQLException{
		Connector f = new Connector();
		Connection conn = f.connect();
		String firm_name = "update firm set views=views+1 where id=?";
		PreparedStatement fn = conn.prepareStatement(firm_name);
		fn.setInt(1, id);
		
		int i = fn.executeUpdate();
		
		return i;
	}
	
	
}
