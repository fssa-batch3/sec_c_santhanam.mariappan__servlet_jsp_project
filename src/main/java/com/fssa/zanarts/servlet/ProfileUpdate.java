package com.fssa.zanarts.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.zanarts.customexception.DAOException;
import com.fssa.zanarts.customexception.UserException;
import com.fssa.zanarts.enumclass.Role;
import com.fssa.zanarts.model.User;
import com.fssa.zanarts.service.UserService;

/**
 * Servlet implementation class ProfileUpdate
 */
@WebServlet("/ProfileUpdate")
public class ProfileUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// UserService userService = new UserService();

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = new User();

		System.out.println("hello" + request.getParameter("phone1"));
		System.out.println("datya" + request.getParameter("firstname"));
		user.setUserName(request.getParameter("firstname"));
		user.setPhoneNumber(request.getParameter("phone1"));
		user.setEmail(request.getParameter("email"));
		
		/// user.setRole(Role.valueOf(request.getParameter("role").toUpperCase()));

		try {
			UserService.updateUser(user);
			// HttpSession session = request.getSession();
			// session.setAttribute("User", user.getEmail());

			System.out.println("Updated successfully!");
			response.sendRedirect("account.jsp");

		} catch (SQLException | UserException | DAOException e) {
			System.out.println(e.getMessage());
		}

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}