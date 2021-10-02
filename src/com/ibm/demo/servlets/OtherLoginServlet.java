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

import com.ibm.demo.models.OtherLoginModel;

/**
 * Servlet implementation class OtherLoginServlet
 */
@WebServlet("/OtherLoginServlet")
public class OtherLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public OtherLoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("user");
		String pass = request.getParameter("pass");
		String category = request.getParameter("category");

		OtherLoginModel lm = new OtherLoginModel();
		ArrayList list = lm.othergetRecords(name, pass);
		System.out.print(list);
		HttpSession session = request.getSession(true);
		
		if(category.equals("contractor"))
		{
			if (!list.isEmpty()) {
				session.setAttribute("user", name);
				RequestDispatcher rd = request.getRequestDispatcher("contractormodel.jsp");
				rd.forward(request, response);
				// response.sendRedirect("welcome.jsp");
			} else {
				request.setAttribute("msg", "Invalid User");
				RequestDispatcher rd = request.getRequestDispatcher("404-page.html");
				rd.forward(request, response);
				// response.sendRedirect("error.jsp");
			}
		}
		else if(category.equals("electrician"))
		{
			if (!list.isEmpty()) {
				session.setAttribute("user", name);
				RequestDispatcher rd = request.getRequestDispatcher("electrionmodel.jsp");
				rd.forward(request, response);
				// response.sendRedirect("welcome.jsp");
			} else {
				request.setAttribute("msg", "Invalid User");
				RequestDispatcher rd = request.getRequestDispatcher("404-page.html");
				rd.forward(request, response);
				// response.sendRedirect("error.jsp");
			}
		}
		else
		{
			if (!list.isEmpty()) {
				session.setAttribute("user", name);
				RequestDispatcher rd = request.getRequestDispatcher("plumbermodel.jsp");
				rd.forward(request, response);
				// response.sendRedirect("welcome.jsp");
			} else {
				request.setAttribute("msg", "Invalid User");
				RequestDispatcher rd = request.getRequestDispatcher("404-page.html");
				rd.forward(request, response);
				// response.sendRedirect("error.jsp");
			}
		}

	}
}
