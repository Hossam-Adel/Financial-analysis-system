package dto;



public class Stock {
	String symbol ; int numberofshares ; double high,low , open , close ,prev_close ; String day;

	public String getSymbol() {
		return symbol;
	}

	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}

	public int getNumberofshares() {
		return numberofshares;
	}

	public void setNumberofshares(int numberofshares) {
		this.numberofshares = numberofshares;
	}

	public double getHigh() {
		return high;
	}

	public void setHigh(double high) {
		this.high = high;
	}

	public double getLow() {
		return low;
	}

	public void setLow(double low) {
		this.low = low;
	}

	public double getOpen() {
		return open;
	}

	public void setOpen(double open) {
		this.open = open;
	}

	public double getClose() {
		return close;
	}

	public void setClose(double close) {
		this.close = close;
	}

	public double getPrev_close() {
		return prev_close;
	}

	public void setPrev_close(double prev_close) {
		this.prev_close = prev_close;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}
	
}