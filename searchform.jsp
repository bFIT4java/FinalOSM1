<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body bgcolor='black' >
<p align= "left"><a href="HomePgForm.html"><b><img src="BFIT.png"  height=100 width=250></b></a></p>

<basefont color = 'white' >

     <center>
 
  	<h1><font color="red">User search results</font></h1><br><br>
  	<h2>Below is the information about the product you searched for</h2>
 
  	<%
 
  		
 
  	//grabs vectors from servlet and sets it to local vector in the jsp page
 
   	int productId = (Integer)request.getAttribute("productId");
 
 
  		Object name = request.getAttribute("productName");
 
  		String productName = (String)name;
 
  		
 
  		double productPrice = (Double)request.getAttribute("productPrice");
 
  		//creates iterater to go through the vectors in print them out.
 
  		//ANY JAVA CODE THAT YOU DO NOT WANT TO PRINT WORDS MUST BE SURROUNDED BY <% (OPEN AND CLOSE)
 
  		
 
  		
 
  
 
  		 %>	
  		 
 
       <table border = "1" color="FF0000">
 
       <tr><td>Product ID</td><td>Product Name</td><td>Product Price</td></tr>
 


 
      
 
       <tr><td> <%out.print(productId);%></td><td><%out.print(productName);%></td><td><%out.print(productPrice);%></td></tr>
 
     
 


 
</table> 

  
 
       </center>
 
       </body>
 
       </html>
 
