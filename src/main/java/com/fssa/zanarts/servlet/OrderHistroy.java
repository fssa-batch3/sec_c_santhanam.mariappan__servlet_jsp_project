package com.fssa.zanarts.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.zanarts.customexception.DAOException;
import com.fssa.zanarts.dao.UserDao;
import com.fssa.zanarts.model.Order;
import com.fssa.zanarts.model.User;
import com.fssa.zanarts.service.OrderService;

/**
 * Servlet implementation class OrderHistroy
 */
@WebServlet("/OrderHistroy")
public class OrderHistroy extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public OrderHistroy() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		OrderService orderService = new OrderService();
		HttpSession session = request.getSession(false);
		String email = (String) session.getAttribute("User");

		int userId;
		try {

			userId = UserDao.getUserIdByEmail(email);
			ArrayList<Order> orderDetails = orderService.getOrderById(userId);
			request.setAttribute("orderDetails", orderDetails);

		} catch (DAOException | SQLException e) {
			System.out.println("Getting order details failed");
			e.printStackTrace();
		}
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("buyer.jsp");
		requestDispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
