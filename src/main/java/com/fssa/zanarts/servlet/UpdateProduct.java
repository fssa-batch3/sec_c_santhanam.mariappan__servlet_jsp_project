package com.fssa.zanarts.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

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
 * Servlet implementation class UpdateProduct
 */
@WebServlet("/UpdateProduct")
public class UpdateProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateProduct() {
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
	 * Handles HTTP POST requests for updating a product.
	 *
	 * @param request  The HttpServletRequest object containing the product data.
	 * @param response The HttpServletResponse object for sending responses.
	 * @throws ServletException If a servlet-specific error occurs.
	 * @throws IOException      If an I/O error occurs.
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("productid1");
		String name = request.getParameter("productName1");
		String category = request.getParameter("Category1");
		String url = request.getParameter("producturl");
		String price = request.getParameter("productPrice1");
		String Description = request.getParameter("productDescription1");
		String width = request.getParameter("productWidth1");
		String height = request.getParameter("productHeight1");
		String artistname = request.getParameter("artistName1");

//		creating object for productService

		ProductService product = new ProductService();

		Dimension dm = new Dimension(Integer.parseInt(width), Integer.parseInt(height));
		Product product1 = new Product();
		product1.setname(name);
		product1.setArtistname(artistname);
		product1.setPrice(Double.parseDouble(price));
		product1.setCategory(Types.valueToEnumMapping(category));
		product1.setSize(dm);
		product1.setProductDescription(Description);
		product1.setUrl(url);
		product1.setId(1);

		try {
			product.updateProduct(product1, Integer.parseInt(id));
			System.out.println("Update successfully ");

		} catch (SQLException | ProductExpection e) {
			e.printStackTrace();
			System.out.println("not update ");
			request.setAttribute("NotUpdate", e.getMessage());
		}

		response.getWriter().write("product success");
		response.sendRedirect("ArtistProduct");

	}

}
