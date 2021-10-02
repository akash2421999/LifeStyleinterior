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

import com.ibm.demo.models.contlogmodel;

/**
 * Servlet implementation class contlogservlet
 */
@WebServlet("/contlogservlet")
public class contlogservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public contlogservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		


		contlogmodel lm = new contlogmodel();
		ArrayList list = lm.getRecords(id, pass);

		HttpSession session = request.getSession(true);

		if (!list.isEmpty()) {
			session.setAttribute("id", id);
			RequestDispatcher rd = request.getRequestDispatcher("contractormodel.jsp");

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


