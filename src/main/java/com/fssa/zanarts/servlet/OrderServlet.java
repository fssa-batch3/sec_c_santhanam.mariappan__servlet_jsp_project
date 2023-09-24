package com.fssa.zanarts.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.zanarts.customexception.DAOException;
import com.fssa.zanarts.customexception.OrderException;
import com.fssa.zanarts.dao.UserDao;
import com.fssa.zanarts.enumclass.OrderStatus;
import com.fssa.zanarts.model.Order;
import com.fssa.zanarts.model.User;
import com.fssa.zanarts.service.OrderService;

/**
 * Servlet implementation class OrderServlet
 */
@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String productName = request.getParameter("productName");

		/// id receive name something
		String product_id = request.getParameter("product_id");
		int productId = Integer.parseInt(product_id);

		String productPriceStr = request.getParameter("productPrice");
		double productPrice = Double.parseDouble(productPriceStr);

		String quantityStr = request.getParameter("quantity");
		int quantity = Integer.parseInt(quantityStr);

		String totalAmountStr = request.getParameter("totalAmount");
		int totalAmount = Integer.parseInt(totalAmountStr);

		Order order = new Order();

		String email = (String) request.getSession(false).getAttribute("User");
		try {
			User user = UserDao.getUserByEmail(email);
			System.out.println(user.getId());
			order.setUserID(user.getId());
		} catch (DAOException e) {
			e.printStackTrace();
		}
//ordder.setv id
		order.setProductId(productId);
		order.setProductname(productName);
		order.setPrice(productPrice);
		order.setQuantity(quantity);
		order.setStatus(OrderStatus.ORDERED);
		order.setTotalAmount(totalAmount);

		try {
			OrderService.addOrder(order);
			response.sendRedirect("information.jsp");
		} catch (SQLException | OrderException | DAOException e) {

			System.out.println(e.getMessage());
			e.printStackTrace();
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
