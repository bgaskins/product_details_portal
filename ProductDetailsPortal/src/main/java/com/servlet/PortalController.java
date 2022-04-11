package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.Product;



@WebServlet("/PortalController")
public class PortalController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public PortalController() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
		HttpSession session = request.getSession(true);
		RequestDispatcher rd = null;
		
		String productId = request.getParameter("prodId");
		String productName = request.getParameter("prodName");
		String productPrice = request.getParameter("prodPrice");
		
		Product p = new Product(productId, productName, Double.parseDouble(productPrice));
		session.setAttribute("product", p);
		
		rd = request.getRequestDispatcher("display.jsp");
		rd.forward(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}