package com.ibm.demo.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/DemoSession")
public class DemoSession extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		out.println("Welcome to Session Demo");
		HttpSession session = request.getSession(true);
		out.println("Session id1 "+session.getId());
		session.setAttribute("name", "Rose");
//		session.setMaxInactiveInterval(0);
//		session.invalidate();
//		session = null;
//		out.println("Session id2 "+session.getId());
		

	}

}
