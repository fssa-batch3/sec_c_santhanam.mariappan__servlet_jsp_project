package com.fssa.zanarts.servlet;

import java.io.IOException;
import java.io.PrintWriter;
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

/**
 * Servlet implementation class Check
 */
@WebServlet("/Check")
public class ProductRead extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		ProductService product = new ProductService();
		List<Product> productList = null;
		try {
			productList = product.getAllProductDetails();

			request.setAttribute("productList", productList);
			for (Product ele : productList) {
				out.println(ele);
				out.println("Hello");
			}

		} catch (ProductExpection  e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (DAOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

//		System.out.println(productList.size());
		RequestDispatcher dis = request.getRequestDispatcher("product.jsp");
		dis.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
