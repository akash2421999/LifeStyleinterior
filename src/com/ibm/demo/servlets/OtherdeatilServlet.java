package com.ibm.demo.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.demo.models.ListEmployeeModel;
import com.ibm.demo.models.OtherDetailsModel;

/**
 * Servlet implementation class OtherdeatilServlet
 */
@WebServlet("/OtherdeatilServlet")
public class OtherdeatilServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OtherdeatilServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
		protected void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {

			OtherDetailsModel obj = new OtherDetailsModel();
			ArrayList<String> list = obj.getRecords();
			System.out.println("List "+list);
			request.setAttribute("list", list);
			RequestDispatcher rd = request.getRequestDispatcher("aotherdetails.jsp");
			rd.forward(request, response);

		}


}
