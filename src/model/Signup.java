package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dto.User;

public class Signup {
	public void add_user(User user) throws SQLException{
		Connector f = new Connector();
		Connection conn = f.connect();
		String query = "insert into user (fname,password,email,type,country,job,lname)values(?,?,?,?,?,?,?)";
		PreparedStatement fn = conn.prepareStatement(query);
		fn.setString(1, user.getFname() );
		fn.setString(2, user.getPassword());
		fn.setString(3, user.getEmail());
		fn.setInt(4, user.getType());
		fn.setString(5, user.getCountry());
		fn.setString(6, user.getJob());
		fn.setString(7, user.getLname());
		fn.executeUpdate();
	}
}
