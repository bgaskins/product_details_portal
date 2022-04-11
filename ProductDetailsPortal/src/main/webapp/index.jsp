<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Enter Product Details</title>
</head>
<body>
	<form action="PortalController" method="post">
		
		<h2>Product Portal</h2>
		<h3>Add a product:</h3>
		Product ID: <input style="margin: 2px 22px" type="text" name="prodId" required><br>
		Product Name: <input style="margin: 2px 2px" type="text" name="prodName" required><br>
		Unit Price: <input style="margin: 2px 28px" type="text" name="prodPrice" required><br>
		<input type="submit" value="Add Product">
	</form>
	
</body>
</html>