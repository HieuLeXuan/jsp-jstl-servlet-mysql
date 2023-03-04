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

@WebServlet(urlPatterns = { "/category" })
public class CategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Dao dao = new Dao();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Product> products;
		List<Category> categories = dao.getAllCategory();

		if (request.getParameter("cId") != null) {
			products = dao.getProductByCategoryIdTop3(request.getParameter("cId"));
		} else {
			products = dao.getTop3Product();
		}

		request.setAttribute("productList", products);
		request.setAttribute("categoryList", categories);
		request.setAttribute("categoryId", request.getParameter("cId"));

		request.getRequestDispatcher("/views/category.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
