package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Dates;
import model.Historical;
import dto.Stock;

/**
 * Servlet implementation class Historica
 */
@WebServlet("/historica")
public class Historica extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Historica() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("historical.jsp");
		 rd.forward(request, response);
		 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Historical his = new Historical();
		Dates d = new Dates();
		ArrayList<Stock> al = new ArrayList<Stock>();
		String symbol = request.getParameter("stock");
		String sdate,edate;
		try {
		String time_frame= request.getParameter("time");
		System.out.println(time_frame);
		edate = d.date_format(request.getParameter("edate"));
		sdate = d.date_format(request.getParameter("sdate"));
			if(time_frame.equals("daily")){
			System.out.println("hello daily");
			al = his.historical_price(symbol,sdate,edate);
			request.setAttribute("Array", al);
			request.getRequestDispatcher("historicalresult.jsp").forward(request, response);
			}else if(time_frame.equals("monthly")){
				System.out.println("hello monthly");
				al = his.monthly_price(symbol, sdate, edate);
				request.setAttribute("Array", al);
				request.getRequestDispatcher("historicalresult.jsp").forward(request, response);
			}else if(time_frame.equals("yearly")){
				System.out.println("hello yearly");
				al = his.yearly_price(symbol, sdate, edate);
				request.setAttribute("Array", al);
				request.getRequestDispatcher("historicalresult.jsp").forward(request, response);
			}
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		 catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
	}
	}

}
