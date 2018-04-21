package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.text.ParseException;

import java.util.ArrayList;

import dto.Stock;


public class Historical {
	public ArrayList<Stock> historical_price(String symbol,String start_date ,String end_date) throws SQLException, ParseException{
		Connector f = new Connector();
		Connection conn = f.connect();
		StockDAO sdao = new StockDAO();
		Dates d = new Dates();
		ArrayList<Stock> al = new ArrayList<Stock>();
		String open_prices ="select symbol, price , hour, day from stock_day where symbol=? && day>=? AND day<=? group by day ";
		PreparedStatement ps = conn.prepareStatement(open_prices);
		ps.setString(1, symbol);
		ps.setString(2, start_date);
		ps.setString(3, end_date);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			Stock stock = new Stock();
			stock.setOpen(rs.getDouble("price"));
			stock.setDay(rs.getString("day"));
			stock.setSymbol(symbol);
			stock.setClose(sdao.close_price(symbol,stock.getDay()));
			stock.setHigh(sdao.day_highest(symbol,stock.getDay()));
			stock.setLow(sdao.day_lowest(symbol,stock.getDay()));
			stock.setPrev_close(sdao.previos_close(stock.getSymbol(),d.prev_day(stock.getDay())));
			al.add(stock);

		}
		
		return al;
    }
	public ArrayList<Stock> monthly_price(String symbol,String start_date ,String end_date) throws SQLException, ParseException{
		Connector f = new Connector();
		Connection conn = f.connect();
		StockDAO sdao = new StockDAO();
		Dates d = new Dates();
		ArrayList<Stock> al = new ArrayList<Stock>();
		String open_prices ="select symbol, price , hour, day from stock_day where symbol=? && day>=? AND day<=? group by day ";
		PreparedStatement ps = conn.prepareStatement(open_prices);
		ps.setString(1, symbol);
		ps.setString(2, start_date);
		ps.setString(3, end_date);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			String end_of_month = Dates.last_day_month(rs.getString("day"));
			boolean after =Dates.compare_dates(end_of_month,end_date);
			System.out.println(after+""+end_of_month+""+end_date);
			if(end_of_month.equals(rs.getString("day")) && after == false){
				Stock stock = new Stock();
				stock.setOpen(rs.getDouble("price"));
				stock.setDay(rs.getString("day"));
				stock.setSymbol(symbol);
				stock.setClose(sdao.close_price(symbol,stock.getDay()));
				stock.setHigh(sdao.day_highest(symbol,stock.getDay()));
				stock.setLow(sdao.day_lowest(symbol,stock.getDay()));
				stock.setPrev_close(sdao.previos_close(stock.getSymbol(),d.prev_day(stock.getDay())));
				al.add(stock);
			}
		}
		return al;
	}
	public ArrayList<Stock> yearly_price(String symbol,String start_date ,String end_date) throws SQLException, ParseException{
		Connector f = new Connector();
		Connection conn = f.connect();
		StockDAO sdao = new StockDAO();
		Dates d = new Dates();
		ArrayList<Stock> al = new ArrayList<Stock>();
		String open_prices ="select symbol, price , hour, day from stock_day where symbol=? && day>=? AND day<=? group by day ";
		PreparedStatement ps = conn.prepareStatement(open_prices);
		ps.setString(1, symbol);
		ps.setString(2, start_date);
		ps.setString(3, end_date);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			String end_of_year = Dates.last_day_year(rs.getString("day"));
			boolean after =Dates.compare_dates(end_of_year,end_date);
			System.out.println(after+""+end_of_year+""+end_date);
			if(end_of_year.equals(rs.getString("day")) && after == false){
				Stock stock = new Stock();
				stock.setOpen(rs.getDouble("price"));
				stock.setDay(rs.getString("day"));
				stock.setSymbol(symbol);
				stock.setClose(sdao.close_price(symbol,stock.getDay()));
				stock.setHigh(sdao.day_highest(symbol,stock.getDay()));
				stock.setLow(sdao.day_lowest(symbol,stock.getDay()));
				stock.setPrev_close(sdao.previos_close(stock.getSymbol(),d.prev_day(stock.getDay())));
				al.add(stock);
			}
		}
		return al;
	}
}