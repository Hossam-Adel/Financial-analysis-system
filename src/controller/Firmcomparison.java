package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Dates;
import model.FirmDAO;
import model.Historical;
import model.JsonConverter;
import dto.Firm;

/**
 * Servlet implementation class Firmcomparison
 */
@WebServlet("/firmcomparison")
public class Firmcomparison extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Firmcomparison() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			int id = Integer.parseInt(request.getParameter("id"));
			System.out.println(id);
			String desired_firm= request.getParameter("compare");
			System.out.println(desired_firm);
//			String symbol = request.getParameter("symbol");
			Firm firm = new Firm();
			FirmDAO fp = new FirmDAO();
			Dates d = new Dates();
			String desired_symbol =fp.get_firm_id(desired_firm);
			System.out.println(desired_symbol);
			firm= fp.profile(id,d.today_date());
			request.setAttribute("firm", firm);
			
			Historical hist  = new Historical();
			
				String StockObject = JsonConverter.getModel(hist.historical_price(firm.getStock().getSymbol(),"2017-2-2", "2017-6-29"));
				String StockObject2 = JsonConverter.getModel(hist.historical_price("JUFO.CA","2017-2-2", "2017-6-29"));

				System.out.println("hello post");
				System.out.println("original firm"+ StockObject);
				System.out.println("desired firm"+StockObject2);
				request.setAttribute("stock", StockObject);
				request.setAttribute("stock2", StockObject2);
				request.getRequestDispatcher("firmchartsresult.jsp").forward(request, response);
			
			
		} catch (SQLException | ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
