package dto;

public class IncomeStatement {
	double sales,cost_of_goods , gross_profit ,  ebit , interest_expenses ,  
	tax , preferred_stock_dividends , earning_available_for_cs ,lease_payment,principal_payment;

	public double getSales() {
		return sales;
	}

	public void setSales(double sales) {
		this.sales = sales;
	}

	public double getCost_of_goods() {
		return cost_of_goods;
	}

	public void setCost_of_goods(double cost_of_goods) {
		this.cost_of_goods = cost_of_goods;
	}

	public double getGross_profit() {
		return gross_profit;
	}

	public void setGross_profit(double gross_profit) {
		this.gross_profit = gross_profit;
	}

	public double getEbit() {
		return ebit;
	}

	public void setEbit(double ebit) {
		this.ebit = ebit;
	}

	public double getInterest_expenses() {
		return interest_expenses;
	}

	public void setInterest_expenses(double interest_expenses) {
		this.interest_expenses = interest_expenses;
	}

	public double getTax() {
		return tax;
	}

	public void setTax(double tax) {
		this.tax = tax;
	}

	public double getPreferred_stock_dividends() {
		return preferred_stock_dividends;
	}

	public void setPreferred_stock_dividends(double preferred_stock_dividends) {
		this.preferred_stock_dividends = preferred_stock_dividends;
	}

	public double getEarning_available_for_cs() {
		return earning_available_for_cs;
	}

	public void setEarning_available_for_cs(double earning_available_for_cs) {
		this.earning_available_for_cs = earning_available_for_cs;
	}

	public double getLease_payment() {
		return lease_payment;
	}

	public void setLease_payment(double lease_payment) {
		this.lease_payment = lease_payment;
	}

	public double getPrincipal_payment() {
		return principal_payment;
	}

	public void setPrincipal_payment(double principal_payment) {
		this.principal_payment = principal_payment;
	}
}
