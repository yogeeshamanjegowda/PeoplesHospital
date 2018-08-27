package controller;

import models.Login;
import models.AppointmentBooking;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RequestDispatcher rd;
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String val = request.getParameter("submit");
		if (val.equals("Login")) {
			String userId = request.getParameter("userId");
			String password = request.getParameter("password");
			Login check = new Login();
			String userStatus = (check.checkUser(userId, password));
			if(userStatus.equals("admin")){
				RequestDispatcher rd = request.getRequestDispatcher("/JSP/Welcome.jsp");
				rd.include(request, response);
			}else{
				out.println("<script type=\"text/javascript\">alert(\"Invalid User Name or Password\")</script>");
				RequestDispatcher rd = request.getRequestDispatcher("/JSP/Home.jsp");
				rd.include(request, response);
			}
		}else if (val.equals("Booking")){
			String doctorName = request.getParameter("doctorName");
			String doctor = request.getParameter("doctor");
			String department = request.getParameter("department");
			String pName = request.getParameter("pName");
			String address = request.getParameter("address");
			String mob = request.getParameter("mob");
			String visitType = request.getParameter("visitType");
			AppointmentBooking register = new AppointmentBooking();
			String status = (register.registerBooking(doctorName, doctor, department, pName, address, mob, visitType));
			if (status.equals("1")) {
				out.println("<script type=\"text/javascript\">alert(\"Booking is Sucessful, you can use your details as appointment number \")</script>");
				RequestDispatcher rd = request.getRequestDispatcher("/JSP/Home.jsp");
				rd.include(request, response);
			} else {
				out.println("<script type=\"text/javascript\">alert(\"Something went wrong please try again\")</script>");
				RequestDispatcher rd = request.getRequestDispatcher("/JSP/Home.jsp");
				rd.include(request, response);
			}
		}

	}
}