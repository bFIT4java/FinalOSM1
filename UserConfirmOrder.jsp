<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import= "java.util.*" %>
     <%@ page import="java.text.NumberFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirm Products</title>
</head>

<body bgcolor='black' >


<basefont color = 'white' >
<center>
<h1>Confirm Products</h1>
<%
//grabs vectors from servlet and sets it to local vector in the jsp page
Object id = request.getAttribute("productId");
Vector productId = (Vector)id;
Object name = request.getAttribute("productName");
Vector productName = (Vector)name;
Object price = request.getAttribute("productPrice");
Vector productPrice = (Vector)price;
//creates iterater to go through the vectors in print them out.
//ANY JAVA CODE THAT YOU DO NOT WANT TO PRINT WORDS MUST BE SURROUNDED BY <% (OPEN AND CLOSE)
Iterator itId = productId.iterator();
Iterator itName = productName.iterator();
Iterator itPrice = productPrice.iterator();
int num=0;

NumberFormat fmt = NumberFormat.getCurrencyInstance();

%>
<p align= "right"><a href="http://localhost:8082/OSM/LogoutServlet"><b>Logout</b></a></p>

<p align= "left"><a href="HomePgForm.html"><b><img src="BFIT.png"  height=100 width=250></b></a></p>
<table border = "1" color="FF0000" >
<tr><td>Product Id</td><td>Product Name</td><td>Product Price</td></tr>
<%//started the iterator and display information in the vector 
while(itId.hasNext()){%>
<tr><td><%out.print(itId.next());%></td><td><%out.print(itName.next());%></td><td><%out.print(fmt.format(itPrice.next()));%></td> </tr>
<%num++; %>
<% }%>
</table><br><br><br>

</center>
<br>
<center>
<!--  <form action="ThankYou.jsp" >-->
 <form action="http://localhost:8082/OSM/ConfirmedServlet" >
<input type="submit"  value="Confirm Product"  style="height:60px; width:140px" />
</form>
</center>
</body>
</html>
