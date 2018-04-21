package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;


import dto.Stock;

public class StockDAO {
	public double close_price(String symbol, String date) throws SQLException{
		Connector f = new Connector();
		Connection conn = f.connect();
		String close_price ="select * from stock_day where hour =(select MAX(hour) from stock_day where day=?) && day=? && symbol=? ";
		PreparedStatement ps = conn.prepareStatement(close_price);
		ps.setString(1, date);
		ps.setString(2, date);
		ps.setString(3, symbol);
		ResultSet rs = ps.executeQuery();
		Double price=0.0 ;
		while(rs.next()){
			price=(rs.getDouble("price"));
		}
		return price;
	}
	public double open_price(String symbol, String date) throws SQLException{
		Connector f = new Connector();
		Connection conn = f.connect();
		String open_price  ="select * from stock_day where hour =(select MIN(hour) from stock_day where day=?) && day=? && symbol=? ";
		PreparedStatement ps2 = conn.prepareStatement(open_price);
		ps2.setString(1, date);
		ps2.setString(2, date);
		ps2.setString(3, symbol);
		ResultSet rs2 = ps2.executeQuery();
		double price=0;
		while(rs2.next()){
			price=(rs2.getDouble("price"));
		}
		conn.close();
		ps2.close();
		rs2.close();
		return price;
	}
	public double previos_close(String symbol, String date) throws SQLException, ParseException{
		Connector f = new Connector();
		Connection conn = f.connect();
		Dates d = new Dates();
		String previous_close = "select * from stock_day where hour =(select MAX(hour) from stock_day where day=?) && day=? && symbol=? ";
		
		PreparedStatement ps3 = conn.prepareStatement(previous_close);
		ps3.setString(1, d.prev_day(date));
		ps3.setString(2, d.prev_day(date));
		ps3.setString(3, symbol);
		ResultSet rs3 = ps3.executeQuery();
		double price=0;
		while(rs3.next()){
			price=(rs3.getDouble("price"));
		}
		conn.close();
		ps3.close();
		rs3.close();
		return price;
	}
	public double day_highest(String symbol, String date) throws SQLException{
		Connector f = new Connector();
		Connection conn = f.connect();
		String day_highest ="SELECT * FROM stock_day where price=(select MAX(price) from stock_day where day=?) && symbol=? && day=? ";     
		PreparedStatement ps3 = conn.prepareStatement(day_highest);
		ps3.setString(1, date);
		ps3.setString(2, symbol);
		ps3.setString(3, date);
		ResultSet rs3 = ps3.executeQuery();
		double price=0;
		while(rs3.next()){
			price = rs3.getDouble("price");
		}
		conn.close();
		ps3.close();
		rs3.close();
		return price;
	}
	public double day_lowest(String symbol, String date) throws SQLException{
		Connector f = new Connector();
		Connection conn = f.connect();
		String day_lowest ="SELECT * FROM `stock_day` where price=(select MIN(price) from stock_day where day=?) && symbol=? && day=? "; 
		PreparedStatement ps3 = conn.prepareStatement(day_lowest);
		ps3.setString(1, date);
		ps3.setString(2, symbol);
		ps3.setString(3, date);
		ResultSet rs3 = ps3.executeQuery();
		double price=0;
		while(rs3.next()){
			price=(rs3.getDouble("price"));
		}
		conn.close();
		ps3.close();
		rs3.close();
		return price;
	}
	
	public Stock stock_firm(int firm_id,String date) throws SQLException, ParseException{
		Connector f = new Connector();
		Connection conn = f.connect();
		
		String stock_symbol = "SELECT * from firm right join stock on firm.stock = stock.symbol where id=?";
		PreparedStatement ss = conn.prepareStatement(stock_symbol);
		ss.setInt(1,firm_id);
		ResultSet rs2 = ss.executeQuery();
		Stock stock = new Stock();
		while(rs2.next()){
			stock.setSymbol(rs2.getString("symbol"));
			stock.setNumberofshares(rs2.getInt("number"));	
		}
		stock.setClose(close_price(stock.getSymbol(),date));
		stock.setDay(date);
		stock.setHigh(day_highest(stock.getSymbol(),date));
		stock.setLow(day_lowest(stock.getSymbol(),date));
		stock.setOpen(open_price(stock.getSymbol(),date));
		stock.setPrev_close(previos_close(stock.getSymbol(),date));
		conn.close();
		ss.close();
		rs2.close();
		return stock;
	}
	public String firm_of_stock(String Symbol) throws SQLException{
		Connector f = new Connector();
		Connection conn = f.connect();
		
		String stock_symbol = "SELECT name from firm where symbol=?";
		PreparedStatement ss = conn.prepareStatement(stock_symbol);
		ss.setString(1,Symbol);
		ResultSet rs2 = ss.executeQuery();
		String name="";
		while(rs2.next()){
			name= rs2.getString("name");
		}
		return name;
	}
	

}
