<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Thank You</title>
</head>

<body bgcolor='black' >


<basefont color = 'white' >




<p align= "right"><a href="http://localhost:8082/OSM/LogoutServlet"><b>Logout</b></a></p>

<p align= "left"><a href="HomePgForm.html"><b><img src="BFIT.png" height=100 width=250></b></a></p>

<center>
<h1>Thanks</h1><br>
<h1> For The</h1><br>
<h1>  Order</h1>
  <table>
 
 <tr>
    <td>
        
    </td>
</tr>
<tr>
    <td>
        &nbsp;
        <!--you just need a space in a row-->
    </td>
</tr>
<tr>
    <td>
        
    </td>
</tr>
 <tr>
    <td>
        
    </td>
</tr>
<tr>
    <td>
        &nbsp;
        <!--you just need a space in a row-->
    </td>
</tr>
<tr>
    <td>
        
    </td>
</tr>
<!-- <form action="http://localhost:8082/OSM/UserFinalOrder.jsp"> -->
<form action="http://localhost:8082/OSM/ViewFinalOrderServlet">
 <tr> <td><input type="submit"  value="View Final Order"  style="height:50px; width:180px" /></td>
 </form>
<td>	<form action="http://localhost:8082/OSM/deleteFinalOrderServlet"><input type= "submit" value = "Cancel Order" style="height:50px; width:180px" /></form><br></td> </tr><br>








</table>




<a style="margin-left:450px" href="HomePgForm.html">Home Page</a>


</body>
</html>
