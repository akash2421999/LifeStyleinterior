package com.ibm.demo.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.demo.models.PaintModel;

/**
 * Servlet implementation class PaintServlet
 */
@WebServlet("/PaintServlet")
public class PaintServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaintServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String brand = request.getParameter("brand");
		String painting = request.getParameter("painting");
		String price = request.getParameter("price");
		String date = request.getParameter("date");
		String address = request.getParameter("address");
		PrintWriter out = response.getWriter();
		PaintModel obj = new PaintModel();
		int x = obj.insertRecords(name, brand, painting, price,date,address);
		if (x == 1) {
out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
			out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
			out.println("<script>");
			out.println("$(document).ready(function(){");
			out.println("swal ( 'WELCOME' ,  'successfull !' ,  'success' );");
			out.println("});");
			out.println("</script>");
 RequestDispatcher rd = request.getRequestDispatcher("userpaint.jsp");
 rd.forward(request, response);
		
		} else {
			response.sendRedirect("userpage.jsp");
		}

	}
	}

