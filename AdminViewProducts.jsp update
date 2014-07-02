<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ page import="java.util.*" %>
     <%@ page import="java.text.NumberFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Products</title>
</head>

<body bgcolor='black' >
<p align= "left"><a href="HomePgForm.html"><b><img src="BFIT.png"  height=100 width=250></b></a></p>

<basefont color = 'white' >

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
<center><form name="myform" onsubmit="return validate();" action="http://localhost:8082/OSM/AdminSearch" >

		Search: <input type="text" name = "pp"><br><br>
	<input type = "submit" value ="Search"><br><br>
	
</form><br></center>
<center>
<h1><font color="red">Product List</font></h1>
<form action = "http://localhost:8082/OSM/AdminProductDelete" >
Please check the boxes that you want to delete or update.<br>
<font color= red>DO NOT DELETE THE DOLLAR SIGN($)</font><br>
If you delete ($), price will not be updated correctly<br><br>
<table border = "1" color="FF0000" >

<tr><td>Product Id</td><td>Product Name</td><td>Product Price</td></tr>
<%//started the iterator and display information in the vector 
while(itId.hasNext()){%>
<tr><td><input type="text" name="Product ID" value="<%out.print(itId.next());%>"></td>
<td><input type="text" name="Product Name" value="<%out.print(itName.next());%>"></td>
<td><input type="text" name="Product Price" value="<%out.print(fmt.format(itPrice.next()));%>"></td>
<td><input type="checkbox" name = "buyList" value='<%=num %>'></td> </tr>
<%num++; %>
<% }%>

</table><br>
<input type="hidden" name="UpdateList" value="<%= request.getParameter("buyList") %>" />
<input type="submit" name ="choice" value ="Update" style="height:60px; width:140px"><br><br>

<!--<input type="hidden" name="productId" value="<%= request.getParameter("productId") %>" /> -->
<input type="submit" name ="choice"  value ="Delete" style="height:60px; width:140px"><br>
</form>


</center>
<center>



</center>
</body>
</html>
