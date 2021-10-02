package com.ibm.demo.servlets;

import java.io.File;
import java.io.IOException;
import java.sql.DriverManager;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import java.sql.*;


/**
 * Servlet implementation class UploadServletF
 */
@WebServlet("/AddProd")
@MultipartConfig
public class AddProd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddProd() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String UPLOAD_DIRECTORY = "D:\\project1\\Lifestyle3\\WebContent/images";
		String fname = "";
		String name = "";
		String price = "";
		String category = "";
		String featured = "";
		// process only if its multipart content
		if (ServletFileUpload.isMultipartContent(request)) {
			try {
				List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
				for (FileItem item : multiparts) {
					if (item.isFormField()) {
						if (item.getFieldName().equalsIgnoreCase("name")) {
							name = item.getString();
						}
						if (item.getFieldName().equalsIgnoreCase("price")) {
							price = item.getString();
						}
						if (item.getFieldName().equalsIgnoreCase("category")) {
							category = item.getString();
						}
						if (item.getFieldName().equalsIgnoreCase("featured")) {
							featured = item.getString();
						}
						

					} else {
						fname = new File(item.getName()).getName();
						System.out.println("fname " + fname);
						item.write(new File(UPLOAD_DIRECTORY + File.separator + fname));
						try {
							Class.forName("com.mysql.jdbc.Driver");
							Connection conn = (Connection) DriverManager
									.getConnection("jdbc:mysql://localhost:3306/demo", "root", "");
							Statement st = (Statement) conn.createStatement();

							st.executeUpdate("insert into product(name,price,category,featured,image)values('" + name
									+ "','" + price + "','" + category + "','" + featured + "','" + fname + "')");

						} catch (Exception e) {
							System.out.print(e);
							e.printStackTrace();
						}
					}
				}
			

				// File uploaded successfully
				request.setAttribute("message", "File Uploaded Successfully " + fname);
			} catch (Exception ex) {
				request.setAttribute("message", "File Upload Failed due to " + ex);
			}

		} else {
			request.setAttribute("message", "Sorry this Servlet only handles file upload request");
		}

		request.getRequestDispatcher("/upload_result.jsp").forward(request, response);

	}
}
