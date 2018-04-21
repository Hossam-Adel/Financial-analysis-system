package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Equations;

/**
 * Servlet implementation class Debt
 */
@WebServlet("/debt")
public class Debt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Debt() {
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
		double assets = Double.parseDouble(request.getParameter("assets"));
		double liab = Double.parseDouble(request.getParameter("assets"));
		double ebit = Double.parseDouble(request.getParameter("ebit"));
		double tax = Double.parseDouble(request.getParameter("tax"));
		
		System.out.println(assets);
		System.out.println(liab);
		System.out.println(ebit);
		System.out.println(tax);
		double debt_ratio = Equations.round( liab/assets ,2);
		double interest_coverage_ratio = Equations.round(ebit/tax, 2);
		System.out.println(debt_ratio);
		
		request.setAttribute("debt_ratio", debt_ratio);
		request.setAttribute("interest_coverage_ratio", interest_coverage_ratio);
		request.getRequestDispatcher("ratios.jsp").forward(request, response);
	}

}
