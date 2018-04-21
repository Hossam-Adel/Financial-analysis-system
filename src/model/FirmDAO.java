package model;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;

import dto.BalanceSheet;
import dto.Firm;
import dto.IncomeStatement;
import dto.Stock;
public class FirmDAO {
		public Firm profile(int id,String date) throws SQLException, ParseException{
			Connector f = new Connector();
			Connection conn = f.connect();
			String firm_name = "select * from firm where id= ?";
			PreparedStatement fn = conn.prepareStatement(firm_name);
			fn.setInt(1, id );
			ResultSet rs = fn.executeQuery();
			Firm firm = new Firm();
			while(rs.next()){
			
			firm.setId(id);
			firm.setName(rs.getString("name"));
			firm.setMarket(rs.getString("market"));
			firm.setUrl(rs.getString("url"));
			firm.setBeta(rs.getDouble("beta"));
			firm.setIntro(rs.getString("intro"));
        	firm.setDividends(rs.getDouble("dividend"));
        	firm.setSector(rs.getString("industry"));
			
			}
			StockDAO sd = new StockDAO();
			Stock stock = sd.stock_firm(id,date);
			firm.setStock(stock);
			BalanceSheet balsheet = firm_balsheet(id);
			firm.setBalsheet(balsheet);
			IncomeStatement ic = firm_income(id);
			firm.setIncstat(ic);
			conn.close();
			rs.close();
			fn.close();			
			return firm;
			
			
		}
		
		public BalanceSheet firm_balsheet(int firm_id) throws SQLException{
			BalanceSheet balsheet = new BalanceSheet();
			Connector f = new Connector();
			Connection conn = f.connect();
			String bal = "Select*  from balancesheet where year=(select MAX(year) from balancesheet where firm_id=?)";
			PreparedStatement ps = conn.prepareStatement(bal);
			ps.setInt(1, firm_id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()){
				balsheet.setAcc_payable(rs.getDouble("acc_payable"));
				balsheet.setAcc_receivable(rs.getDouble("acc_payable"));
				balsheet.setCommon_stock(rs.getDouble("commonstock"));
				balsheet.setDividends_paid(rs.getDouble("commonstockdividends"));
				balsheet.setInventory(rs.getDouble("inventory"));
				balsheet.setLong_term_debts(rs.getDouble("longtermdebts"));
				balsheet.setNet_fixed_assets(rs.getDouble("fixedassets"));
				balsheet.setPreferred_stocks(rs.getDouble("preferredstocks"));
				balsheet.setPurchases(rs.getDouble("purchases"));
				balsheet.setTotal_current_assets(rs.getDouble("currentassets"));
				balsheet.setTotal_current_liabilites(rs.getDouble("currentliabilities"));
				balsheet.setTotal_stockholders_equity(rs.getDouble("totalstockholderequity"));
			}
			rs.close();
			ps.close();
			conn.close();
			return balsheet;
		}
		public IncomeStatement firm_income(int firm_id) throws SQLException{
			IncomeStatement inc = new IncomeStatement();
			Connector f = new Connector();
			Connection conn = f.connect();
			String bal = "Select*  from incomestatement where year=(select MAX(year) from incomestatement where firm_id=?)";
			PreparedStatement ps = conn.prepareStatement(bal);
			ps.setInt(1, firm_id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()){
				inc.setCost_of_goods(rs.getDouble("costofgoodssold"));
				inc.setEarning_available_for_cs(rs.getDouble("earningavailableforcs"));
				inc.setEbit(rs.getDouble("ebit"));
				inc.setGross_profit(rs.getDouble("grossprofit"));
				inc.setInterest_expenses(rs.getDouble("interestexpenses"));
				inc.setLease_payment(rs.getDouble("leasepayments"));
				inc.setPreferred_stock_dividends(rs.getDouble("preferredstockdividends"));
				inc.setPrincipal_payment(rs.getDouble("principalpayment"));
				inc.setSales(rs.getDouble("sales"));
				inc.setTax(rs.getDouble("taxes"));
				
			}
			rs.close();
			ps.close();
			conn.close();
			return inc;
		}
	public String get_firm_id(String name) throws SQLException{
		Connector f = new Connector();
		Connection conn = f.connect();
		String firm_name = "select stock from firm where name= ?";
		PreparedStatement fn = conn.prepareStatement(firm_name);
		fn.setString(1, name );
		ResultSet rs = fn.executeQuery();
		String id="";
		while(rs.next()){
			id= rs.getString("stock");
		}
		rs.close();
		fn.close();
		conn.close();
		return id;
	}
}
