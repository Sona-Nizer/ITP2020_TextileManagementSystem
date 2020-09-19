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

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.sendRedirect("ProductAdd_Admin.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out = response.getWriter();
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String userType = request.getParameter("userType");
		
		if (userType.equals("admin")) {
			iLoginService il = new LoginServiceImpl();
		
			boolean status = il.adminLogin(email, password);

				if (status == true) {
					System.out.println("Login Successful!");
					HttpSession session = request.getSession();
					session.setAttribute("userEmail", email);
					session.setAttribute("userType", userType);
					
					out.println("<body>");
					out.println("<script>");
					out.println("alert('Login Successful!');");
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
		if (userType.equals("supplier")) {
			iLoginService il = new LoginServiceImpl();
		
			boolean status = il.supplierLogin(email, password);

				if (status == true) {
					System.out.println("Login Successful!");
			
					HttpSession session = request.getSession();
					session.setAttribute("userEmail", email);
					session.setAttribute("userType", userType);
					
					out.println("<body>");
					out.println("<script>");
					out.println("alert('Login Successful!');");
					out.println("</script>");
					out.println("</body>");
					out.println("<meta http-equiv='refresh' content='1 ;URL=SupplierHome.jsp'>");

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
		if (userType.equals("customer")) {
			iLoginService il = new LoginServiceImpl();
		
			boolean status = il.customerLogin(email, password);

				if (status == true) {
					System.out.println("Login Successful!");
					
					HttpSession session = request.getSession();
					session.setAttribute("userEmail", email);
					session.setAttribute("userType", userType);
			
					out.println("<body>");
					out.println("<script>");
					out.println("alert('Login Successful!');");
					out.println("</script>");
					out.println("</body>");
					out.println("<meta http-equiv='refresh' content='1 ;URL=HomePage.jsp'>");

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
