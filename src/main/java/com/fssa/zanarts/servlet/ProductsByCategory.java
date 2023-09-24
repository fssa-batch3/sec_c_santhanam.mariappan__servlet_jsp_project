package com.fssa.zanarts.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.zanarts.customexception.DAOException;
import com.fssa.zanarts.customexception.ProductExpection;
import com.fssa.zanarts.model.Product;
import com.fssa.zanarts.service.ProductService;

@WebServlet("/ProductsByCategory")
public class ProductsByCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;

	ProductService productService = new ProductService();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String categoryName = request.getParameter("categoryName");

		try {
			List<Product> productList = productService.getAllProductDetailsByCategory(categoryName);
			request.setAttribute("productList", productList);
			System.out.println("productlist"+productList);
			RequestDispatcher rd = request.getRequestDispatcher("./explore_arts.jsp");
			rd.forward(request, response);
		} catch (SQLException | ProductExpection | DAOException e) {
			System.out.println(e.getMessage());
			response.sendRedirect("./explore.jsp");
			e.printStackTrace();
		}
	}

}
