package com.fssa.zanarts.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.zanarts.customexception.DAOException;
import com.fssa.zanarts.customexception.ProductExpection;
import com.fssa.zanarts.dao.UserDao;
import com.fssa.zanarts.enumclass.Types;
import com.fssa.zanarts.model.Dimension;
import com.fssa.zanarts.model.Product;
import com.fssa.zanarts.service.ProductService;

/**
 * Servlet implementation class AddProduct
 */
@WebServlet("/AddProductServlet")
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddProduct() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		HttpSession session = request.getSession(false);
		String email = (String) session.getAttribute("User");
		System.out.println("tytg" + session.getAttribute("User"));

		if (email == null) {
			out.print("User is null");
			return;
		}

		int emailId = 0;
		try {
			emailId = new UserDao().getUserIdByEmail(email);
			System.out.println("Found Email Id");
			System.out.println(emailId);
		} catch (DAOException e) {
			e.printStackTrace();
			throw new ServletException("Unable to find User Id");
		}
		System.out.println(emailId);
		String name = request.getParameter("productName");
		String category = request.getParameter("Category");
		String url = request.getParameter("producturl");
		String price = request.getParameter("producttPrice");
		String Description = request.getParameter("productDescription");
		String width = request.getParameter("producttWidth");
		String height = request.getParameter("producttHeight");
		String artistname = request.getParameter("artistName");

		System.out.println(Description);

		ProductService product = new ProductService();

		Dimension dm = new Dimension(Integer.parseInt(width), Integer.parseInt(height));
		Product product1 = new Product();

		product1.setname(name);
		product1.setId(1);
		product1.setArtistname(artistname);
		product1.setPrice(Double.parseDouble(price));
		product1.setCategory(Types.valueToEnumMapping(category));
		product1.setSize(dm);
		product1.setProductDescription(Description);
		product1.setUserId(emailId+"");
		product1.setUrl(url);

		System.out.println(product1);

		try {
			product.addProduct(product1);
			request.setAttribute("addTaskSuccess",product1.getname()+"Art Added Successfully!");
			RequestDispatcher rd = request.getRequestDispatcher("Check");
			rd.forward(request, response);

		} catch (SQLException | ProductExpection | DAOException e) {

			System.out.println("not added ");
			e.printStackTrace();
			request.setAttribute("addTaskError", e.getMessage());
			request.getRequestDispatcher("./artistupload.jsp").forward(request, response);
		}

	}

}