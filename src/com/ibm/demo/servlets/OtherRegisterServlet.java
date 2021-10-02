package com.ibm.demo.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.demo.models.OtherregisterModel;

/**
 * Servlet implementation class OtherRegisterServlet
 */
@WebServlet("/OtherRegisterServlet")
public class OtherRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public OtherRegisterServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("user");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String addr = request.getParameter("address");
		String city = request.getParameter("city");
		String exp = request.getParameter("exp");
		String adhar = request.getParameter("adhar");
		String pass = request.getParameter("pass");
		String category = request.getParameter("category");
	OtherregisterModel obj = new OtherregisterModel();
		int x = obj.insertRecords(name, email, phone,addr, city, exp,adhar, pass, category);
		if (x == 1)  {
			response.sendRedirect("wait.jsp");
		} else {
			response.sendRedirect("error.jsp");
		}
		

	}

}
