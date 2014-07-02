package com.ust;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminSearch
 */
public class AdminSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminSearch() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Retrieve values from html page
		  String search=request.getParameter("pp");

		   PrintWriter pw=response.getWriter();
		  //I will call the checkUswer method of CredentialChecker class
		  CredentialChecker cc= new CredentialChecker();
		  
		  boolean flag =cc.searchProduct(search);

		    if(flag==true){
		    //RequestDispatcher rd =request.getRequestDispatcher("searchView.jsp");
		    //rd.forward(request, response);


		    	String productName=cc.productName;
		    	int productId=cc.productId;
		    	double productPrice=cc.productPrice;


		    	request.setAttribute("productId", productId);
		    	request.setAttribute("productName", productName);
		    	request.setAttribute("productPrice", productPrice);
		    	request.getRequestDispatcher("AdminSearchForm.jsp").forward(request, response);


		   }
		   else{
		    //RequestDispatcher rd =request.getRequestDispatcher("Failure.jsp");
		     //rd.forward(request, response);
		    pw.println("no matching product has been found");
		   }


	}

}
