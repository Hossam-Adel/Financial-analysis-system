package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;




import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Dates;
import model.FirmDAO;
import model.Historical;
import dto.Firm;
import dto.Stock;

/**
 * Servlet implementation class FirmHistorica
 */
@WebServlet("/firmhistorica")
public class FirmHistorica extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FirmHistorica() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	try {
			int id= Integer.parseInt(request.getParameter("id"));
			Firm firm = new Firm();
			FirmDAO fp = new FirmDAO();
			Dates d = new Dates();
			firm= fp.profile(id,d.today_date());
			request.setAttribute("firm", firm);
			request.getRequestDispatcher("firmhistorical.jsp").forward(request, response);
		} catch (SQLException | ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Historical his = new Historical();
		Dates d = new Dates();
		ArrayList<Stock> al = new ArrayList<Stock>();
		String symbol = request.getParameter("stock");
		System.out.println(symbol+"3");
		int id= Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		String sdate,edate;
		FirmDAO fp = new FirmDAO();
		try {
			String time_frame= request.getParameter("time");
			Firm firm = fp.profile(id,d.today_date());
			sdate = d.date_format(request.getParameter("sdate"));
			edate = d.date_format(request.getParameter("edate"));
			if(time_frame.equals("daily")){
				System.out.println("hello daily");
				al = his.historical_price(symbol,sdate,edate);
				if(al==null){
					doGet(request,response);
				}else{
				request.setAttribute("Array", al);
				request.setAttribute("firm", firm);
				request.getRequestDispatcher("firmhistoricalresult.jsp").forward(request, response);
				}
				}else if(time_frame.equals("monthly")){
					System.out.println("hello monthly");
					al = his.monthly_price(symbol, sdate, edate);
					if(al==null){
						doGet(request,response);
					}else{
					request.setAttribute("firm", firm);
					request.setAttribute("Array", al);
					request.getRequestDispatcher("firmhistoricalresult.jsp").forward(request, response);
					}
				}else if(time_frame.equals("yearly")){
					System.out.println("hello yearly");
					al = his.yearly_price(symbol, sdate, edate);
					if(al==null){
						doGet(request,response);
					}else{
					request.setAttribute("firm", firm);
					request.setAttribute("Array", al);
					request.getRequestDispatcher("firmhistoricalresult.jsp").forward(request, response);
					}
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
