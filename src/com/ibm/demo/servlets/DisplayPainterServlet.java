package com.ibm.demo.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.ibm.demo.models.DisplaypainterModel;

/**
 * Servlet implementation class DisplayPainterServlet
 */
@WebServlet("/DisplayPainterServlet")
public class DisplayPainterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayPainterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		DisplaypainterModel obj = new DisplaypainterModel();
		ArrayList<String> list = obj.getRecords();
		System.out.println("List "+list);
		request.setAttribute("list", list);
		RequestDispatcher rd = request.getRequestDispatcher("apainterdetails.jsp");
		rd.forward(request, response);

		// TODO Auto-generated method stub
		
	}

}
