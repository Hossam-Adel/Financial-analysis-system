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
 * Servlet implementation class Signup
 */
@WebServlet("/signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Signup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		User user = new User();
		user.setLname(request.getParameter("last"));
		user.setFname(request.getParameter("name"));
		user.setEmail(request.getParameter("mail"));
		user.setPassword(request.getParameter("pass"));
		user.setCountry(request.getParameter("country"));
		user.setJob(request.getParameter("type"));
		user.setType(1);
		model.Signup sign = new model.Signup();
		Mail email = new Mail();
		email.send_mail(user.getEmail(),"Your account has been created successfuly");
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
