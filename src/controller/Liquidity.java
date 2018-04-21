package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Equations;

/**
 * Servlet implementation class Liquidity
 */
@WebServlet("/liquidity")
public class Liquidity extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Liquidity() {
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
		double ca = Double.parseDouble(request.getParameter("ca"));
		double cl = Double.parseDouble(request.getParameter("cl"));
		double ta = Double.parseDouble(request.getParameter("ta"));
		double tl = Double.parseDouble(request.getParameter("tl"));
		double inv = Double.parseDouble(request.getParameter("inv"));
		
		double current_ratio = Equations.round(ca/cl, 2);
		double quick_ratio = Equations.round((ca-inv)/cl, 2);
		
		request.setAttribute("current_ratio", current_ratio);
		request.setAttribute("quick_ratio", quick_ratio);
		request.getRequestDispatcher("ratios.jsp").forward(request, response);
	}

}
