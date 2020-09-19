/*
 * ITP 2020 Textile Management System
 * 
 * @author V. Yahdhursheika - IT19186948
 */

package com.itp.servlet;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.itp.model.Product;
import com.itp.service.*;

/**
 * Servlet implementation class ProductAdd_AdminServlet
 */
@WebServlet("/ProductAdd_AdminServlet")
public class ProductAdd_AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductAdd_AdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		InputStream inputStream = null;
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String category = request.getParameter("category");
		int qty = Integer.parseInt(request.getParameter("qty"));
		System.out.println("qty = " +qty);
		String size = request.getParameter("size");
		double price = Double.parseDouble(request.getParameter("price"));
		int reOrderLevel = Integer.parseInt(request.getParameter("reOrderLevel"));
		Part filePart = request.getPart("photo");
		System.out.println("file part = " + filePart);
		
		if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
		
		/*
		 * Creating an object from Product
		 * class and saving the details
		 */
		
		Product p1 = new Product();
		p1.setProductID(id);
		p1.setProductName(name);
		p1.setProductCategory(category);
		p1.setProductQty(qty);
		p1.setProductSize(size);
		p1.setProductPrice(price);
		p1.setProductReOrderLevel(reOrderLevel);
		p1.setInputStream(inputStream);
		System.out.println("input1 = " + inputStream);
		
		int status = 0;
		
		iProductService ip = new ProductServiceImpl();
		status = ip.addProduct(p1);
		
		if (status == -1000) {
			System.out.println("Product "+p1.getProductName()+
					" Successfully added!");
			
			out.println("<body>");
			out.println("<script>");
			out.println("alert('Cannot add product, Product ID already exists."
								+ "Please use another product ID');");
			out.println("</script>");
			out.println("</body>");
			out.println("<meta http-equiv='refresh' content='1 ;URL=ProductAdd_Admin.jsp'>");

		}
		if (status > 0) {
			System.out.println("Product "+p1.getProductName()+
					" Successfully added!");
			
			out.println("<body>");
			out.println("<script>");
			out.println("alert('Product succesfully added!');");
			out.println("</script>");
			out.println("</body>");
			out.println("<meta http-equiv='refresh' content='1 ;URL=ProductList_Admin.jsp'>");

		}
		if (status == 0) {

			System.out.println("Error occurred!");
			System.out.println("status = " + status);
			out.println("<body><script>");
			out.println("alert('ERROR occurred! Product could not be added! Please try adding again');");
			out.println("</script></body>");
			out.println("<meta http-equiv='refresh' content='1 ;URL=AdminHome.jsp'>");
			
		}
	}

}
