package com.ibm.demo.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.demo.models.RegisterModel;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("id");
		String name = request.getParameter("user");
		String pass = request.getParameter("pass");
		String email = request.getParameter("email");
		String address = request.getParameter("address");

		String phone = request.getParameter("phone");

		RegisterModel obj = new RegisterModel();
		int x = obj.insertRecords(id, name, pass, email, address, phone);
		if (x == 1) {
			response.sendRedirect("userpage.jsp");
		} else {
			response.sendRedirect("userlogin.jsp");
		}

	}

}
