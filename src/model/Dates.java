package model;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;


public class Dates {
	public Date subtractDay(Date date) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		cal.add(Calendar.DAY_OF_MONTH, -1);
		return cal.getTime();
	}
	

	public String prev_day(String date) throws ParseException {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date d = dateFormat.parse(date);
		return dateFormat.format(subtractDay(d));

	}

	public String today_date() {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		return dateFormat.format(date);
	}

	public String datedisplay(String date) throws ParseException {
		DateFormat dateFormat = new SimpleDateFormat("dd MMM yyyy");
		Date d = dateFormat.parse(date);
		return dateFormat.format((d));

	}

	public String date_format(String date) throws ParseException {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date d = dateFormat.parse(date);
		return dateFormat.format((d));

	}

	public boolean check_time() throws ParseException {
		Calendar cal = Calendar.getInstance();
		Boolean j;
		System.out.println(cal.get(Calendar.HOUR_OF_DAY));
		if(15<=cal.get(Calendar.HOUR_OF_DAY) ){
			j = true;
		}else{ 
			 j = false;
		}
		return j;
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
	public static boolean compare_dates(String date1, String date2) throws ParseException{
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date convertedDate1 = dateFormat.parse(date1);
		Date convertedDate2 = dateFormat.parse(date2);
		boolean after= false;
		if(convertedDate1.after(convertedDate2)){
			after=true;
			
		}else if(convertedDate1.before(convertedDate2)){
			after=false;
			
		}
		return after;
		
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
