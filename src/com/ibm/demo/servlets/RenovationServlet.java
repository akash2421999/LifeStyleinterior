package com.ibm.demo.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.demo.models.RenovationModel;

/**
 * Servlet implementation class RenovationServlet
 */
@WebServlet("/RenovationServlet")
public class RenovationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RenovationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		String id = "";
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String date = request.getParameter("date");
		String category = request.getParameter("category");
		String price = request.getParameter("price");
		
		System.out.println(id);
		System.out.println(name);
		System.out.println(address);
		System.out.println(city);
		System.out.println(state);
		System.out.println(date);
		System.out.println(category);
		System.out.println(price);

		RenovationModel obj = new RenovationModel();
		int x = obj.insertRecords(id,name, address,city,state,date,category,price);
		if (x == 1) {
			response.sendRedirect("userpage.jsp");
		} else {
			response.sendRedirect("userpage.jsp");
		}

	}
}

