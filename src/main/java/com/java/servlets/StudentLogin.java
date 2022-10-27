package com.java.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.DAO.StudentLog;

/**
 * Servlet implementation class StudentLogin
 */
@WebServlet("/StudentLogin")
public class StudentLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		int id = Integer.parseInt(request.getParameter("id"));
		int date = Integer.parseInt(request.getParameter("date"));
		
		if(StudentLog.user(id, date)) {
			request.getRequestDispatcher("home.jsp").forward(request, response);
			HttpSession session = request.getSession();
		}
		else {
			request.getRequestDispatcher("login.html").forward(request, response);
		}
	}

}
