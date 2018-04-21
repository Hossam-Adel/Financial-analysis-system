package controller;

import java.io.IOException;

import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Mail;

/**
 * Servlet implementation class Forgotpass
 */
@WebServlet("/forgotpass")
public class Forgotpass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Forgotpass() {
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
		String email = request.getParameter("mail");
		String message="Thank you for submitting your request, follow the link below to reset you password";
		Mail mail = new Mail();
		try {
			boolean check = mail.check_email(email);
			if(check==true){
				mail.send_mail(email, message);
				String message2 = "message sent successfully ";
				request.setAttribute("message", message2);
				request.getRequestDispatcher("forgotpass.jsp").forward(request, response);
			}else{
				String message2 = "invalid email";
				request.setAttribute("message", message2);
				request.getRequestDispatcher("forgotpass.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
