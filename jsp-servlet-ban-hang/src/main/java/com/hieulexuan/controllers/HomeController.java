package com.hieulexuan.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hieulexuan.dao.Dao;
import com.hieulexuan.models.Product;

@WebServlet(urlPatterns = { "/home" })
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Dao dao = new Dao();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Product> productLatest = dao.getAllProduct("latest");
		List<Product> productComing = dao.getAllProduct("coming");

		request.setAttribute("productsLatest", productLatest);
		request.setAttribute("productsComing", productComing);
		request.getRequestDispatcher("/views/home.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
