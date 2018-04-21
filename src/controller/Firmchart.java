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
import model.StockDAO;
import dto.Firm;

/**
 * Servlet implementation class Firmchart
 */
@WebServlet("/firmchart")
public class Firmchart extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Firmchart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			int id= Integer.parseInt(request.getParameter("id"));
			Firm firm = new Firm();
			FirmDAO fp = new FirmDAO();
			Dates d = new Dates();
			firm= fp.profile(id,d.today_date());
			request.setAttribute("firm", firm);
			
			Historical hist  = new Historical();
			
				String StockObject = JsonConverter.getModel(hist.historical_price("JUFO.CA","2017-2-2", "2017-6-29"));

				System.out.println(StockObject);
				request.setAttribute("stock", StockObject);
				request.getRequestDispatcher("firmcharts.jsp").forward(request, response);
			
			
		} catch (SQLException | ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		doGet(request,response);
		
	}
}
