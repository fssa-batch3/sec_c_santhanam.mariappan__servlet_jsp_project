package com.fssa.zanarts.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.fssa.zanarts.customexception.DAOException;
import com.fssa.zanarts.dao.ProductDao;
import com.fssa.zanarts.model.Product;

/**
 * Servlet implementation class GetPriceDeatils
 */
@WebServlet("/GetPriceDeatils")
public class GetPriceDeatils extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("+++");
		PrintWriter out = response.getWriter();
		String pr = request.getParameter("searchValue");
		System.out.println(pr);
		double price = Double.parseDouble(pr);
		System.out.println("+++");
		System.out.println(price);

		ProductDao obj = new ProductDao();
		try {
			List<Product> product = ProductDao.getAllProductDetailsByprice(price);
			
			System.out.println("++++++++");
			System.out.println(product);

			JSONArray jsonArray = new JSONArray(product);

			out.print(jsonArray.toString());

			out.flush();
		} catch (DAOException e) {

			e.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
