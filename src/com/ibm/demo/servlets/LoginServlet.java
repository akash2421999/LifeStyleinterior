package com.ibm.demo.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ibm.demo.models.LoginModel;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("user");
		String pass = request.getParameter("pass");
		


		LoginModel lm = new LoginModel();
		ArrayList list = lm.getRecords(name, pass);
		String user1=(String) list.get(1);
		HttpSession session = request.getSession(true);

		if (!list.isEmpty()) {
			session.setAttribute("user", user1);
			session.setAttribute("email", name);
			RequestDispatcher rd = request.getRequestDispatcher("userpage.jsp");

			rd.forward(request, response);
			// response.sendRedirect("welcome.jsp");
		} else {
			request.setAttribute("msg", "Invalid User");
			RequestDispatcher rd = request.getRequestDispatcher("userlogin.jsp");
			rd.forward(request, response);
//			response.sendRedirect("error.jsp");
		}

	}

	

}
