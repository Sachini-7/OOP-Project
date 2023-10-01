package com.patient;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Channeling
 */
@WebServlet("/Channeling")
public class Channeling extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String a = request.getParameter("age");
		int age = Integer.parseInt(a);
		String dname = request.getParameter("dname");
		String date = request.getParameter("date");
		String status = request.getParameter("status");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		
	    
		boolean isTrue;
		
		isTrue = ChannelingDBUtil.channeling(fname, lname, age, dname, date, status, phone, email);
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}
		else {
			
			RequestDispatcher dis1 = request.getRequestDispatcher("unsuccess.jsp");
			dis1.forward(request, response);
		}	
	}
}
