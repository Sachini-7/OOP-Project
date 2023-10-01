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
 * Servlet implementation class DeletePatientServlet
 */
@WebServlet("/DeletePatientServlet")
public class DeletePatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("usersid");
		boolean isTrue;
		
		isTrue = PatientDBUtil.deletePatient(id);
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("registration.jsp");
			dis.forward(request, response);
			
		}
		else {
			
			List<Patient> cusDetails = PatientDBUtil.getUserDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("patientaccount.jsp");
			dis.forward(request, response);
		}
		
	}

}
