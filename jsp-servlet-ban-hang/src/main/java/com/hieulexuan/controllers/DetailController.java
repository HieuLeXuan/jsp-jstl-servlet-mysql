package com.hieulexuan.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hieulexuan.dao.Dao;
import com.hieulexuan.models.Product;

@WebServlet(urlPatterns = { "/detail" })
public class DetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Dao dao = new Dao();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String productId = request.getParameter("prodId");

		Product product = dao.getProductById(productId);
		
		request.setAttribute("product", product);

		request.getRequestDispatcher("/views/detail.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
