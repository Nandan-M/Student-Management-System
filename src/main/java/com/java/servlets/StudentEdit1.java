package com.java.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.DAO.StudentDAO;
import com.java.packages.StudentCommon;

/**
 * Servlet implementation class StudentEdit1
 */
@WebServlet("/StudentEdit1")
public class StudentEdit1 extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		int id = Integer.parseInt(request.getParameter("id"));
		int std = Integer.parseInt(request.getParameter("std"));
		String sec = request.getParameter("sec");
		String fn = request.getParameter("fn");
		String area = request.getParameter("area");
		int bn = Integer.parseInt(request.getParameter("bn"));
		
		StudentCommon s = new StudentCommon();
		s.setId(id);
		s.setStandard(std);
		s.setSection(sec);
		s.setFathersname(fn);
		s.setArea(area);
		s.setBusno(bn);
		
		int status = StudentDAO.editStudent1(s);
		if(status > 0) {
			request.getRequestDispatcher("basic.html");
		}
		else {
			request.getRequestDispatcher("basic.js");
		}	
	}
	}


