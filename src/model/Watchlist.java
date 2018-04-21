package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dto.Firm;
import dto.Ratios;

public class Watchlist {
	public int add_Stock(String symbol, int user_id) throws SQLException {
		Connector f = new Connector();
		Connection conn = f.connect();
		String query = "insert into user_stock values(?,?)";
		PreparedStatement fn = conn.prepareStatement(query);
		fn.setInt(1, user_id);
		fn.setString(2, symbol);
		int i = fn.executeUpdate();

		return i;

	}

	public int remove_Stock(String symbol, int user_id) throws SQLException {
		Connector f = new Connector();
		Connection conn = f.connect();
		String query = "delete from user_stock where user=? && stock=?";
		PreparedStatement fn = conn.prepareStatement(query);
		fn.setInt(1, user_id);
		fn.setString(2, symbol);
		int i = fn.executeUpdate();

		return i;

	}

	public ArrayList<Firm> get_holdings(int user_id) throws SQLException {
		Connector f = new Connector();
		Connection conn = f.connect();
		String query = "SELECT * from user_Stock right join firm on user_stock.share= firm.stock where user=?";
		PreparedStatement fn = conn.prepareStatement(query);
		fn.setInt(1, user_id);
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

	public ArrayList<Ratios> percentage(int user_id) throws SQLException{
		Connector f = new Connector();
		Connection conn = f.connect();
		String query ="select industry from user_stock right join firm on user_stock.share =firm.stock where user =?";
		PreparedStatement fn = conn.prepareStatement(query);
		fn.setInt(1, user_id);
		ArrayList<Ratios> al = new ArrayList<Ratios>();
		ResultSet rs = fn.executeQuery();
		int food=0,constructions=0;
		Ratios  ratio = new Ratios();
		Ratios ratio2 = new Ratios();
		while (rs.next()) {
			String x=rs.getString("industry");
			if(x.equals("food")){
				food+=1;
				ratio.setIndustry(rs.getString("industry"));
				ratio.setNumber(food);
			}else if(x.equals("constructions")){
				constructions+=1;
				ratio2.setIndustry(rs.getString("industry"));
				ratio2.setNumber(constructions);
			}	
		}
		al.add(ratio);
		al.add(ratio2);
		return al;
	}
	
}
