package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.EmployeeDAO;
import com.model.Employee;

@WebServlet("/searchemp")
public class SearchEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		EmployeeDAO dao = new EmployeeDAO();
		try {
			Employee employee = dao.findById(id);
			request.setAttribute("employee", employee);
			RequestDispatcher dispatcher = request.getRequestDispatcher("findemp.jsp");
			dispatcher.forward(request, response);
		} 
		catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

}
