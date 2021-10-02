package com.ibm.demo.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.demo.models.ComplainModel;


/**
 * Servlet implementation class ComplainServlet
 */
@WebServlet("/ComplainServlet")
public class ComplainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ComplainServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String category = request.getParameter("category");
		String person = request.getParameter("person");
		String message = request.getParameter("message");
		

		ComplainModel obj = new ComplainModel();
		int x = obj.insertRecords(name, category,person, message);
		if (x == 1) {
			response.sendRedirect("userpage.jsp");
		} else {
			response.sendRedirect("userpage.jsp");
		}

	}
		// TODO Auto-generated method stub
	}
