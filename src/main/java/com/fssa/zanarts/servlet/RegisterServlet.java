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

import com.fssa.zanarts.customexception.UserException;
import com.fssa.zanarts.dao.UserDao;
import com.fssa.zanarts.enumclass.Role;
import com.fssa.zanarts.model.User;
import com.fssa.zanarts.service.UserService;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Parse form parameters
        String userName = request.getParameter("user_id");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String phoneNumber = request.getParameter("mobilenumber");
        String role = request.getParameter("fav_language"); // Assuming this will be either "Artist" or "Buyer"

        
        
        // Create a User object
        User user = new User();
        user.setUserName(userName);
        user.setEmail(email);
        user.setPassword(password);
        user.setPhoneNumber(phoneNumber);
        user.setRole(Role.valueOf(role));
        
        System.out.println("Comes to servlet");
        request.getParameterNames();
       
        
        try {
			UserService.addUser(user);
			HttpSession session = request.getSession();
			session.setAttribute("User", user);
			System.out.println(user.toString());
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		} catch (SQLException | UserException e) {

			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			System.out.println(e.getMessage());
			rd.forward(request, response);
			e.printStackTrace();
		} 
    }
}
