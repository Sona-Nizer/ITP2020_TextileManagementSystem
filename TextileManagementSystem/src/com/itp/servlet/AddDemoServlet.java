
package com.itp.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itp.model.Order;
import com.itp.service.IOrderService;
import com.itp.service.OrderServiceImpl;

/**
 * Servlet implementation class LoginServlet
 */
public class AddDemoServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddDemoServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");

		Order order = new Order();
		
		order.setProduct("Women's Shirt");
		order.setQuantity("2");
		order.setSize("L");
		order.setSubTotal("5600");
		order.setDiscount("0.00");
		order.setTotal("5600");
		
		order.setPurchaseDate("09/09/20");
		order.setStatus("Processing");
		
		IOrderService iOrderService = new OrderServiceImpl();
		iOrderService.addOrder(order);

		request.setAttribute("order", order);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/OrderConfirmationMess.jsp");
		dispatcher.forward(request, response);
	}

}

