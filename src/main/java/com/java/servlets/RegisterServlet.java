package com.java.servlets;

import java.io.IOException;
import com.java.packages.*;
import com.java.DAO.RegisterDAO;
import com.java.dbutils.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
        String email = request.getParameter("emailmobile");
        String password = request.getParameter("password");
        int date = Integer.parseInt(request.getParameter("date"));
        String month = request.getParameter("month");
        int year = Integer.parseInt(request.getParameter("year"));
        String gender = request.getParameter("gender");
        
        Beans b = new Beans();
        
        b.setFIRSTNAMME(firstname);
        b.setLASTNAME(lastname);
        b.setEMAILMOBILE(email);
        b.setPASSWORD(password);
        b.setDATE(date);
        b.setMONTH(month);
        b.setYEAR(year);
        b.setGENDER(gender);
        
        RegisterDAO dao = new RegisterDAO();
        
        String rs = dao.registeruser(b);
        
        if(rs.equals("sucess")) {
        	request.getRequestDispatcher("mainpage.html").forward(request,response);
        }
        else {
        	request.getRequestDispatcher("frontpage.html").forward(request,response);
        }
        
        
        
        
        }

}
