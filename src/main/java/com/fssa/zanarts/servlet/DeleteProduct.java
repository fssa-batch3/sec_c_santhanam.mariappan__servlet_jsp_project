package com.fssa.zanarts.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.zanarts.customexception.ProductExpection;
import com.fssa.zanarts.service.ProductService;

/**
 * Servlet implementation class DeleteProduct
 */
@WebServlet("/DeleteProduct")
public class DeleteProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
		ProductService product = new ProductService();
		
	    String id = request.getParameter("id");
	 
 
		 try {
			 
			product.deleteProduct(Integer.parseInt(id));
			
		} catch (NumberFormatException e) {
			
			e.printStackTrace();
			
		} catch (SQLException e) {
		
			e.printStackTrace();
			
		} catch (ProductExpection e) {
			
			e.printStackTrace();
		}
		// response.sendRedirect("index.jsp");
		 
			RequestDispatcher dis = request.getRequestDispatcher("Check");
			dis.forward(request, response);
	 
	 
	}

}
