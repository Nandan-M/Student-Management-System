package com.java.servlets;

import java.io.IOException;
import com.java.DAO.*;
import com.java.packages.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DataServlet
 */
@WebServlet("/DataServlet")
public class DataServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String datab = request.getParameter("data");
		
		Data d = new Data();
		
		d.setDATA(datab);
		
	    DataDAO  dao = new DataDAO();
	    String da = dao.stockdata(d);
	    
	    if(da.equals("sucess")) {
	    request.getRequestDispatcher("main.jsp").forward(request, response);
	    request.getSession().invalidate();
	    }
	    else {
	    	request.getRequestDispatcher("login.html").forward(request, response);
	    }
	}

}
