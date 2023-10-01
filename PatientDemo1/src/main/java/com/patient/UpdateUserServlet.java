package com.patient;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateUserServlet
 */
@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("usersid");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String a = request.getParameter("age");
		int age = Integer.parseInt(a);
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue = PatientDBUtil.updateuser(id, fname, lname, age, gender, email, phone, username, password);
		
		if(isTrue == true) {
			
			List<Patient> ptntDetails = PatientDBUtil.getUserDetails(id);
			request.setAttribute("ptntDetails", ptntDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("patientaccount.jsp");
			dis.forward(request, response);
			
		}
		else {
			
			List<Patient> ptntDetails = PatientDBUtil.getUserDetails(id);
			request.setAttribute("ptntDetails", ptntDetails);
			
			RequestDispatcher dis1 = request.getRequestDispatcher("patientaccount.jsp");
			dis1.forward(request, response);
			
		}
		
	}

}
