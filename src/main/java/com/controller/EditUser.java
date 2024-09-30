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
@WebServlet("/edituser")
public class EditUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Employee employee  = new Employee();
		employee.setId(Integer.parseInt(request.getParameter("id")));
		employee.setName(request.getParameter("name"));
		employee.setEmail(request.getParameter("email"));
		employee.setGender(request.getParameter("gender"));
		employee.setDept(request.getParameter("department"));
		employee.setSalary(request.getParameter("salary"));
		employee.setMobile(request.getParameter("mobile"));
		employee.setAddress(request.getParameter("address"));
		EmployeeDAO dao = new EmployeeDAO();
		try {
			boolean status = dao.edit(employee);
			if(status) {
				dao.commit();
				request.setAttribute("status", "Employee Updated successfully...");
			}
			else {
				dao.rollback();
				request.setAttribute("status", "Employee not updated...");
			}
			RequestDispatcher dispatcher = request.getRequestDispatcher("editemp.jsp");
			dispatcher.forward(request, response);
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
		
	}

}
