package dto;

public class Firm {
	int id;
	String name, url, sector, intro, market;
	double beta, dividends;

	public double getDividends() {
		return dividends;
	}

	public void setDividends(double dividends) {
		this.dividends = dividends;
	}

	Stock stock;
	BalanceSheet balsheet;
	IncomeStatement incstat;

	public double getBeta() {
		return beta;
	}

	public void setBeta(double beta) {
		this.beta = beta;
	}

	public Stock getStock() {
		return stock;
	}

	public void setStock(Stock stock) {
		this.stock = stock;
	}

	public BalanceSheet getBalsheet() {
		return balsheet;
	}

	public void setBalsheet(BalanceSheet balsheet) {
		this.balsheet = balsheet;
	}

	public IncomeStatement getIncstat() {
		return incstat;
	}

	public void setIncstat(IncomeStatement incstat) {
		this.incstat = incstat;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getSector() {
		return sector;
	}

	public void setSector(String sector) {
		this.sector = sector;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public String getMarket() {
		return market;
	}

	public void setMarket(String market) {
		this.market = market;
	}
}
