<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="com.entity.Product"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Portal</title>
</head>
<body>
 
		
	   
<% Product p = (Product) session.getAttribute("product");
		out.print("<html><head>");
		out.print("<h2>Product Details<h2>");
		out.print("<style> table, td, th {border:1px solid black; padding: 15px;}</style>");
		out.print("<table>");
		out.print("<tr>");
		out.print("<style> th {font-size: 80%}</style>");
		out.print("<th> Product ID </th>");
		out.print("<th> Product Name </th>");
		out.print("<th> Product Price </th>");
		out.print("<tr style ='text-alight:center'>");
		out.print("<style> td {font-size: 75%}</style>");
		out.print("<td>" + p.getProductId() + "</td>");
		out.print("<td>" + p.getProductName() + "</td>");
		out.print("<td>" + p.getProductPrice() + "</td>");
		out.print("</tr>");
		out.print("</table>");
		out.print("<h4><a href='index.jsp'>Add Another Product</a><h4>");
		out.print("</body></html>");
%>
</body>
</html>