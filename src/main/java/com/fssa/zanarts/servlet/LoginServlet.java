package com.fssa.zanarts.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.zanarts.customexception.DAOException;
import com.fssa.zanarts.model.User;
import com.fssa.zanarts.service.UserService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("log_mail");
		String password = request.getParameter("passcode");
		UserService userservice = new UserService();

		try {
			User user = userservice.login(email, password);
			System.out.println(user.getRole());
			if (user != null) {
				HttpSession session = request.getSession();
				session.setAttribute("User", email);
				String role_user=user.getRole().toString();
				session.setAttribute("role",role_user);
				System.out.println(session.getAttribute("try"));
				System.out.print("Sucess");
				response.sendRedirect("./home.jsp");
			} else {
				System.out.println("No user Records found");
				response.sendRedirect("./login.jsp");
			}
		} catch (DAOException | SQLException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			response.sendRedirect("./login.jsp");
		}
	}
}