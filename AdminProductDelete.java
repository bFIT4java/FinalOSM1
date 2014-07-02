package com.ust;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminProductDelete
 */
public class AdminProductDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminProductDelete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] ids=request.getParameterValues("buyList");
		String[] names=request.getParameterValues("Product Name");
		String[] price=request.getParameterValues("Product Price");
		String[] newId=request.getParameterValues("Product ID");
		ProductList pl = new ProductList();
		PrintWriter pw = response.getWriter();
		String choice = request.getParameter("choice");
		if(choice.equals("Delete")){
			//calls the product class to call the database and loads the product vectors
			pl.deleteProducts(ids);
			pw.print("Item(s) has been deleted<br>");
		}
		if(choice.equals("Update")){
			pl.updateProducts(ids,names,price,newId);
			pw.print("Item(s) has been updated<br>");
		}
		
		
		
		
		
		
		pw.println("<a href=\"http://localhost:8082/OSM/AdminProductViewServlet\"><b>Edit Products</b></a>");
		pw.println("<a href=\"http://localhost:8082/OSM/AdminForm.jsp\"><b>Add Products</b></a>");
		
	}

}
