package com.java.servlets;

import java.io.IOException;
import com.java.packages.*;
import com.java.DAO.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			 
		 String email = request.getParameter("emailid");
			String password = request.getParameter("password");
			
			if(LoginDAO.checkUser(email, password)) {
				request.getRequestDispatcher("main.jsp").forward(request, response);
				HttpSession session = request.getSession();
				}
			else {
				request.getRequestDispatcher("login.html").forward(request, response);
			}
		 
		
	}

}
