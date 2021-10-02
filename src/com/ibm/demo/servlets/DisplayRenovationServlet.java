package com.ibm.demo.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.ibm.demo.models.DisplayRenovationModel;

/**
 * Servlet implementation class DisplayRenovationServlet
 */
@WebServlet("/DisplayRenovationServlet")
public class DisplayRenovationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayRenovationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		DisplayRenovationModel obj = new DisplayRenovationModel();
		ArrayList<String> list = obj.getRecords();
		System.out.println("List "+list);
		request.setAttribute("list", list);
		RequestDispatcher rd = request.getRequestDispatcher("arenovatedetails.jsp");
		rd.forward(request, response);
	}
	
}
