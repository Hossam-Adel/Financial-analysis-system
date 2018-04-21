package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Equations;

/**
 * Servlet implementation class Profitablity
 */
@WebServlet("/profitablity")
public class Profitablity extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Profitablity() {
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
		double sales = Double.parseDouble(request.getParameter("sales"));
		double cogs =Double.parseDouble(request.getParameter("cogs"));
		double op = Double.parseDouble(request.getParameter("op"));
		double ni =Double.parseDouble(request.getParameter("ni"));
		double assets = Double.parseDouble(request.getParameter("assets"));
		double equity = Double.parseDouble(request.getParameter("equity"));
		System.out.println(sales);
		
		double gross_profit_margin = Equations.round((sales-cogs)/sales, 2);
		double operating_profit_margin =Equations.round(op/sales, 2);
		double net_profit_margin = Equations.round(ni/sales, 2);
		double ROA = Equations.round(ni/assets, 2);
		double ROE =Equations.round(ni/equity, 2);
		
		request.setAttribute("gross_profit_margin", gross_profit_margin);
		request.setAttribute("operating_profit_margin", operating_profit_margin);
		request.setAttribute("net_profit_margin", net_profit_margin);
		request.setAttribute("ROA", ROA);
		request.setAttribute("ROE", ROE);
		request.getRequestDispatcher("ratios.jsp").forward(request, response);
	}

}
