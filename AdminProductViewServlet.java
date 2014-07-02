package com.ust;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AdminProductViewServlet
 */
public class AdminProductViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminProductViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//creates an object of the product class
		ProductList pl = new ProductList();
		
		//calls the product class to call the database and loads the product vectors
		pl.setVector();
		Vector<Integer> productId = pl.productId;
		Vector<String> productName = pl.productName;
		Vector<Double> productPrice = pl.productPrice;
		
		//creates and forwards the information to the jsp page
			request.setAttribute("productId", productId);
			request.setAttribute("productName", productName);
			request.setAttribute("productPrice", productPrice);
			System.out.println("in product servlet");
			request.getRequestDispatcher("AdminViewProducts.jsp").forward(request, response);
	
	
	}


}
