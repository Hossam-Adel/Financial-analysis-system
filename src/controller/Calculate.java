package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Equations;
import dto.BalanceSheet;

/**
 * Servlet implementation class Calculate
 */
@WebServlet("/calculate")
public class Calculate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Calculate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd = request.getRequestDispatcher("ratios.jsp");
		rd.forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		BalanceSheet balsheet = new BalanceSheet();
		Equations equations = new Equations();
		balsheet.setTotal_current_assets(Double.parseDouble(request.getParameter("current_assets")));
		balsheet.setTotal_current_liabilites(Double.parseDouble(request.getParameter("current_liabilities")));
		equations.current_ratio(balsheet);
		request.setAttribute("balance",balsheet);
		RequestDispatcher rd = request.getRequestDispatcher("/Result");
		rd.forward(request,response);
		
		
	}

}
