package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Mail;
import dto.User;

/**
 * Servlet implementation class Createflaccount
 */
@WebServlet("/createflaccount")
public class Createflaccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Createflaccount() {
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
		String name = request.getParameter("name");
		String last = request.getParameter("last");
		String mail = request.getParameter("mail");
		String pass = request.getParameter("pass");
		String type = request.getParameter("type");
		String country = request.getParameter("country");
		
		User user = new User();
		user.setFname(name);
		user.setLname(last);
		user.setEmail(mail);
		user.setPassword(pass);
		user.setJob(type);
		user.setCountry(country);
		user.setType(2);
		
		model.Signup sign = new model.Signup();
		Mail email = new Mail();
		email.send_mail(mail, "your account has been submited successfuly");
		try {
			sign.add_user(user);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		session.setAttribute("user", user);
		RequestDispatcher rd = request.getRequestDispatcher("watchlist");
		rd.forward(request,response);
	}

}
