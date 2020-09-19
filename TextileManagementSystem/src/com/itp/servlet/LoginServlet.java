package com.itp.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itp.service.*;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out = response.getWriter();
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String userType = request.getParameter("userType");
		String adminName = null;
		
		if (userType.equals("admin")) {
			iLoginService il = new LoginServiceImpl();
			
			boolean status = il.adminLogin(email, password);

			
			if (status == true) {
				
				adminName = il.adminName(email);
				
				HttpSession session = request.getSession();
				session.setAttribute("userEmail", email);
				session.setAttribute("userType", userType);
				session.setAttribute("userName", adminName);
				
				System.out.println("Admin Login Successful!");
				
				out.println("<body>");
				out.println("<script>");
				out.println("alert('Admin Login Successful! hello');");
				out.println("</script>");
				out.println("</body>");
				out.println("<meta http-equiv='refresh' content='1 ;URL=AdminHome.jsp'>");

			}
			else if (status == false) {

				System.out.println("Login Unsuccessful!");
				System.out.println("status = " + status);
				out.println("<body><script>");
				out.println("alert('Invalid user credentials! Please enter correct email and password!');");
				out.println("</script></body>");
				out.println("<meta http-equiv='refresh' content='1 ;URL=Login.jsp'>");
		
			}
				
		}
		

		
			
		out.close();
	}

}
