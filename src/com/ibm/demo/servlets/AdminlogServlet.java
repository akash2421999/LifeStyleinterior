package com.ibm.demo.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ibm.demo.models.AdminModel;
import com.ibm.demo.models.LoginModel;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/AdminlogServlet")
public class AdminlogServlet extends HttpServlet {

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

		AdminModel lm = new AdminModel();
		ArrayList list = lm.getRecords(name, pass);

		HttpSession session = request.getSession();

		if (!list.isEmpty()) {
			session.setAttribute("user", name);
			RequestDispatcher rd = request.getRequestDispatcher("adminpage.jsp");
			rd.forward(request, response);
			// response.sendRedirect("welcome.jsp");
		} else {
			request.setAttribute("msg", "Invalid User");
			RequestDispatcher rd = request.getRequestDispatcher("adminlogin.jsp");
			rd.forward(request, response);
//			response.sendRedirect("error.jsp");
		}

	}

}
