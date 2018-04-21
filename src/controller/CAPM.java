package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Equations;

/**
 * Servlet implementation class CAPM
 */
@WebServlet("/capm")
public class CAPM extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CAPM() {
        super();
        // TODO Auto-generated constructor stub
    }

//	/**
//	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
//	 */
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		RequestDispatcher rd = request.getRequestDispatcher("CAPM.jsp");
//		 rd.forward(request, response);
//		
//	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		double rf = Double.parseDouble(request.getParameter("rf"));
		double beta =Double.parseDouble(request.getParameter("ib"));
		double rm = Double.parseDouble(request.getParameter("rm"));
		Equations eqn = new Equations();
		String result= Double.toString(eqn.capm(rf, beta, rm));
		System.out.println(result);
		request.setAttribute("CAPM", result);
		request.getRequestDispatcher("CAPM.jsp").forward(request, response);
		
	}

}
