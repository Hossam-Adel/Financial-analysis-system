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
import dto.Firm;

/**
 * Servlet implementation class Financials
 */
@WebServlet("/financials")
public class Financials extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Financials() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Firm firm = new Firm();
		Dates d = new Dates();
		FirmDAO fp = new FirmDAO();
		int id= Integer.parseInt(request.getParameter("id"));
		try {
			firm= fp.profile(id,d.today_date());
			request.setAttribute("firm", firm);
			request.getRequestDispatcher("firmfinancials.jsp").forward(request, response);
			
			} catch (SQLException | ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
