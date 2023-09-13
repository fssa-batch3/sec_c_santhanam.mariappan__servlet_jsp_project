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

import com.fssa.zanarts.customexception.ProductExpection;
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
		RequestDispatcher rd = null;
		PrintWriter out = response.getWriter();

		response.getWriter().append("Served at:").append(request.getContextPath());

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
		product1.setArtistname(artistname);
		product1.setId(1);
		product1.setPrice(Double.parseDouble(price));
		product1.setCategory(Types.valueToEnumMapping(category));
		product1.setSize(dm);
		product1.setProductDescription(Description);
		product1.setUrl(url);

		System.out.println(product1);

		try {
			product.addProduct(product1);
			
			request.setAttribute("Art Ready to upload", product1.getname() + "Art Ready to upload");
			rd = request.getRequestDispatcher("Check");

		} catch (SQLException | ProductExpection e) {

			System.out.println("not added ");
			e.printStackTrace();
			request.setAttribute("addTaskError", e.getMessage());
			rd = request.getRequestDispatcher("./artistupload.jsp");
		}

	   finally {
		   rd.forward(request, response);
	   }
	}

}