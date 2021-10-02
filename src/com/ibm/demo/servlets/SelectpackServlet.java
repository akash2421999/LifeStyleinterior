package com.ibm.demo.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.demo.models.SelectPackageModel;

/**
 * Servlet implementation class SelectpckServlet
 */
@WebServlet("/SelectpackServlet")
public class SelectpackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SelectpackServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	
		String name = request.getParameter("name");
		String select = request.getParameter("select");
		String holdername = request.getParameter("holdername");
		String cnum = request.getParameter("cnum");
		String cc_exp_mo = request.getParameter("cc_exp_mo");
		String cc_exp_yr = request.getParameter("cc_exp_yr");
		String cvv = request.getParameter("cvv");
		String amount = request.getParameter("amount");


	

		SelectPackageModel obj = new SelectPackageModel();
		int x = obj.insertRecords(name, select, holdername, cnum, cc_exp_mo, cc_exp_yr, cvv, amount);
		if (x == 1) {
			response.sendRedirect("userpage.jsp");
		} else {
			response.sendRedirect("selectpack.jsp");
		}
	}

}
