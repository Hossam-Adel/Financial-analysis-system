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

import dto.User;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		User user = new User();
		response.setContentType("text/html");
		String email = request.getParameter("uid");
		System.out.println(email);
		String password = request.getParameter("pwd");
		System.out.println(password);
		model.Logincheck check = new model.Logincheck();
		try {
			user = check.login(email, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (user == null) {
			System.out.println("null");
			String message2 = "invalid login info";
			request.setAttribute("message", message2);
			request.getRequestDispatcher("Login.jsp")
					.forward(request, response);

		} else {

			System.out.println("not null");
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			RequestDispatcher rd = request.getRequestDispatcher("watchlist");
			rd.forward(request,response);

			//
			// out.println("Logged in successfully");

		}

	}
}
