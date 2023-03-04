package com.hieulexuan.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hieulexuan.dao.Dao;
import com.hieulexuan.models.Category;
import com.hieulexuan.models.Product;

@WebServlet(urlPatterns = { "/search" })
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Dao dao = new Dao();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String textSearch = request.getParameter("txt");
		
		List<Product> products = dao.getProductByName(textSearch);
		List<Category> categories = dao.getAllCategory();
		
		request.setAttribute("productList", products);
		request.setAttribute("categoryList", categories);
		
		request.getRequestDispatcher("/views/category.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
