package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Equations;

/**
 * Servlet implementation class Market
 */
@WebServlet("/market")
public class Market extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Market() {
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
		double mp = Double.parseDouble(request.getParameter("mp"));
		double ni = Double.parseDouble(request.getParameter("ni"));
		double ots = Double.parseDouble(request.getParameter("ots"));
		double eq = Double.parseDouble(request.getParameter("eq"));
		
		double eps = Equations.round(ni/ots, 2);
		double price_earning = Equations.round(mp/eps, 2);
		double book_value_per_share =Equations.round(eq/ots, 2);
		double market_to_book_ratio = Equations.round(mp/book_value_per_share, 2);
		
		request.setAttribute("eps", eps);
		request.setAttribute("price_earning", price_earning);
		request.setAttribute("book_value_per_share", book_value_per_share);
		request.setAttribute("market_to_book_ratio", market_to_book_ratio);
		request.getRequestDispatcher("ratios.jsp").forward(request, response);
		
	}

}
