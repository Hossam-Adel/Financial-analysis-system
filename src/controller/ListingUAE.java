package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Dates;
import dto.Firm;

/**
 * Servlet implementation class ListingUAE
 */
@WebServlet("/listingUAE")
public class ListingUAE extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListingUAE() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Dates d = new Dates();
		 model.Listing list = new model.Listing();
		 
		 try {
			 Boolean j = d.check_time();
	        	if( j== true){
	        		ArrayList<Firm> al = list.list("UAE",d.today_date());
	        		request.setAttribute("list", al);
	        	}else{
	        		
	        		ArrayList<Firm> al = list.list("UAE",d.prev_day(d.today_date()));
	        		request.setAttribute("list", al);
	        	}
			
			
		} catch (SQLException | ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 RequestDispatcher rd = request.getRequestDispatcher("listing-uae.jsp");
		 rd.forward(request, response); 
	}

}
