package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;

import dto.Firm;


public class Listing {
	public ArrayList<Firm> list(String country,String date) throws SQLException, ParseException{
		Connector f = new Connector();
		Connection conn = f.connect();
		ArrayList<Firm> al = new ArrayList<Firm>();
		StockDAO sd = new StockDAO();
		String open_prices ="select * from firm where market=?";
		PreparedStatement ps = conn.prepareStatement(open_prices);
		ps.setString(1, country);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			Firm firm = new Firm();
			firm.setId(rs.getInt("id"));
			firm.setName(rs.getString("name"));
			firm.setMarket(rs.getString("market"));
			firm.setUrl(rs.getString("url"));
			firm.setBeta(rs.getDouble("beta"));
			firm.setIntro(rs.getString("intro"));
        	firm.setDividends(rs.getDouble("dividend"));
        	firm.setSector(rs.getString("industry"));
        	firm.setStock(sd.stock_firm(rs.getInt("id"), date));
        	al.add(firm);
		}
		return al;
	}
	
}
