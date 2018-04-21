package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Equations;

/**
 * Servlet implementation class NPV
 */
@WebServlet("/npv")
public class NPV extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NPV() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("npv.jsp");
		 rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Equations eqn = new Equations();
		double rate = Double.parseDouble(request.getParameter("discrate"));
		double init =Double.parseDouble(request.getParameter("intinv"));
		int years = Integer.parseInt(request.getParameter("lifep"));
		double total = 0;
		
		for(int i=0;i<years;i++){
			double cf = Double.parseDouble(request.getParameter("cashflow"+i));
			double ccf = cf/java.lang.Math.pow((1+rate), i+1) ;
			total = total + ccf;
			
		}
		double npv = total - init;
		double finalnpv = eqn.round(npv, 2);
		double pi = total/init;
		double finalpi = eqn.round(pi, 2);
		request.setAttribute("npv", finalnpv);
		request.setAttribute("pi", finalpi);
		request.getRequestDispatcher("npvresult.jsp").forward(request, response);
	}

}
