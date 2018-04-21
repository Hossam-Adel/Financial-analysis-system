package model;
import java.math.BigDecimal;
import java.math.RoundingMode;

import dto.BalanceSheet;
import dto.IncomeStatement;
import dto.Stock;

public class Equations {


	public double current_ratio(BalanceSheet balsheet) {
		double current_ratio = balsheet.getTotal_current_assets() / balsheet.getTotal_current_liabilites();
		return round(current_ratio,2);
	}

	public double quick_ratio(BalanceSheet balsheet){
		double quick_ratio = (balsheet.getTotal_current_assets()- balsheet.getInventory()) / balsheet.getTotal_current_liabilites();
		return round(quick_ratio,2);
	}

	public double inventory_turnover(BalanceSheet balsheet,IncomeStatement income) {
		double inventory_turnover = income.getCost_of_goods() / balsheet.getInventory();
		return round(inventory_turnover,1);
	}

	public double avg_age_of_inventory(BalanceSheet balsheet,IncomeStatement income) {
		double avg_age_of_inventory = 365 / inventory_turnover(balsheet,income);
		return round(avg_age_of_inventory,1);
	}

	public double avg_collection_period(BalanceSheet balsheet,IncomeStatement income) {
		double x = (income.getSales() / 365);
		double avg_collection_period = balsheet.getAcc_receivable() /x ;
		return round(avg_collection_period,2);
	}

	public double avg_payment_period(BalanceSheet balsheet) {
		double avg_payment_period = balsheet.getAcc_payable() / (balsheet.getPurchases() / 365);
		return round(avg_payment_period,2);
	}

	public double total_assets_turn_over(BalanceSheet balsheet,IncomeStatement income) {
		double total_assets_turn_over = income.getSales() / (balsheet.getTotal_current_assets()+balsheet.getNet_fixed_assets());
		return round(total_assets_turn_over,2);
	}

	public double debt_ratio(BalanceSheet balsheet) {
		double debt_ratio = (balsheet.getTotal_current_liabilites()+balsheet.getLong_term_debts()) / (balsheet.getTotal_current_assets()+balsheet.getNet_fixed_assets());
		return round(debt_ratio,3);

	}

	public double times_interest_earned_ratio(IncomeStatement income) {
		double times_interest_earned_ratio = income.getEbit() / income.getInterest_expenses();
		return round(times_interest_earned_ratio,3);
	}

	public double fixd_payment_coverage_ratio(IncomeStatement income) {
		double fixd_payment_coverage_ratio =( income.getEbit() + income.getLease_payment()) / 
		(income.getInterest_expenses() + income.getLease_payment() + ((income.getPrincipal_payment()+ income.getPreferred_stock_dividends()) * (1 / (1 - income.getTax())))) ;
		return round(fixd_payment_coverage_ratio,2);
	}
	public double gross_profit_margin(IncomeStatement income) {
		double gross_profit_margin = income.getGross_profit() / income.getSales();
		return round(gross_profit_margin,2);
	}

	public double operating_profit_margin(IncomeStatement income) {
		double operating_profit_margin = income.getEbit() / income.getSales();
		return round(operating_profit_margin,2);
	}

	public double net_profit_margin(IncomeStatement income) {
		double net_profit_margin = income.getEarning_available_for_cs() / income.getSales();
		return round(net_profit_margin,2);
	}
	public double return_on_total_assets (IncomeStatement income, BalanceSheet balsheet){
		double return_on_total_assets = income.getEarning_available_for_cs() /(balsheet.getNet_fixed_assets()+balsheet.getTotal_current_assets());
		return round(return_on_total_assets,2);
	}
	public double return_on_equity(IncomeStatement income,BalanceSheet balsheet){
		double return_on_equity = income.getEarning_available_for_cs()/(balsheet.getTotal_stockholders_equity()-balsheet.getPreferred_stocks());
		return round(return_on_equity,2);
		}
	public double price_earning_ratio(BalanceSheet balsheet,IncomeStatement income,Stock stock){
		double earning_per_share = income.getEarning_available_for_cs()/stock.getNumberofshares();
		double price_earning_ratio = balsheet.getCommon_stock()/ earning_per_share;
		return round( price_earning_ratio,2);
	}
	public double earning_per_share(IncomeStatement income , Stock stock){
		double earning_per_share = income.getEarning_available_for_cs()/stock.getNumberofshares();
		return round(earning_per_share,2);
	}
	public double price_book_value(BalanceSheet balsheet, Stock stock){
		double book_value_per_share = (balsheet.getTotal_stockholders_equity()-balsheet.getPreferred_stocks())/stock.getNumberofshares();
		double price_book_value = balsheet.getCommon_stock()/book_value_per_share;
		return round(price_book_value,2);
	}
	public double dividends_yield_ratio(BalanceSheet balsheet, Stock stock){
		double dividends_per_share = balsheet.getDividends_paid()/stock.getNumberofshares() ;
		double dividends_yield_ratio = dividends_per_share/balsheet.getCommon_stock();
		return round(dividends_yield_ratio,2);
	}
	public double capm(double rf, double beta , double rm){
		double capm = rf+(beta*(rm-rf));
		return capm;
	}
	
	
	public static double round(double value, int places) {
	    if (places < 0) throw new IllegalArgumentException();

	    BigDecimal bd = new BigDecimal(value);
	    bd = bd.setScale(places, RoundingMode.HALF_UP);
	    return bd.doubleValue();
	}
}






