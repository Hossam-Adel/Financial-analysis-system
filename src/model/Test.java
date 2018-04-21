package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;





public class Test {

	public static void main(String[] args) throws SQLException, ParseException {
		
		Historical hist  = new Historical();
		
		System.out.println(get_firm_id("Juhayna"));
	}
	public static String get_firm_id(String name) throws SQLException{
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
		
	public static String last_day_month(String date) throws ParseException{
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date convertedDate = dateFormat.parse(date);
		System.out.println(convertedDate);
		Calendar c = Calendar.getInstance();
		c.setTime(convertedDate);
		c.set(Calendar.DAY_OF_MONTH, c.getActualMaximum(Calendar.DAY_OF_MONTH));
		return dateFormat.format(c.getTime());
		}
	public static String prev_day(String date) throws ParseException {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date d = dateFormat.parse(date);
		return dateFormat.format(subtractDay(d));

	}
	public static Date subtractDay(Date date) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		cal.add(Calendar.DAY_OF_MONTH, -1);
		return cal.getTime();
	}
	
	public static String last_day_year(String date) throws ParseException{
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date convertedDate = dateFormat.parse(date);
		System.out.println(convertedDate);
		Calendar c = Calendar.getInstance();
		c.setTime(convertedDate);
		c.set(Calendar.DAY_OF_YEAR, c.getActualMaximum(Calendar.DAY_OF_YEAR));
		return dateFormat.format(c.getTime());
		}
}
