<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>


<head>


<style>


table, th, td


{


border: 1px solid black;


border-collpse: co


}


</style>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>ADMINISTRATIVE PAGE</title>

</head>

<body bgcolor='black' >


<basefont color = 'white' >

<p align= "right"><a href="http://localhost:8082/OSM/LogoutServlet"><b>Logout</b></a></p>

<p align= "left"><a href="HomePgForm.html"><b><img src="BFIT.png"  height=100 width=250></b></a></p>
<center>
<body bgcolor="gold">
<font color="green" size="10">
<h1> Welcome to the bFIT4java Administrator Page! </h1>
<img src="BFIT.png" height ="150"width = "300"/><br></center>






<h2> <Center> P R O D U C T Modification System- Please complete the fields below:</Center></h2>



<form name="form" action="http:\\localhost:8082\bFIT4java\AdminServlet" method="post">
<font size="7">


<%


//database connection


%>


<h2>
Product ID &nbsp; &nbsp; &nbsp; <INPUT TYPE="TEXT" NAME="name" LENGTH="30"><br>


Product Name <INPUT TYPE="TEXT" NAME="price" LENGTH="30"><br>


Product Price <INPUT TYPE="TEXT" NAME="id" LENGTH="30"><br>


<center><input type="submit" value="ADD" style="height:50px; width: 100px"/></center><br>


</h2>


<TABLE align="center" BORDER="1" CELLPADDING="3" CELLSPACING="1">


<TR>


<TH>Product_ID</TH>


<TH>Product_Name</TH>


<TH>Product_Price</TH>


</TR>


<% //while loop %>


<tr>


<td> <% //rs.getString(1) %> </td>


<td> </td>


<td> </td>


</tr>


<% //} %>


</TABLE>


</body>


<a href="HomePgForm.html"></a><input type="submit" value="Back" />


</font>
</form>


</html>
