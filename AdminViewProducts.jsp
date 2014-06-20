<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center><form name="myform" onsubmit="return validate();" action="http://localhost:8082/OSM/pmenuservlet" method = "post">

		Search: <input type="text" name = "pp"><br><br>
	<input type = "submit" value ="Search"><br><br>
	
</form><br></center>
<center>
<h1>Product List</h1>
<table border = "1" color="FF0000" >
<tr><td>Si No</td><td>Product Id</td><td>Product Name</td><td>Product Price</td></tr>
</table>
<form action="">
<input type="submit" value ="Update" style="height:60px; width:140px"><br>
</form>
</center>
<center>
<form action = >
<input type="submit" value ="Delete" style="height:60px; width:140px"><br>
</form>

</center>
</body>
</html>
