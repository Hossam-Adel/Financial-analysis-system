package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dto.Firm;

public class Search {
	public ArrayList<Firm> serach_beta(double beta1, double beta2) throws SQLException{
		Connector f = new Connector();
		Connection conn = f.connect();
		String query = "select * from firm where beta>=? && beta<=?";
		PreparedStatement fn = conn.prepareStatement(query);
		fn.setDouble(1, beta1);
		fn.setDouble(2, beta2);
		ResultSet rs = fn.executeQuery();
		ArrayList<Firm> al = new ArrayList<Firm>();
		while (rs.next()) {
			Firm firm = new Firm();
			firm.setId(rs.getInt("id"));
			firm.setName(rs.getString("name"));
			firm.setMarket(rs.getString("market"));
			firm.setBeta(rs.getDouble("beta"));
			firm.setSector(rs.getString("industry"));
			al.add(firm);
		}
		return al;
	}
}
